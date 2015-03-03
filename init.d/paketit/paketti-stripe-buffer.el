
;;; Code:

(pak 'stripe-buffer
     (add-hook 'dired-mode-hook 'stripe-listify-buffer)
     (add-hook 'helm-mode-hook 'stripe-listify-buffer)
     (add-hook 'org-mode-hook 'turn-on-stripe-table-mode))

(provide 'paketti-stripe-buffer)
