;;; snipe -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-snipe ()
  (require 'evil-snipe)
  (add-hook 'emacs-lisp-mode-hook #'evil-snipe-local-mode)
  (add-hook 'emacs-lisp-mode-hook
            #'evil-snipe-override-local-mode))

(muki:init-evil-snipe)

;;; snipe.el ends here
