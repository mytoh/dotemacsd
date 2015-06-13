;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'form-feed
  (command (form-feed-mode) "form-feed")
  (add-hook 'emacs-lisp-mode-hook #'form-feed-mode)
  (add-hook 'outline-mode-hook #'form-feed-mode)
  (add-hook 'compilation-mode-hook #'form-feed-mode))

;;; init.el ends here
