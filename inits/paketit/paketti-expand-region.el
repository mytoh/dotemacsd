;; expand-region
(req 'expand-region
     (pending-delete-mode t)
     (global-set-key (kbd "C-M-SPC") 'er/expand-region)
     (global-set-key (kbd "C-M-s-SPC") 'er/contract-region))

(provide 'paketti-expand-region)
