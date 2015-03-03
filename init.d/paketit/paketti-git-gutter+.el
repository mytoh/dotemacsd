
(req 'git-gutter+
     (set-option git-gutter+-window-width 2)
     (set-option git-gutter+-modified-sign "☁")
     (set-option git-gutter+-added-sign "☀")
     (set-option git-gutter+-deleted-sign "☂")
     (set-option git-gutter+-disabled-modes
                 '(image-mode image-dired-image-display eshell-mode
                              eww-mode))
     (enable-mode global-git-gutter+-mode))

(provide 'paketti-git-gutter+)
