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
(add-hook 'emacs-startup-hook #'muki:eshell-startup-hook)

;; load prompt settings
(require 'config-eshell-prompt)


(autoload #'eshell-switch:switch "eshell-switch")
(autoload #'eshell-switch:buffer-next "eshell-switch")
(autoload #'eshell-switch:buffer-prev "eshell-switch")
(autoload #'eshell-switch:buffer-new "eshell-switch")

(define-prefix-command 'muki:eshell-switch-map)
(add-global-key "C-z" 'muki:eshell-switch-map)

(add-global-key "C-z C-z" 'eshell-switch:switch)

(cl-defun muki:eshell-mode-hook ()
  (add-key eshell-mode-map
    "C-z C-n" 'eshell-switch:buffer-next
    "C-z C-p" 'eshell-switch:buffer-prev
    "C-z C-c" 'eshell-switch:buffer-new))
(add-hook 'eshell-mode-hook #'muki:eshell-mode-hook)

;; (autoload 'helm-eshell-switch "helm-eshell-switch")
;; (add-global-key "C-z h" 'helm-eshell-switch)

(defun eshell/clear ()
  "Clears the shell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(add-hook 'eshell-preoutput-filter-functions
          #'ansi-color-filter-apply)

(provide 'config-eshell)
