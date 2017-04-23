;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package uimage
  :commands (uimage-mode)
  :init
  (progn
    (add-hook 'info-mode-hook #'uimage-mode)))

;;; init.el ends here
