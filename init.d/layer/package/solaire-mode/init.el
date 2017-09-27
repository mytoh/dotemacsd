;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package solaire-mode
  :config
  (progn
    ;; brighten buffers (that represent real files)
    (add-hook 'after-change-major-mode-hook #'turn-on-solaire-mode)
    ;; To enable solaire-mode unconditionally for certain modes:
    (add-hook 'ediff-prepare-buffer-hook #'solaire-mode)

    ;; ...if you use auto-revert-mode:
    (add-hook 'after-revert-hook #'turn-on-solaire-mode)

    ;; highlight the minibuffer when it is activated:
    (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)

    ;; if the bright and dark background colors are the wrong way around, use this
    ;; to switch the backgrounds of the `default` and `solaire-default-face` faces.
    ;; This should be used *after* you load the active theme!
    ;;
    ;; NOTE: This is necessary for themes in the doom-themes package!
    (solaire-mode-swap-bg))
  )

;;; init.el ends here
