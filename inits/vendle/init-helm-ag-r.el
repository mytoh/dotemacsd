;;; init-helm-ag-r.el -*- lexical-binding: t -*-

(liby 'helm-ag-r
  (auto (helm-ag-r) "helm-ag-r")
  (set-option helm-ag-r-option-list
              '("-S -U --hidden"
                "-S -U -l")
              helm-ag-r-requires-pattern 2)

  (muki:define-launcher-key "a" 'helm-ag-r))

(provide 'init-helm-ag-r)
