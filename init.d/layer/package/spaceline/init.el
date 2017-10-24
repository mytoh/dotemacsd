;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;; [[http://pragmaticemacs.com/emacs/get-that-spacemacs-look-without-spacemacs/][Get that spacemacs look without spacemacs | Pragmatic Emacs]]
(use-package spaceline
  :init
  ;; (setq powerline-default-separator 'arrow-fade)
  (setq spaceline-minor-modes-separator " ")
  :config
  (require 'spaceline-config)
  ;; (spaceline-spacemacs-theme)
  (spaceline-emacs-theme)
  (spaceline-helm-mode))

;;; init.el ends here
