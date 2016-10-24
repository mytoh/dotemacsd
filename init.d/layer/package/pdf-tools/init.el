;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package pdf-tools
  :defer t
  :mode (("\\.pdf\\'" . pdf-view-mode))
  :config
  (progn
    (pdf-tools-install)
    (add-hook 'pdf-view-mode-hook
              #'pdf-view-midnight-minor-mode)))

;;; init.el ends here
