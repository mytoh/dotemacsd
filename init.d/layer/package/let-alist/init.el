;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package let-alist
  :init
  (font-lock-add-keywords
   'emacs-lisp-mode
   '(("\\_<\\.\\(?:\\sw\\|\\s_\\)+\\_>" 0 
      font-lock-builtin-face))))

;;; init.el ends here
