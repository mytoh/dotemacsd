;; #* multiple-cursor
(req 'multiple-cursors
     (define-key global-map (kbd "C->") 'mc/mark-next-like-this)
     (define-key global-map (kbd "C-<") 'mc/mark-previous-like-this)
     (define-key global-map (kbd "C-c C-<") 'mc/mark-all-like-this))

;; * provide
(provide 'paketti-multiple-cursors)
