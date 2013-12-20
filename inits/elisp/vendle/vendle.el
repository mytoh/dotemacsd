;;; vendle.el -*- lexical-binding: t -*-

;;; requirements
(eval-when-compile
  (require 'cl-lib))

;;; internal functions

(cl-defun vendle:source-git-p (source)
  (cond ((or (string-match (rx "git://") source)
             (string-match (rx ".git" (zero-or-one "/") line-end) source))
         t)
        (t nil)))

(cl-defun vendle:source-github-p (source)
  (cond ((string-match (rx "github:" (submatch (+ (or (syntax word) (syntax symbol)))
                                               "/"
                                               (+ (or (syntax word) (syntax symbol)))))
                       source)
         t)
        ((string-match (rx   line-start
                             (one-or-more (or (syntax symbol) (syntax word)))
                             "/"
                             (one-or-more (or (syntax symbol)
                                              (syntax word)))
                             line-end)
                       source)
         t)
        (t nil)))

(cl-defun vendle:source-format-github (source)
  (cond
   ((string-match (rx "github:" (submatch (+ (or (syntax word) (syntax symbol)))
                                          "/"
                                          (+ (or (syntax word) (syntax symbol)))))
                  source)
    (match-string-no-properties 1 source))
   ((string-match (rx   line-start
                        (one-or-more (or (syntax symbol) (syntax word)))
                        "/"
                        (one-or-more (or (syntax symbol)
                                         (syntax word)))
                        line-end)
                  source)
    (match-string-no-properties 0 source))))


(cl-defun vendle:directory-git-p (p)
  (if (file-directory-p (expand-file-name ".git" p))
      t nil))

;;; utilily functions

(cl-defun vendle:concat-path (&rest parts)
  (cl-reduce #'(lambda (a b) (expand-file-name b a)) parts))

;;;; initialize

(defvar *user-emacs-vendle-directory* "")
(defvar *vendle-package-list* '())

(cl-defun vendle:initialize (&optional path)
  (setq *vendle-package-list* nil)
  (if path
      (setq *user-emacs-vendle-directory* path)
    (setq *user-emacs-vendle-directory*
          (expand-file-name (file-name-as-directory "vendle") user-emacs-directory)))
  (unless (file-exists-p *user-emacs-vendle-directory*)
    (make-directory *user-emacs-vendle-directory*))
  *user-emacs-vendle-directory*)


;;;; update

(cl-defun vendle:update-packages ()
  (when (file-exists-p *user-emacs-vendle-directory*)
    (cl-mapc
     #'vendle:update-package
     *vendle-package-list*)))

(cl-defun vendle:update-package (package)
  (cl-letf ((path (vendle:concat-path *user-emacs-vendle-directory* (vendle:package-name package))))
    (when (and (cl-equalp 'git (vendle:package-type package))
               (not (file-symlink-p path)))
      (progn
        (cd-absolute path)
        (message "updating vendle package %s.." path)
        (shell-command "git pull")
        (cd-absolute user-emacs-directory)
        (byte-recompile-directory path 0)
        (message "updating vendle package %s.. done" path)))))

;;;; install

(cl-defun vendle:install-packages ()
  (cl-mapc
   (lambda (package)
     (vendle:install-package package))
   *vendle-package-list*))

(cl-defun vendle:install-package (package)
  (unless (or (cl-equalp 'local (vendle:package-type package))
              (file-exists-p (vendle:package-path package)))
    (cond ((cl-equalp 'git (vendle:package-type package))
           (vendle:install-package-git package)))))

(cl-defun vendle:install-package-git (package)
  (message "installing plugin %s" (vendle:package-name package))
  (shell-command (concat  "git clone " (vendle:package-url package) " "
                          (vendle:concat-path *user-emacs-vendle-directory* (vendle:package-name package)))
                 *user-emacs-vendle-directory*)
  (byte-recompile-directory (vendle:package-path package)  0))


;;;; register
(cl-defun vendle:register (source &optional info)
  (cl-letf* ((package (vendle:make-package source info)))
    (add-to-list 'load-path
                 (vendle:package-path package))
    (add-to-list '*vendle-package-list* package)))

(cl-defun vendle:register-local (source &optional info)
  (cl-letf* ((path (expand-file-name source))
             (package (vendle:make-package-local path info)))
    (add-to-list 'load-path
                 (vendle:package-path package))
    (add-to-list '*vendle-package-list* package)))

;;;; clean
(cl-defun vendle:clean-packages ()
  (cl-letf ((paths (cl-remove-if
                    #'(lambda (d)
                        (if (cl-member-if
                             #'(lambda (p)
                                 (and (not (cl-equalp 'local (vendle:package-type p)))
                                      (cl-equalp d (expand-file-name (vendle:package-name p)
                                                                     *user-emacs-vendle-directory*))))
                             *vendle-package-list*)
                            t nil))
                    (directory-files *user-emacs-vendle-directory*  'absolute (rx (not (any ".")))))))
    (cl-mapc #'(lambda (p) (delete-directory p t))
             paths)))

;;;; package

(cl-defstruct vendle:package
  type name url path)

(cl-defun vendle:make-package (source info)
  (cond ((vendle:source-github-p source)
         (vendle:make-package-github (vendle:source-format-github source) info))))

(cl-defun vendle:make-package-github (source info)
  (make-vendle:package :type 'git
                       :name (vendle:make-package-name source info)
                       :path (vendle:make-package-path source info)
                       :url (cl-concatenate 'string "git://github.com/" source)))

(cl-defun vendle:make-package-local (source info)
  (make-vendle:package :type 'local
                       :name (vendle:make-package-name-local source info)
                       :path source
                       :url (vendle:make-package-url-local source info)))

(cl-defun vendle:make-package-name (source info)
  (cond ((vendle:source-github-p source)
         (vendle:make-package-name-github (vendle:source-format-github source) info))))

(cl-defun vendle:make-package-name-github (source info)
  (if info
      (let ((name (cl-getf info :name)))
        (if name
            name
          (cadr (split-string source "/"))))
    (cadr (split-string source "/"))))

(cl-defun vendle:make-package-name-local (source info)
  (if info
      (let ((name (cl-getf info :name)))
        (if name
            name
          (file-name-nondirectory source)))
    (file-name-nondirectory source)))

(cl-defun vendle:make-package-path (source info)
  (cond ((vendle:source-github-p source)
         (vendle:make-package-path-github (vendle:source-format-github source) info))))

(cl-defun vendle:make-package-path-github (source info)
  (let ((path (if info
                  (let ((path (cl-getf info :path))
                        (name (vendle:make-package-name source info)))
                    (if path
                        (cl-concatenate 'string
                                        name  "/"  path)
                      name))
                (vendle:make-package-name source info))))
    (expand-file-name path *user-emacs-vendle-directory*)))

(cl-defun vendle:make-package-url-local (source info)
  (if info
      (let ((url (cl-getf info :url)))
        (if url
            url
          nil))
    nil))

;; commands
(cl-defun vendle-install ()
  "Install packages using `vendle:install-packages'"
  (interactive)
  (vendle:install-packages))

(cl-defun vendle-update ()
  (interactive)
  (vendle:update-packages))

(cl-defun vendle-clean ()
  (interactive)
  (vendle:clean-packages))

;;; provide
(provide 'vendle)
