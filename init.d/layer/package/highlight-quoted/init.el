;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-quoted
  :commands (highlight-quoted-mode)
  :init
  (add-hook 'emacs-lisp-mode-hook #'highlight-quoted-mode))

;;; init.el ends here
