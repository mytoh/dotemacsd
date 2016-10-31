;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-escape-sequences
  :commands (hes-mode)
  :init
  (add-hook 'prog-mode-hook #'hes-mode))

;;; init.el ends here
