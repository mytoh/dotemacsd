;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package evil-collection
  :after evil
  :init
  (setq evil-want-integration nil)
  (setq evil-collection-setup-minibuffer t)
  (setq evil-collection-mode-list
        '(eshell help helm))
  :config
  (evil-collection-init)
  )

;;; init.el ends here
