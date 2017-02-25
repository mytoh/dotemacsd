;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-find-files-ext
  :commands (helm-ff-ext-skipping-dots-recenter
             helm-ff-ext-enable-skipping-dots
             helm-ff-ext-enable-zsh-path-expansion
             helm-ff-ext-enable-auto-path-expansion)
  :after helm
  :config
  (progn
    (helm-ff-ext-skipping-dots-recenter t)
    (helm-ff-ext-enable-skipping-dots t)
    (helm-ff-ext-enable-zsh-path-expansion t)
    (helm-ff-ext-enable-auto-path-expansion t)))

(use-package helm-minibuffer-ext
  :after helm
  :config
  (progn
    (helm-minibuffer-ext-enable-header-line-maybe t)
    ))

;;; init.el ends here
