;;; -*- coding: utf-8 -*-

(eval-when-compile
  (require 'cl-lib))

;;;; gc
(setq gc-cons-threshold (* 1024 1024 1024))

(cl-pushnew (concat user-emacs-directory "inits")
            load-path)
(require 'init-load)
(put 'downcase-region 'disabled nil)

;;;; gc
(setq gc-cons-threshold (* 8 1024 1024))
