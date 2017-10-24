;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'column-enforce-mode
  (command (column-enforce-mode) "column-enforce-mode")
  (hook 'emacs-lisp-mode-hook #'column-enforce-mode)
  (after 'column-enforce-mode
    (set-face-attribute 'column-enforce-face nil
                        :inherit 'default
                        :foreground (face-attribute 'default :foreground)
                        :background
                        (if (display-graphic-p)
                            (color-saturate-name
                             (face-attribute 'default :background)
                             20)
                          (face-attribute 'default :background)))))

;;; init.el ends here
