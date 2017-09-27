;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package mixed-pitch
  :config
  ;; If you want it in all text modes:
  (add-hook 'text-mode-hook #'mixed-pitch-mode)
  (add-hook 'org-mode-hook #'mixed-pitch-mode)
  ;; Depending on your specific setup, you may want to adjust the height of
  ;; variable pitch fonts:
  (set-face-attribute 'variable-pitch nil :height 160))

;;; init.el ends here
