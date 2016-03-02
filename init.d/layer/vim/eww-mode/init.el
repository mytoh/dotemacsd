;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki-evil)

(evil-define-key 'normal eww-mode-map
  "C-i" #'shr-next-link
  "S-<TAB>" #'shr-previous-link
  "o" #'ace-link-eww
  "q" #'quit-window)

(evil-define-key 'normal eww-link-keymap
  "o" #'ace-link-eww)

;; (bind-map my-leader-eww-map
;;     :evil-keys ("SPC m" ",")
;;     :evil-states (normal motion visual)
;;     :major-modes (eww-mode))
;; (bind-map-set-keys my-leader-eww-map
;;     "hh" #'helm-eww-history
;;     "hb" #'helm-eww-bookmark
;;     "hs" #'helm-eww-search-engine)

;;; init.el ends here
