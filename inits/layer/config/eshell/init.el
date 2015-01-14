;;; config-eshell.el -*- lexical-binding: t -*-
;; eshell

(eval-when-compile
  (require 'cl-lib)
  (require 'esh-mode)
  (require 'eshell))

(require 'esh-util)

;;; modules
(cl-pushnew 'eshell-rebind eshell-modules-list)
(cl-pushnew 'eshell-xtra eshell-modules-list)

;;; prefer lisp function
(enable-option eshell-prefer-lisp-functions)

;;; start eshell after startup
(cl-defun muki:eshell-startup-hook ()
  (let ((default-directory (getenv "HOME")))
    (command-execute 'eshell)
    (bury-buffer)
    (message "eshell started")))
;; (add-hook 'emacs-startup-hook #'muki:eshell-startup-hook)

(defun eshell/clear ()
  "Clears the shell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;; (add-hook 'eshell-preoutput-filter-functions
;;           #'ansi-color-filter-apply)
(add-hook 'eshell-mode-hook 'ansi-color-for-comint-mode-on)
