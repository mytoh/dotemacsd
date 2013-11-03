
(req 'multi-term
     (setq multi-term-program "/bin/tcsh")

     (add-hook 'term-mode-hook
               (lambda ()
                 (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
                 (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

     (add-hook 'term-mode-hook
               (lambda ()
                 (setq show-trailing-whitespace nil)
                 ;; (autopair-mode -1)
                 )))


(provide 'paketti-multi-term)
