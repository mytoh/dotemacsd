;;; boot -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;  requires
(require 'muki)

;;;  setup
(muki:add-to-load-path  "~/huone/projektit/emacs-vendle")

;;;; initialize vendle
(req 'vendle
  (cl-letf ((muki:vendle-directory
             (muki:user-emacs-directory (file-name-as-directory "vendle"))))
    (vendle:initialize muki:vendle-directory)))

;;; boot.el ends here
