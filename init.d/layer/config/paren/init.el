;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(add-hook 'prog-mode-hook #'show-paren-mode)
(set-option show-paren-delay 0
            show-paren-style 'parenthesis)
(after 'paren
    (set-face-attribute 'show-paren-match-face nil
     :foreground nil
     :background (color-saturate-name
                  (face-background 'default)
                  30)
     :underline nil))

;;; init.el ends here
