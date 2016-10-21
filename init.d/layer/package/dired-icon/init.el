;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package dired-icon
  :commands (dired-icon-mode)
  :after dired
  :init
  (add-hook 'dired-mode-hook 'dired-icon-mode))

;;; init.el ends here
