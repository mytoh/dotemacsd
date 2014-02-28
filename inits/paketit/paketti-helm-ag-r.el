;;; paketti-helm-ag-r.el -*- lexical-binding: t -*-

(pak 'helm-ag-r
     (set-option helm-ag-r-option-list
                 '("-S -U --hidden"
                   "-S -U -l")
                 helm-ag-r-requires-pattern 2)

     (muki:define-global-key (kbd "a") 'helm-ag-r))

(provide 'paketti-helm-ag-r)
