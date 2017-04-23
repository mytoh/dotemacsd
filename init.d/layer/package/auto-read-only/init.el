;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(use-package auto-read-only
 :defer t 
:config 
(progn
  (auto-read-only-mode 1)

  ;; Customize

  ;; Third party codes are installed in vendor/ directory.
  (add-to-list 'auto-read-only-file-regexps "/vendor/")))



;;; init.el ends here
