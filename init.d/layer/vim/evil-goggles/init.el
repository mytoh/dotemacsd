;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package evil-goggles
  :after evil
  :config
  (evil-goggles-mode)
  (setq evil-goggles-duration 0.7)
  (setq evil-goggles-pulse nil)
  (evil-goggles-use-diff-faces))

;;; init.el ends here
