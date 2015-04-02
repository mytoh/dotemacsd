
;; expand-region
(liby 'expand-region
  (command (er/expand-region er/contract-region) "expand-region")
  (add-global-key "C-M-SPC" #'er/expand-region
                  "C-M-s-SPC" #'er/contract-region))
