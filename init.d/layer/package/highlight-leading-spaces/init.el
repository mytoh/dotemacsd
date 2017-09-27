;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-leading-spaces 
    :commands (highlight-leading-spaces-mode) 
    :init
    (add-hook 'emacs-lisp-mode-hook #'highlight-leading-spaces-mode)
    :config
    ;; (set-face-foreground 'highlight-leading-spaces
    ;;                      (color-lighten-name (face-background 'default) 12))
)

;;; init.el ends here
