;;; paketti-helm-ag-r.el -*- lexical-binding: t -*-

(pak 'helm-ag-r
     (setq helm-ag-r-option-list
           '("-S -U --hidden"
             "-S -U -l"))

     (muki:define-global-key (kbd "a") 'helm-ag-r))

(provide 'paketti-helm-ag-r)
