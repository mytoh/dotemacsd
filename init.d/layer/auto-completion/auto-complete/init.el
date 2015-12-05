;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'auto-complete-config
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/hoarder/github.com/auto-complete/auto-complete/dict")
  (ac-config-default))

;;; init.el ends here
