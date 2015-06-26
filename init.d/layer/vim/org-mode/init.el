;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(evil-leader/set-key-for-mode 'org-mode
    "m'" #'org-edit-special
    "mc" #'org-capture
    "md" #'org-deadline
    "me" #'org-export-dispatch
    "mf" #'org-set-effort
    ;; headings
    "mhi" #'org-insert-heading-after-current
    "mhI" #'org-insert-heading
    "mI" #'org-clock-in
    "m," #'org-ctrl-c-ctrl-c
    "mn" #'org-narrow-to-subtree
    "mN" #'widen
    "mO" #'org-clock-out
    "mq" #'org-clock-cancel
    "mR" #'org-refile
    "ms" #'org-schedule
    ;; insertion of common elements
    "mil" #'org-insert-link
    "mif" #'org-footnote-new

    ;; helm
    "mhl" #'helm-org-headlines)

;;; init.el ends here
