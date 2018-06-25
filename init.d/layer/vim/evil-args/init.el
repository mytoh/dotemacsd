;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package evil-args
  :config
  ;; bind evil-args text objects
  (define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
  (define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

  ;; bind evil-forward/backward-args
  ;; (define-key evil-normal-state-map "L" 'evil-forward-arg)
  ;; (define-key evil-normal-state-map "H" 'evil-backward-arg)
  ;; (define-key evil-motion-state-map "L" 'evil-forward-arg)
  ;; (define-key evil-motion-state-map "H" 'evil-backward-arg)

  ;; bind evil-jump-out-args
  ;; (define-key evil-normal-state-map "K" 'evil-jump-out-args)
  )

;;; init.el ends here
