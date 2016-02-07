;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


  ;;;; yasnippet
(req 'yasnippet
  (set-option yas-snippet-dirs
              (list (expand-file-name
                     "init.d/snippets"
                     user-emacs-directory)))
  (yas-global-mode 1))

;;; init.el ends here
