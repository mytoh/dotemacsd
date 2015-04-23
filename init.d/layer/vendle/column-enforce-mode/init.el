;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'column-enforce-mode
  (command (column-enforce-mode) "column-enforce-mode")
  (hook 'emacs-lisp-mode-hook #'column-enforce-mode))

;;; init.el ends here
