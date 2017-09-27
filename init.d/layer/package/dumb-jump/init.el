;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package dumb-jump
  :commands (dumb-jump-go
             dumb-jump-back
             dumb-jump-quick-look
             dumb-jump-go-other-window
             dumb-jump-go-prefer-external
             dumb-jump-go-prefer-external-other-window
             dumb-jump-go-prompt)
  :init
  (setq dumb-jump-default-project (expand-file-name "~/huone/ateljee"))
  ;; https://github.com/syl20bnr/spacemacs/blob/bd7ef98e4c35fd87538dd2a81356cc83f5fd02f3/layers/%2Bspacemacs/spacemacs-misc/packages.el
  (setq dumb-jump-selector 'helm))

;;; init.el ends here
