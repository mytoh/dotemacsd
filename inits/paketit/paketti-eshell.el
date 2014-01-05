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
(add-hook 'emacs-startup-hook #'(lambda ()
                                  (let ((default-directory (getenv "HOME")))
                                    (command-execute 'eshell)
                                    (bury-buffer))))

;; load prompt settings
(require 'paketti-eshell-prompt)
(require 'paketti-eshell-switch)


;;; my eshell map
(define-prefix-command 'my-eshell-map)
(global-set-key (kbd "C-z") 'my-eshell-map)
(cl-defmacro mytoh:define-eshell-key (key func)
  "define personal eshell key mappings"
  `(progn
     (define-key my-eshell-map ,key ,func)
     (message "bind %s to %s" ,key (symbol-name ,func))))

(mytoh:define-eshell-key (kbd "C-s") #'mytoh:eshell-invoke-or-switch)
(mytoh:define-eshell-key (kbd "C-n") #'mytoh:eshell-next)
(mytoh:define-eshell-key (kbd "C-c") #'mytoh:eshell-new)


(autoload 'helm-eshell-session "helm-eshell-session")
(mytoh:define-eshell-key (kbd "h") #'helm-eshell-session)




(provide 'paketti-eshell)
