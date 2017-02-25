;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package eldoc-overlay-mode
  :init
  (use-package inline-doc)
  :config
  (progn
    (add-hook 'prog-mode-hook #'eldoc-overlay-mode)))

;;; init.el ends here
