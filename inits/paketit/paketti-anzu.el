
(req 'anzu
     (put 'anzu-mode-lighter 'risky-local-variable t)
     (setq anzu-mode-lighter (propertize " 杏" 'face 'anzu-mode-line))
     (global-anzu-mode +1)
     (global-set-key (kbd "M-%") 'anzu-query-replace)
     (global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)
     (setq anzu-deactivate-region t)
     (setq anzu-search-threshold 1000)
     ;; (enable-option anzu-use-migemo)
     )

(provide 'paketti-anzu)
(when (require 'anzu nil t)
  )
