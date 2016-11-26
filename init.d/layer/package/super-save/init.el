;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package super-save
  :defer 5
  :init
  (setq super-save-auto-save-when-idle t)
  (setq auto-save-default nil)
  :config
  (super-save-mode +1))

;;; init.el ends here
