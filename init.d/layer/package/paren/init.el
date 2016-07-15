;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(add-hook 'prog-mode-hook #'show-paren-mode)
(set-option show-paren-delay 1
            show-paren-style 'parenthesis
            show-paren-when-point-inside-paren t
            show-paren-when-point-in-periphery t)
(after 'paren
    (set-face-attribute 'show-paren-match nil
     :foreground nil
     :background (color-saturate-name
                  (face-background 'default)
                  30)
     :underline nil))

;;; init.el ends here
