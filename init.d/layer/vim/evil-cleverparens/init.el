;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-cleverparens
  (command (evil-cleverparens-mode) "evil-cleverparens")
  (enable-option evil-cleverparens-use-regular-insert)
  (add-hook 'emacs-lisp-mode-hook #'evil-cleverparens-mode))

;;; init.el ends here
