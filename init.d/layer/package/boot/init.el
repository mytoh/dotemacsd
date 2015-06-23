;;; boot -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;  requires
(require 'muki)

;;;  setup
(muki:add-to-load-path  "~/huone/projektit/emacs-hoarder")

;;;; initialize hoarder
(req 'hoarder
  (cl-letf ((muki:hoarder-directory (locate-user-emacs-file "hoarder")))
    (hoarder:initialize muki:hoarder-directory)))

;;; boot.el ends here
