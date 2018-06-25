;;; init-load.el  -*- lexical-binding: t -*-

;;; customize file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load (file-name-sans-extension custom-file) t t)

(require 'cl-lib)

(let ((file-name-handler-alist nil)) 
  (add-to-list 'load-path (concat user-emacs-directory "init.d"))
  (require 'init-load)
  (put 'downcase-region 'disabled nil)
  (put 'timer-list 'disabled nil))
