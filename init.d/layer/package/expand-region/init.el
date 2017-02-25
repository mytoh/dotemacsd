
;; expand-region
(use-package expand-region
  :commands (er/expand-region er/contract-region)
  :init 
  (progn
    ;; (add-global-key "C-M-SPC" #'er/expand-region
    ;;                 "C-M-s-SPC" #'er/contract-region))
    ))
