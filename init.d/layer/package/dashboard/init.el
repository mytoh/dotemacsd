;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package dashboard
  :config
  (progn
    (req 'projectile)
    ;; (setq dashboard-items '((recents  . 5)
    ;;                         (projects . 5)))
    (dashboard-setup-startup-hook)))

;;; init.el ends here
