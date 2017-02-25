;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-numbers
  :commands (highlight-numbers-mode)
  :init
  (progn
    (add-hook 'prog-mode-hook #'highlight-numbers-mode)))

;;; init.el ends here
