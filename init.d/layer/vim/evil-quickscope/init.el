;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-quickscope
  (command (evil-quickscope-mode) "evil-quickscope")
  (add-hook 'emacs-lisp-mode-hook #'evil-quickscope-mode))

;;; init.el ends here
