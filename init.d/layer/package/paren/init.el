;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(add-hook 'prog-mode-hook #'show-paren-mode)
;; (after 'paren
;;   (validate-setq show-paren-delay 1
;;                  show-paren-style 'parenthesis
;;                  show-paren-when-point-inside-paren t
;;                  show-paren-when-point-in-periphery t)
;;   (set-face-attribute 'show-paren-match nil
;;                       :foreground nil
;;                       :background (color-saturate-name
;;                                    (face-background 'default :background)
;;                                    20)
;;                       :underline nil))

;;; init.el ends here
