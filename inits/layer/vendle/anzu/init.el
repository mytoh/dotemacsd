
(req 'anzu
  (setq anzu-mode-lighter "")
  (global-anzu-mode +1)
  (add-global-key "M-%" 'anzu-query-replace
                  "C-M-%" 'anzu-query-replace-regexp)
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (enable-option anzu-use-migemo)
  )
