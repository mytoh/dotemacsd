;;; -*- coding: utf-8 -*-

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
(package-initialize)


(add-to-list 'load-path (concat user-emacs-directory "init.d"))
(require 'init-load)
(put 'downcase-region 'disabled nil)
