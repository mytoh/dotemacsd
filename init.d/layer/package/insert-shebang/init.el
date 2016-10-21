;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package insert-shebang
  :defer t
  :config
  (progn
    ;; we don't want to insert shebang lines automatically
    (remove-hook 'find-file-hook 'insert-shebang)))

;;; init.el ends here
