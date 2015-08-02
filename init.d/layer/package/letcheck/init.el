;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'letcheck
  (command (letcheck-mode) "letcheck")
  (hook 'emacs-lisp-mode-hook #'letcheck-mode))

;;; init.el ends here
