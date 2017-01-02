;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'column-enforce-mode
  (command (column-enforce-mode) "column-enforce-mode")
  (hook 'emacs-lisp-mode-hook #'column-enforce-mode)
  (after 'column-enforce-mode
    (set-face-attribute 'column-enforce-face nil
                        :inherit 'default
                        :foreground (face-attribute 'default :foreground)
                        :background (color-saturate-name
                                     (face-attribute 'default :background)
                                     20))))

;;; init.el ends here
