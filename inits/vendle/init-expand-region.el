;; expand-region
(liby 'expand-region
  (auto (er/expand-region er/contract-region) "expand-region")
  (muki:global-set-key "C-M-SPC" 'er/expand-region)
  (muki:global-set-key "C-M-s-SPC" 'er/contract-region))

(provide 'init-expand-region)
