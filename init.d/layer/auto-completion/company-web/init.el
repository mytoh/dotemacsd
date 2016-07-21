;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(after 'company                                   ; load company mode
    (require 'company-web-html)                          ; load company mode html backend
  ;; and/or
  (require 'company-web-jade)                          ; load company mode jade backend
  (require 'company-web-slim)                          ; load company mode slim backend

  ;; you may key bind, for example for web-mode:
  ;; (define-key web-mode-map (kbd "C-'") 'company-web-html)
  )

;;; init.el ends here
