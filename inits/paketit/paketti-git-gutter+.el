
(req 'git-gutter+
     (setq git-gutter+-window-width 2)
     (setq git-gutter+-modified-sign "☁")
     (setq git-gutter+-added-sign "☀")
     (setq git-gutter+-deleted-sign "☂")
     (setq git-gutter+-disabled-modes
           '(image-mode image-dired-image-display eshell-mode
                        eww-mode))
     (global-git-gutter+-mode t))

(provide 'paketti-git-gutter+)
