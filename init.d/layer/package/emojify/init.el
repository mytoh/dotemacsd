;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'emojify
  (command (emojify-mode global-emojify-mode) "emojify")
  (set-option emojify-emoji-styles '(unicode github)) ; ascii, github, unicode
  (enable-mode global-emojify-mode)
  ;; (hook 'emacs-lisp-mode-hook #'emojify-mode)
  ;; (hook 'magit-log-mode-hook #'emojify-mode)
  )

;;; :smile:

;;; init.el ends here
