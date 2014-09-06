
(req 'anzu
  (setq anzu-mode-lighter "")
  (global-anzu-mode +1)
  (muki:global-set-key "M-%" 'anzu-query-replace)
  (muki:global-set-key "C-M-%" 'anzu-query-replace-regexp)
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (enable-option anzu-use-migemo)
  )

(provide 'init-anzu)
