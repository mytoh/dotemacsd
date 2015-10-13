;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'nameless
  (command (nameless-mode nameless-mode-from-hook) "nameless")
  ;; (add-hook 'emacs-lisp-mode-hook #'nameless-mode-from-hook)
  (after 'nameless
      (set-option nameless-prefix "^:")))

;;; init.el ends here
