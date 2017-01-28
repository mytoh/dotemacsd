;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package ivy-rich
  :config
  (after 'ivy
    (ivy-set-display-transformer 'ivy-switch-buffer 'ivy-rich-switch-buffer-transformer)))

;;; init.el ends here
