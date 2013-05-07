(req 'multiple-cursors

     (global-set-key (kbd "C->") 'mc/mark-next-like-this)
     (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
     (global-set-key (kbd "C-*") 'mc/mark-all-like-this)
     ;;(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

     )

(provide 'package-multiple-cursors)
