;;; -*- coding: utf-8 -*-

;;;; gc
(setq gc-cons-threshold (* 1024 1024 1024))

(add-to-list 'load-path (concat user-emacs-directory "inits"))
(require 'init-load)
(put 'downcase-region 'disabled nil)

;;;; gc
(setq gc-cons-threshold (* 8 1024 1024))
