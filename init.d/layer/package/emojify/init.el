;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package emojify
  :commands (emojify-mode global-emojify-mode) 
  :config
  (setq emojify-point-entered-behaviour 'uncover) ; echo, uncover, function
  (setq emojify-company-tooltips-p t)
  (emojify-set-emoji-styles '(unicode)) ; ascii, github, unicode
  (enable-mode global-emojify-mode)
  ;; (hook 'emacs-lisp-mode-hook #'emojify-mode)
  (add-hook 'magit-log-mode-hook #'emojify-mode)
  (add-hook 'magit-log-mode-hook
            (lambda ()
              (emojify-set-emoji-styles '(unicode github))))
  )

;;; :smile:

;;; init.el ends here
