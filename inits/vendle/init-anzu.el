
(req 'anzu
     (setq anzu-mode-lighter "")
     (global-anzu-mode +1)
     (global-set-key (kbd "M-%") 'anzu-query-replace)
     (global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)
     (setq anzu-deactivate-region t)
     (setq anzu-search-threshold 1000)
     ;; (disable-option anzu-use-migemo)
     )

(provide 'init-anzu)
