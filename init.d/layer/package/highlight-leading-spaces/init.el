;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(command (highlight-leading-spaces-mode) "highlight-leading-spaces")
(add-hook 'emacs-lisp-mode-hook #'highlight-leading-spaces-mode)
(after 'highlight-leading-spaces
    (set-face-foreground 'highlight-leading-spaces
     (color-lighten-name (face-background 'default) 12)))

;;; init.el ends here
