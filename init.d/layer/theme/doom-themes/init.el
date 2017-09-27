;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package doom-themes
  :config
  (progn

;;; OPTIONAL
    ;; brighter source buffers
    ;; (add-hook 'find-file-hook 'doom-buffer-mode)
    ;; (require 'doom-neotree)
    (setq doom-enable-bold nil)
    (setq doom-enable-italic nil)

    ;; ;; Enable custom neotree theme
    ;; (doom-themes-neotree-config)  ; all-the-icons fonts must be installed!
    ))

;;; init.el ends here
