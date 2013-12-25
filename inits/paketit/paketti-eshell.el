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

;;; switch to eshell or restore previous windows
;;; http://irreal.org/blog/?p=1742
(cl-defun mytoh:eshell-switch ()
  "Bring up a full-screen eshell or restore previous config."
  (interactive)
  (if (string= "eshell-mode" major-mode)
      (jump-to-register :eshell-fullscreen)
    (progn
      (window-configuration-to-register :eshell-fullscreen)
      (eshell)
      (delete-other-windows))))

(mytoh:define-global-key (kbd "s") 'mytoh:eshell-switch)


;;; start eshell after startup
(add-hook 'emacs-startup-hook #'(lambda ()
                                  (let ((default-directory (getenv "HOME")))
                                    (command-execute 'eshell)
                                    (bury-buffer))))

;; load prompt settings
(require 'paketti-eshell-prompt)


(provide 'paketti-eshell)
