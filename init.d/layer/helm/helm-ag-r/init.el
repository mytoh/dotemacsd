;;; init-helm-ag-r.el -*- lexical-binding: t -*-

(liby 'helm-ag-r
  (command (helm-ag-r) "helm-ag-r")
  (set-option helm-ag-r-option-list
              '("-S -U --hidden"
                "-S -U -l")
              helm-ag-r-requires-pattern 2)
  )
