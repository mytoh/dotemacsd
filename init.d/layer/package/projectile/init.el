;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package projectile
  :config
  (progn
    (add-hook 'emacs-lisp-mode-hook #'projectile-mode)
    (add-hook 'org-mode-hook #'projectile-mode)))

;;; init.el ends here
