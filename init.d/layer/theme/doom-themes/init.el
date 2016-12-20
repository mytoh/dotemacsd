;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package doom-themes
  :config
  (add-hook 'minibuffer-setup-hook #'doom-brighten-minibuffer)
  (require 'doom-neotree)
  (setq doom-neotree-file-icons t))

;;; init.el ends here
