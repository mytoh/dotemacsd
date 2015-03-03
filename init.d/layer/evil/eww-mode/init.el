;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(evil-define-key 'normal eww-mode-map
  "<TAB>" #'shr-next-link
  "S-<TAB>" #'shr-previous-link
  "o" #'ace-link-eww
  "q" #'quit-window)

(evil-define-key 'normal eww-link-keymap
  "o" #'ace-link-eww)

;;; init.el ends here
