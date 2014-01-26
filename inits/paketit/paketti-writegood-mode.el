

(req 'writegood-mode
     ;; (global-set-key (kbd "C-c e g") 'writegood-mode)
     (add-hook 'org-mode-hook 'writegood-mode)
     )

(provide 'paketti-writegood-mode)
