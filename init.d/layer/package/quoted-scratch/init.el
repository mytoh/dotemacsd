;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package quoted-scratch
  ;; :demand t
  :config
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-with-timer 1 nil 'qs-refresh-scratch-buffer)
              (qs-refresh-quote-when-idle))))



;;; init.el ends here
