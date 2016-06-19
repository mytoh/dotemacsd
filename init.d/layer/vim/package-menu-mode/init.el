;;; nitY -- nitY -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(after 'package
    (evil-set-initial-state 'package-menu-mode
     'normal)

  (evil-define-key 'normal package-menu-mode-map
    "q" #'quit-window)
  )

;;; nit.elY ends here
