;; expand-region
(req 'expand-region
  (muki:global-set-key "C-M-SPC" 'er/expand-region)
  (muki:global-set-key "C-M-s-SPC" 'er/contract-region))

(provide 'init-expand-region)
