;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-function-calls
  :config
  (add-hook 'emacs-lisp-mode-hook 'highlight-function-calls-mode)
  (setq highlight-function-calls-macro-calls t)
  (setq highlight-function-calls-special-forms t))

;;; init.el ends here
