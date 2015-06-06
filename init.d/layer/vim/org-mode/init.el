;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(evil-leader/set-key-for-mode 'org-mode
                              "mc" #'org-capture
                              "md" #'org-deadline
                              "me" #'org-export-dispatch
                              "mf" #'org-set-effort
                              "mi" #'org-clock-in
                              "mj" #'helm-org-in-buffer-headings
                              "mo" #'org-clock-out
                              "mm" #'org-ctrl-c-ctrl-c
                              "mn" #'org-narrow-to-subtree
                              "mN" #'widen
                              "mq" #'org-clock-cancel
                              "mr" #'org-refile
                              "ms" #'org-schedule)

;;; init.el ends here
