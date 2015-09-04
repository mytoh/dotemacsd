;;; snipe -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-snipe ()
  (require 'evil-snipe)
  (add-hook 'prog-mode-hook #'evil-snipe-mode)
  (add-hook 'prog-mode-hook
            (lambda () (enable-mode evil-snipe-override-mode))))

(muki:init-evil-snipe)

;;; snipe.el ends here
