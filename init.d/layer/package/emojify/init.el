;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'emojify
  (hook 'emacs-lisp-mode-hook #'emojify-mode)
  (hook 'magit-log-mode-hook #'emojify-mode))

;;; :smile:

;;; init.el ends here
