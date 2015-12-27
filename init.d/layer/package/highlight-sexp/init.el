;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; highlight-sexp
(req 'highlight-sexp
  (add-hook 'lisp-mode-hook #'highlight-sexp-mode)
  (add-hook 'emacs-lisp-mode-hook #'highlight-sexp-mode)
  (add-hook 'scheme-mode-hook #'highlight-sexp-mode)
  (set-option hl-sexp-foreground-color nil)
  (set-option hl-sexp-background-color
              (color-darken-name (face-background 'default)
                                 40)))

;;; init.el ends here
