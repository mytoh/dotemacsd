
(req 'coffee-mode
     (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
     (add-to-list 'auto-mode-alist '("\\.iced$" . coffee-mode))
     (add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode)))


(provide 'paketti-coffee-mode)
