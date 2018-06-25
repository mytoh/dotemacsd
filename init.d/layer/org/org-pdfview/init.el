;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package org-pdfview
  :after org
  :init
  (add-to-list 'org-file-apps '("\\.pdf\\'" . org-pdfview-open))
  (add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" . org-pdfview-open)))


;;; init.el ends here
