
(liby 'anzu
  (defery 'anzu)
  (after 'anzu
    (set-option anzu-mode-lighter "")
    (enable-mode global-anzu-mode)
    (add-global-key "M-%" #'anzu-query-replace
                    "C-M-%" #'anzu-query-replace-regexp)
    (enable-option anzu-deactivate-region)
    (set-option anzu-search-threshold 1000)
    (disable-option anzu-use-migemo)))
