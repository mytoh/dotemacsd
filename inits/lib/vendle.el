
(eval-when-compile
  (require 'cl-lib))

;;; internal functions

(cl-defun vendle:url-git-p (url)
  (cond ((or (string-match (rx "git://") url)
             (string-match (rx ".git" (zero-or-one "/") line-end) url))
         t)
        (t nil)))

(cl-defun vendle:url-github-p (url)
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


(cl-defun vendle:directory-git-p (p)
  (if (file-directory-p (expand-file-name ".git" p))
      t nil))


;;; utilily functions

(unless (boundp '*user-emacs-vendle-directory)
  (setq *user-emacs-vendle-directory* (expand-file-name (concat-path user-emacs-directory (file-name-as-directory "vendle")))))

(cl-defun vendle:initialize ()
  (unless (file-exists-p *user-emacs-vendle-directory*)
    (make-directory *user-emacs-vendle-directory*)))

(cl-defun vendle:update-packages (path)
  (when (file-exists-p path)
    (cl-letf ((paths (directory-files path t "[^\.]")))
      (cl-mapcar
       #'vendle:update-package
       paths))))

(cl-defun vendle:update-package (path)
  (when (and (vendle:directory-git-p path)
             (not (file-symlink-p path)))
    (progn
      (cd-absolute path)
      (message "updating vendle package %s.." path)
      (shell-command "git pull")
      (cd-absolute user-emacs-directory)
      (byte-recompile-directory path 0)
      (message "updating vendle package %s..done" path))))


(cl-defun vendle:install-packages (packages path)
  (cl-mapc
   (lambda (package)
     (vendle:install-package package path))
   packages))

(cl-defun vendle:install-package (package path)
  (if (not (file-exists-p path))
      (make-directory path))
  (unless (file-exists-p (concat-path path (car package)))
    (cond ((vendle:url-git-p (cadr package))
           (cd-absolute path)
           (message "installing plugin " (car package))
           (shell-command (concat  "git clone " (cadr package) " " (car package))
                          path)
           (byte-recompile-directory (concat-path path (car package)) 0))
          ((vendle:url-github-p (cadr package))
           (cd-absolute path)
           (message "installing %s from github " (car package))
           (shell-command (concat "git clone git://github.com/" (cadr package) " " (car package)))
           (byte-recompile-directory (concat-path path (car package)) 0)))))


(provide 'vendle)
