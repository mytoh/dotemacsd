
(eval-when-compile
  (require 'cl-lib))

;;; internal functions

(cl-defun vendle:source-git-p (source)
  (cond ((or (string-match (rx "git://") source)
             (string-match (rx ".git" (zero-or-one "/") line-end) source))
         t)
        (t nil)))

(cl-defun vendle:source-github-p (source)
  (cond ((string-match
          (rx   line-start
                (one-or-more (or (syntax symbol) (syntax word)))
                "/"
                (one-or-more (or (syntax symbol)
                                 (syntax word)))
                line-end)
          source)
         t)
        (t nil)))


(cl-defun vendle:directory-git-p (p)
  (if (file-directory-p (expand-file-name ".git" p))
      t nil))

;;; utilily functions

(cl-defun vendle:concat-path (&rest parts)
  (cl-reduce #'(lambda (a b) (expand-file-name b a)) parts))

;;;; initialize

(unless (boundp '*user-emacs-vendle-directory)
  (defvar *user-emacs-vendle-directory* (expand-file-name (vendle:concat-path user-emacs-directory (file-name-as-directory "vendle")))))

(defvar *vendle-package-list* '())

(cl-defun vendle:initialize ()
  (setq *vendle-package-list* nil)
  (unless (file-exists-p *user-emacs-vendle-directory*)
    (make-directory *user-emacs-vendle-directory*)))


;;;; update

(cl-defun vendle:update-packages (path)
  (when (file-exists-p path)
    (cl-letf ((paths (cl-mapcar
                      #'(lambda (p) (vendle:concat-path path (vendle:package-name p)))
                      *vendle-package-list*)))
      (cl-mapc
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

(cl-defun vendle:install-packages (path)
  (cl-mapc
   (lambda (package)
     (vendle:install-package package path))
   *vendle-package-list*))

(cl-defun vendle:install-package (package path)
  (if (not (file-exists-p path))
      (make-directory path))
  (unless (file-exists-p (vendle:concat-path path (vendle:package-path package)))
    (cond ((cl-equalp 'git (vendle:package-type package))
           (vendle:install-package-git package path)))))

(cl-defun vendle:install-package-git (package path)
  (cd-absolute path)
  (message "installing plugin %s" (vendle:package-name package))
  (shell-command (concat  "git clone " (vendle:package-url package) " "
                          (vendle:package-name package))
                 path)
  (byte-recompile-directory (vendle:concat-path path (vendle:package-path package)) 0))


;;;; register
(cl-defun vendle:register (source &optional info)
  (cl-letf* ((package (vendle:make-package source info)))
    (add-to-list 'load-path
                 (expand-file-name (vendle:package-path package) *user-emacs-vendle-directory*))
    (add-to-list '*vendle-package-list* package)))

;;;; package

(cl-defstruct vendle:package
  type name url path)

(cl-defun vendle:make-package (source info)
  (cond ((vendle:source-github-p source)
         (vendle:make-package-github source info))))

(cl-defun vendle:make-package-github (source info)
  (make-vendle:package :type 'git
                       :name (vendle:make-package-name source info)
                       :path (vendle:make-package-path source info)
                       :url (cl-concatenate 'string "git://github.com/" source)))

(cl-defun vendle:make-package-name (source info)
  (cond ((vendle:source-github-p source)
         (vendle:make-package-name-github source info))))

(cl-defun vendle:make-package-name-github (source info)
  (if info
      (let ((name (cl-getf info :name)))
        (if name
            name
          (cadr (split-string source "/"))))
    (cadr (split-string source "/"))))

(cl-defun vendle:make-package-path (source info)
  (cond ((vendle:source-github-p source)
         (vendle:make-package-path-github source info))))

(cl-defun vendle:make-package-path-github (source info)
  (if info
      (let ((path (cl-getf info :path))
            (name (vendle:make-package-name source info)))
        (if path
            (cl-concatenate 'string
                            name  "/"  path)
          name))
    (vendle:make-package-name source info)))

;;; provide
(provide 'vendle)
