;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-mode-manager
  (auto (helm-switch-major-mode
         helm-enable-minor-mode
         helm-disable-minor-mode)
        "helm-mode-manager"))

;;; init.el ends here
