
(eval-when-compile
  (require 'cl-lib))

;;; internal functions

(cl-defun vendle:source-git-p (url)
  (cond ((or (string-match (rx "git://") url)
             (string-match (rx ".git" (zero-or-one "/") line-end) url))
         t)
        (t nil)))

(cl-defun vendle:source-github-p (url)
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

;;;; initialize
(unless (boundp '*user-emacs-vendle-directory)
  (defvar *user-emacs-vendle-directory* (expand-file-name (concat-path user-emacs-directory (file-name-as-directory "vendle")))))

(cl-defun vendle:initialize ()
  (unless (file-exists-p *user-emacs-vendle-directory*)
    (make-directory *user-emacs-vendle-directory*)))

;;;; update

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


;;;; install

(cl-defun vendle:install-packages (packages path)
  (cl-mapc
   (lambda (package)
     (vendle:install-package package path))
   packages))

(cl-defun vendle:install-package (package path)
  (if (not (file-exists-p path))
      (make-directory path))
  (unless (file-exists-p (concat-path path (car package)))
    (cond ((vendle:source-git-p (cadr package))
           (vendle:install-package-git package path))
          ((vendle:source-github-p (cadr package))
           (vendle:install-package-github package path)))))

(cl-defun vendle:install-package-git (package path)
  (cd-absolute path)
  (message "installing plugin " (car package))
  (shell-command (concat  "git clone " (cadr package) " " (car package))
                 path)
  (byte-recompile-directory (concat-path path (car package)) 0))

(cl-defun vendle:install-package-github (package path)
  (cd-absolute path)
  (message "installing %s from github " (car package))
  (shell-command (concat "git clone git://github.com/" (cadr package) " " (car package)))
  (byte-recompile-directory (concat-path path (car package)) 0))


(defvar *vendle-package-list* '())

;;;; register
(cl-defun vendle:register (source)
  (cond ((vendle:source-git-p (cadr source))
         (vendle:register-git source))
        ((vendle:source-github-p (cadr source))
         (vendle:register-github source))))

(cl-defun vendle:register-git (source)
  (add-to-list 'load-path
               (expand-file-name (car source) *user-emacs-vendle-directory*))
  (add-to-list '*vendle-package-list* source))

(cl-defun vendle:register-github (source)
  (add-to-list 'load-path
               (expand-file-name (car source) *user-emacs-vendle-directory*))

  (add-to-list '*vendle-package-list* source))

;;; provide
(provide 'vendle)
