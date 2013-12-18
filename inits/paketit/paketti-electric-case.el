
(req 'electric-case
     (eval-after-load "cc-mode"
       (add-hook 'c-mode-hook #'electric-case-c-init)))

(provide 'paketti-electric-case)
