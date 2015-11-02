;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'emojify
  (set-option emojify-preferred-style 'github) ; ascii, github, all
  (hook 'emacs-lisp-mode-hook #'emojify-mode)
  (hook 'magit-log-mode-hook #'emojify-mode))

;;; :smile:

;;; init.el ends here
