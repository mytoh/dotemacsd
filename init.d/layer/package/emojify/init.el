;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'emojify
  (command (emojify-mode global-emojify-mode) "emojify")
  ;; (set-option emojify-emoji-styles '(prettify-symbol unicode)) ; ascii, github, unicode
  (set-option emojify-emoji-styles '(unicode)) ; ascii, github, unicode
  (set-option emojify-point-entered-behaviour 'uncover) ; echo, uncover, function
  (enable-mode global-emojify-mode)
  ;; (hook 'emacs-lisp-mode-hook #'emojify-mode)
  (hook 'magit-log-mode-hook #'emojify-mode)
  (hook 'magit-log-mode-hook
        (lambda ()
          (setq-local emojify-emoji-styles '(unicode github))))
  )

;;; :smile:

;;; init.el ends here
