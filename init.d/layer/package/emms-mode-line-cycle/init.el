;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(use-package emms-mode-line-cycle
  :after emms-mode-line-icon
  :init
  (setq emms-mode-line-cycle-use-icon-p t)
  :config
  (emms-mode-line-cycle 1))

;;; init.el ends here
