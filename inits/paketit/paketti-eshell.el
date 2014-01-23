;;; paketti-eshell.el -*- lexical-binding: t -*-
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
(add-hook 'emacs-startup-hook (lambda ()
                                (let ((default-directory (getenv "HOME")))
                                  (command-execute 'eshell)
                                  (bury-buffer))))

;; load prompt settings
(require 'paketti-eshell-prompt)
(require 'paketti-eshell-switch)


(define-key global-map (kbd "C-z") (make-sparse-keymap))

(define-key global-map (kbd "C-z C-z") 'mytoh:eshell-switch)

(add-hook 'eshell-mode-hook
          (lambda ()
            (define-key eshell-mode-map (kbd "C-z C-n") 'mytoh:eshell-next)
            (define-key eshell-mode-map (kbd "C-z C-c") 'mytoh:eshell-new)))


(autoload 'helm-eshell-session "helm-eshell-session")
(define-key global-map (kbd "C-z h") 'helm-eshell-session)

(provide 'paketti-eshell)
