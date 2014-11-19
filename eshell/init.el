;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(defvar eshell-init-directory (expand-file-name "eshell/inits" user-emacs-directory))

(cl-letf ((eshell-inits-directory eshell-init-directory))
  (message eshell-inits-directory)
  (if (file-exists-p eshell-inits-directory)
      (cl-mapc
       (lambda (file) (load file))
       (directory-files eshell-inits-directory 'full ".el\\'"))))

;;; init.el ends here
