;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-indent-guides
  :commands (highlight-indent-guides)
  :init
  (add-hook 'prog-mode-hook #'highlight-indent-guides))

;;; init.el ends here
