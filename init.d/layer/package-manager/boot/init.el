;;; boot -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;  requires
(require 'muki)

;;;  setup
(muki:add-to-load-path (muki:expand-path-huone "ateljee/emacs-glof/"))
(muki:add-to-load-path (muki:expand-path-huone "ateljee/emacs-colle/lisp"))
(muki:add-to-load-path (muki:expand-path-huone "ateljee/emacs-hoarder/"))

;;;; initialize hoarder
(req 'hoarder
  (cl-letf ((muki:hoarder-directory (locate-user-emacs-file "vendor")))
    (hoarder:initialize muki:hoarder-directory)))

;;; boot.el ends here
