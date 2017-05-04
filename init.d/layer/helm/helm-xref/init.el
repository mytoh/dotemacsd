;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-xref
  :commands (helm-xref-show-xrefs)
  :init
  (setq xref-show-xrefs-function #'helm-xref-show-xrefs))

;;; init.el ends here
