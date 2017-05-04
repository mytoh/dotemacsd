;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package org-sticky-header
  :commands (org-sticky-header-mode)
  :init
  (add-hook 'org-mode-hook #'org-sticky-header-mode))

;;; init.el ends here
