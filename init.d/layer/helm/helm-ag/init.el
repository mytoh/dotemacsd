;;; init-helm-ag.el -*- lexical-binding: t -*-

;; ag
(liby 'helm-ag
  (command (helm-do-ag) "helm-ag")
  (set-option helm-ag-source-type 'file-line)
  (setq helm-ag-insert-at-point 'symbol)
  )

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
