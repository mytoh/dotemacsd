;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package doom-modeline
  :commands (+doom-modeline|init)
  :init (add-hook 'after-init-hook #'+doom-modeline|init))

;;; init.el ends here
