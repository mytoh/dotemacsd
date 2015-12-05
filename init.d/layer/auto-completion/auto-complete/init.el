;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'auto-complete-config
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/hoarder/github.com/auto-complete/auto-complete/dict")
  (ac-config-default)
  (setq ac-use-menu-map t)
  ;; Default settings
  (define-key ac-menu-map "\C-n" 'ac-next)
  (define-key ac-menu-map "\C-p" 'ac-previous))

;;; init.el ends here
