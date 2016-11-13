;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; eos
(use-package visible-mark
  :init
  (add-hook 'prog-mode-hook #'visible-mark-mode)
  :config
  (progn
    (setq visible-mark-max 1)
    (setq visible-mark-faces '(visible-mark-active))
    (set-face-attribute 'visible-mark-active nil :background "#444444")
    (set-face-attribute 'visible-mark-active nil :foreground nil)))

;;; init.el ends here
