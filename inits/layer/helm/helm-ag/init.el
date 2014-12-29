;;; init-helm-ag.el -*- lexical-binding: t -*-

;; ag
(liby 'helm-ag
  (auto (helm-do-ag) "helm-ag")
  (set-option helm-ag-source-type 'file-line)
  (muki:define-launcher-key "a" 'helm-do-ag))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
