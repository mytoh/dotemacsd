;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'ws-butler
  (command (ws-butler-mode) "ws-butler")
  (hook 'emacs-lisp-hook #'ws-butler-mode)
  (hook 'org-mode-hook #'ws-butler-mode))

;;; init.el ends here
