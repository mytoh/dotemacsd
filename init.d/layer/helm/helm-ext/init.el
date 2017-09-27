;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-ext
  :commands (helm-ext-ff-enable-skipping-dots
             helm-ext-ff-enable-zsh-path-expansion 
             helm-ext-ff-enable-auto-path-expansion
             helm-ext-minibuffer-enable-header-line-maybe)
  :after helm
  :config
  (progn
    (helm-ext-ff-enable-skipping-dots t)
    (setq helm-ext-ff-skipping-dots-recenter t)
    (helm-ext-ff-enable-zsh-path-expansion t)
    (helm-ext-ff-enable-auto-path-expansion t)
    (helm-ext-minibuffer-enable-header-line-maybe t)))


;;; init.el ends here
