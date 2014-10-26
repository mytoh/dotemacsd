;;; config-eshell.el -*- lexical-binding: t -*-
;; eshell

(eval-when-compile
  (require 'cl-lib)
  (require 'esh-mode)
  (require 'eshell))

(require 'esh-util)

;;; modules
(add-to-list 'eshell-modules-list 'eshell-rebind)
(add-to-list 'eshell-modules-list 'eshell-xtra)

;;; prefer lisp function
(enable-option eshell-prefer-lisp-functions)

;;; start eshell after startup
(cl-defun muki:eshell-startup-hook ()
  (let ((default-directory (getenv "HOME")))
    (command-execute 'eshell)
    (bury-buffer)
    (message "eshell started")))
(add-hook 'emacs-startup-hook 'muki:eshell-startup-hook)

;; load prompt settings
(require 'config-eshell-prompt)


(autoload 'eshell-session:switch "eshell-session")
(autoload 'eshell-session:next "eshell-session")
(autoload 'eshell-session:prev "eshell-session")
(autoload 'eshell-session:new "eshell-session")

(define-prefix-command 'muki:eshell-session-map)
(muki:global-set-key "C-z" 'muki:eshell-session-map)

(muki:global-set-key "C-z C-z" 'eshell-session:switch)

(cl-defun muki:eshell-mode-hook ()
  (muki:define-key eshell-mode-map "C-z C-n" 'eshell-session:next)
  (muki:define-key eshell-mode-map "C-z C-p" 'eshell-session:prev)
  (muki:define-key eshell-mode-map "C-z C-c" 'eshell-session:new))
(add-hook 'eshell-mode-hook 'muki:eshell-mode-hook)

(autoload 'helm-eshell-session "helm-eshell-session")
(muki:global-set-key "C-z h" 'helm-eshell-session)

(defun eshell/clear ()
  "Clears the shell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(add-hook 'eshell-preoutput-filter-functions
          'ansi-color-filter-apply)

(provide 'config-eshell)
