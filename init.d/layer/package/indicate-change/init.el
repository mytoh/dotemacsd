;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package indicate-changes
  :commands (indicate-change-mode)
  :init
  (require 'indicators)
  (add-hook 'prog-mode-hook #'indicate-change-mode))

;;; init.el ends here
