;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-frame
  :commands (helm-frame-delete helm-frame-window)
  :init
  (add-hook 'helm-after-action-hook 'helm-frame-delete)
  (add-hook 'helm-cleanup-hook 'helm-frame-delete)
  (setq helm-split-window-preferred-function 'helm-frame-window))

;;; init.el ends here
