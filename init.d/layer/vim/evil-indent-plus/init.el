;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package evil-indent-plus
  :commands (evil-indent-plus-default-bindings)
  :after evil
  :init
  (evil-indent-plus-default-bindings))

;;; init.el ends here
