;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package eros
  :commands (eros-mode)
  :init
  (add-hook 'emacs-lisp-mode-hook #'eros-mode))

;;; init.el ends here
