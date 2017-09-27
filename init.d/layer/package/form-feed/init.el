;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package form-feed
  :commands (form-feed-mode)
  :init
  (add-hook 'emacs-lisp-mode-hook #'form-feed-mode)
  (add-hook 'outline-mode-hook #'form-feed-mode)
  (add-hook 'compilation-mode-hook #'form-feed-mode))

;;; init.el ends here
