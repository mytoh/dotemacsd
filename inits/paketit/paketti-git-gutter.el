;; git-gutter
(req 'git-gutter
     (setq git-gutter:window-width 2)
     (setq git-gutter:modified-sign "☁")
     (setq git-gutter:added-sign "☀")
     (setq git-gutter:deleted-sign "☂")
     (setq git-gutter:disabled-modes '(image-mode eshell-mode))
     (global-git-gutter-mode t)
     (eval-after-load "diminish"
       '(progn
         (eval-after-load "git-gutter"
           '(diminish 'git-gutter-mode ""))))
     )

(provide 'paketti-git-gutter)
