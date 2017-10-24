;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package treemacs
  :commands (treemacs-toggle)
  :config
  (use-package treemacs-evil
    :after evil)
  (setq treemacs-header-function            #'treemacs--create-header-projectile
        treemacs-follow-after-init          t
        treemacs-width                      35
        treemacs-indentation                2
        treemacs-git-integration            t
        treemacs-change-root-without-asking nil
        treemacs-sorting                    'alphabetic-desc
        treemacs-show-hidden-files          t
        treemacs-never-persist              nil)
  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t)
  ;; :bind
  ;; (:map global-map
  ;;  ([f8]        . treemacs-toggle)
  ;;  ("<C-M-tab>" . treemacs-toggle)
  ;;  :map spacemacs-default-map
  ;;  ("ft"    . treemacs)
  ;;  ("fT"    . treemacs-projectile)
  ;;  ("f C-t" . treemacs-find-file))
  )

;;; init.el ends here
