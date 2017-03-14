;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package volatile-highlights
  :commands (volatile-highlights-mode)
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook
              #'volatile-highlights-mode)))

;;; init.el ends here
