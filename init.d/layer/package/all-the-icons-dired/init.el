;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package all-the-icons-dired
  :commands (all-the-icons-dired-mode)
  :init
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;;; init.el ends here
