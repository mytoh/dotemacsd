;;; smartparens -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'smartparens
  (liby 'evil-smartparens
    (command (evil-smartparens-mode) "evil-smartparens")
    (add-hook 'emacs-lisp-mode-hook #'evil-smartparens-mode)))

;;; smartparens.el ends here
