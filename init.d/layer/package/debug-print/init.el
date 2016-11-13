;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; debug-print
(use-package debug-print
  :config
  (debug-print-init)
  (add-global-key "C-x C-e" #'debug-print-eval-last-sexp))

;;; init.el ends here
