;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'org-breadcrumbs
  (command (org-breadcrumbs-mode) "org-breadcrumbs")
  (add-hook 'org-mode-hook #'org-breadcrumbs-mode))

;;; init.el ends here
