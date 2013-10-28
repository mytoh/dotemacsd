
(eval-when-compile
  (require 'cl-lib))

;;; internal functions

(cl-defun %url-is-git-p (url)
  (cond ((or (string-match (rx "git://") url)
             (string-match (rx ".git" (zero-or-one "/") line-end) url))
         t)
        (t nil)))

(cl-defun %url-is-github-p (url)
  (cond ((string-match
          (rx   line-start
                (one-or-more (or (syntax symbol) (syntax word)))
                "/"
                (one-or-more (or (syntax symbol)
                                 (syntax word)))
                line-end)
          url)
         t)
        (t nil)))


;;; utilily functions

(unless (boundp '*user-emacs-vendle-directory)
  (setq *user-emacs-vendle-directory* (expand-file-name (concat-path user-emacs-directory (file-name-as-directory "vendle")))))

(cl-defun vendle:initialize ()
  (unless (file-exists-p *user-emacs-vendle-directory*)
    (make-directory *user-emacs-vendle-directory*)))

(cl-defmacro vendle:update-packages (path)
  `(when (file-exists-p ,path)
     (cl-letf ((paths (directory-files ,path t "[^\.]")))
       (cl-labels ((directory-is-git-p (p)
                                       (if (directory-files p nil "\.git$") t nil)))
         (cl-mapcar #'(lambda (d)
                        (when (and (directory-is-git-p d)
                                   (not (file-symlink-p d)))
                          (progn
                            (cd-absolute d)
                            (message "updating vendle package %s.." d)
                            (shell-command "git pull")
                            (cd-absolute user-emacs-directory)
                            (byte-recompile-directory d 0)
                            (message "updating vendle package %s..done" d))))
                    paths)))))


(cl-defun vendle:install-packages (packages path)
  (cl-mapc #'(lambda (p)
               (if (not (file-exists-p path))
                   (make-directory path))
               (unless (file-exists-p (concat-path path (car p)))
                 (cond ((%url-is-git-p (cadr p))
                        (cd-absolute path)
                        (message "installing plugin " (car p))
                        (shell-command (concat  "git clone " (cadr p) " " (car p))
                                       path)
                        (byte-recompile-directory (concat-path path (car p)) 0))
                       ((%url-is-github-p (cadr p))
                        (cd-absolute path)
                        (message "installing %s from github " (car p))
                        (shell-command (concat "git clone git://github.com/" (cadr p) " " (car p)))
                        (byte-recompile-directory (concat-path path (car p)) 0)))))
           packages))


(provide 'vendle)
