;;; config-eshell.el -*- lexical-binding: t -*-
;; eshell

(require 'cl-lib)
(require 'esh-mode)
(require 'eshell)

(require 'esh-util)

;;; modules
(cl-pushnew 'eshell-rebind eshell-modules-list)
(cl-pushnew 'eshell-xtra eshell-modules-list)

;;; prefer lisp function
;; (enable-option eshell-prefer-lisp-functions)

;;; history
(after 'em-hist
    (setq-default eshell-history-size 10000))

;;; start eshell after startup
(cl-defun muki:eshell-startup-hook ()
  (let ((default-directory (getenv "HOME")))
    (command-execute 'eshell)
    (bury-buffer)
    (message "eshell started")))
;; (add-hook 'emacs-startup-hook #'muki:eshell-startup-hook)


;; disable undo
(add-hook 'eshell-mode-hook #'buffer-disable-undo)
