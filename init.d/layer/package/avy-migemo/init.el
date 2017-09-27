;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package avy-migemo
  :config
  ;; `avy-migemo-mode' overrides avy's predefined functions using `advice-add'.
  (avy-migemo-mode 1)
  (global-set-key (kbd "M-g m m") 'avy-migemo-mode))


;;; init.el ends here
