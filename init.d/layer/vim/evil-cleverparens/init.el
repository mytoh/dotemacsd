;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-cleverparens
  (command (evil-cleverparens-mode) "evil-cleverparens")
  (add-hook 'emacs-lisp-mode-hook #'evil-cleverparens-mode))

;;; init.el ends here
