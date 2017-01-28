;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package doom-themes
  :config
  (progn

;;; OPTIONAL
    ;; brighter source buffers
    ;; (add-hook 'find-file-hook 'doom-buffer-mode)
    ;; brighter minibuffer when active
    (add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
    (require 'doom-neotree)
    (setq doom-enable-bold nil)
    (setq doom-enable-italic nil)
    ))

;;; init.el ends here
