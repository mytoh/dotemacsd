;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package mini-header-line
  :commands (mini-header-line-mode)
  :init
  (add-hook 'emacs-lisp-mode-hook
            #'mini-header-line-mode))

;;; init.el ends here
