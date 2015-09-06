;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'nameless
  (command (nameless-mode) "nameless")
  ;; (hook 'emacs-lisp-mode-hook #'nameless-mode)
  (after 'nameless
      (set-option nameless-prefix "^:")))

;;; init.el ends here
