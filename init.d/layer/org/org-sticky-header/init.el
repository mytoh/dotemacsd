;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package org-sticky-header
  :commands (org-table-sticky-header-mode)
  :init
  (add-hook 'org-mode-hook #'org-table-sticky-header-mode))

;;; init.el ends here
