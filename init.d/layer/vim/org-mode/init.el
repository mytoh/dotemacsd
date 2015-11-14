;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki-evil)

(cl-defun muki:org-insert-heading ()
  (interactive)
  (org-insert-heading)
  (when (bound-and-true-p evil-mode)
    (evil-insert-state)))

(muki:evil-leader-define-key-for-mode (org-mode org-mode-map)
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

;;; init.el ends here
