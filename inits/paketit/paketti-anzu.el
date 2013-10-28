
(req 'anzu
     (global-anzu-mode +1)
     (global-set-key (kbd "M-%") 'anzu-query-replace)
     (global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)
     ;; (enable-option anzu-use-migemo)
     )

(provide 'paketti-anzu)
