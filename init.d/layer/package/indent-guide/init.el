;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package indent-guide
  :commands (indent-guide-mode)
  :init
  (set-option indent-guide-char "|")
  ;; (add-hook 'emacs-lisp-mode-hook #'indent-guide-mode)
  ;; (add-hook 'scheme-mode-hook #'indent-guide-mode)
  )

;;; init.el ends here
