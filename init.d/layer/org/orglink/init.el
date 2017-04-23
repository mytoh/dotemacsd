;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package orglink
  :commands (orglink-mode)
  :init
  (hook 'emacs-lisp-mode-hook #'orglink-mode)
  :config
  (validate-setq  orglink-activate-links '(bracket angle plain)))

;;; init.el ends here
