;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package undo-tree
  :diminish undo-tree-mode
  :commands (global-undo-tree-mode)
  :ensure t
  :config
  ;; (global-undo-tree-mode)
  (validate-setq undo-tree-visualizer-timestamps t)
  (validate-setq undo-tree-visualizer-diff t))

;;; init.el ends here
