;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki-evil)

(cl-defun muki:org-insert-heading ()
  (interactive)
  (org-insert-heading)
  (when (bound-and-true-p evil-mode)
    (evil-insert-state)))

(bind-map my-leader-org-map
    :evil-keys ("SPC m" ",")
    :evil-states (normal motion visual)
    :major-modes (org-mode))

(bind-map-set-keys my-leader-org-map
    "'" #'org-edit-special
    "c" #'org-capture
    "d" #'org-deadline
    "e" #'org-export-dispatch
    "f" #'org-set-effort
    ;; headings
    "hi" #'org-insert-heading-after-current
    "hI" #'muki:org-insert-heading
    "I" #'org-clock-in
    "," #'org-ctrl-c-ctrl-c
    "n" #'org-narrow-to-subtree
    "N" #'widen
    "O" #'org-clock-out
    "q" #'org-clock-cancel
    "R" #'org-refile
    "s" #'org-schedule
    ;; insertion of common elements
    "il" #'org-insert-link
    "if" #'org-footnote-new

    ;; helm
    "hl" #'helm-org-in-buffer-headings)

(bind-map-set-keys my-base-leader-org-map
    "c" #'org-capture)

(when (commandp 'muki:org-open-link-mpv)
  (bind-map-set-keys my-base-leader-org-map
      "m" #'muki:org-open-link-mpv))

(liby 'org-cliplink
  (bind-map-set-keys my-base-leader-org-map
      "l" #'org-cliplink))

(evil-define-key 'normal org-mode-map
  "o" #'evil-open-below)

;;; init.el ends here
