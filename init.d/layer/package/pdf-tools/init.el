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
              #'pdf-view-midnight-minor-mode)
    (add-hook 'pdf-view-mode-hook
              #'pdf-view-dark-minor-mode)
    (add-hook 'pdf-view-mode-hook
              #'pdf-view-fit-height-to-window)
    ))

;;; init.el ends here
