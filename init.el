;;; -*- coding: utf-8 -*-

(require 'cl-lib)

;;;; gc
(setq gc-cons-threshold (* 1024 1024 1024))

(cl-pushnew (locate-user-emacs-file "init.d")
            load-path)
(require 'init-load)
(put 'downcase-region 'disabled nil)

;;;; gc
(setq gc-cons-threshold (* 8 1024 1024))
