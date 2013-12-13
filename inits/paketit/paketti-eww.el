
(req 'eww
     (setq eww-download-path "~/local/lataukset")
     (define-key eww-mode-map (kbd "C-i") 'shr-next-link)
     (add-hook 'after-init-hook
               #'(lambda ()
                   (mytoh:define-global-key (kbd "w") 'eww))))




(provide 'paketti-eww)
