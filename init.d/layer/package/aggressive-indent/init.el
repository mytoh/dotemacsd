;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'aggressive-indent
  (command (aggressive-indent-mode) "aggressive-indent")
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode))

;;; init.el ends here
