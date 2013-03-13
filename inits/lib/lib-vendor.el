


;;; internal functions

(cl-defmacro %url-is-git-p (url)
  `(cond ((or (string-match (rx "git://") ,url)
              (string-match (rx ".git" (zero-or-one "/") line-end) ,url))
          t)
         (t nil)))

(cl-defmacro %url-is-github-p (url)
  `(cond ((string-match
           (rx   line-start
                 (one-or-more (or (syntax symbol) (syntax word)))
                 "/"
                 (one-or-more (or (syntax symbol)
                                  (syntax word)))
                 line-end)
           ,url)
          t)
         (t nil)))


;;; utilily functions

(cl-defmacro my-vendor-update-packages (path)
  `(when (file-exists-p ,path)
     (let ((paths (directory-files ,path t "[^\.]")))
       (cl-labels ((directory-is-git-p (p)
                                       (if (directory-files p nil "\.git$") t nil)))
         (cl-mapcar* #'(lambda (d)
                         (when (directory-is-git-p d)
                           (progn
                             (cd-absolute d)
                             (message "updating vendor plugin %s" d)
                             (shell-command "git pull")
                             (cd user-emacs-directory)
                             (byte-recompile-directory (concat *user-emacs-vendor-directory* d)))))
                     paths)))))


(cl-defmacro my-vendor-install-packages (packages)
  `(dolist (p ,packages)
     (if (not (file-exists-p *user-emacs-vendor-directory*))
         (make-directory *user-emacs-vendor-directory*))
     (unless (file-exists-p (concat *user-emacs-vendor-directory* (car p)))
       (cond ((%url-is-git-p (cadr p))
              (cd-absolute *user-emacs-vendor-directory* )
              (message "installing plugin " (car p))
              (shell-command (concat  "git clone " (cadr p) " " (car p))
                             *user-emacs-vendor-directory*)
              (byte-recompile-directory (concat *user-emacs-vendor-directory* (car p))))
             ((%url-is-github-p (cadr p))
              (cd-absolute *user-emacs-vendor-directory*)
              (message "installing %s from github " (car p))
              (shell-command (concat "git clone git://github.com/" (cadr p) " " (car p)))
              (byte-recompile-directory (concat *user-emacs-vendor-directory* (car p))))
             (cd user-emacs-directory)))))


(provide 'lib-vendor)
