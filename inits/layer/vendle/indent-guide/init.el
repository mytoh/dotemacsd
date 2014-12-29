;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'indent-guide
  (add-hook 'emacs-lisp-mode-hook 'indent-guide-mode)
  (add-hook 'scheme-mode-hook 'indent-guide-mode)
  (set-option indent-guide-char "|"))

;;; init.el ends here
