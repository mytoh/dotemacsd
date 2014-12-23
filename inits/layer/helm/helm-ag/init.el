;;; init-helm-ag.el -*- lexical-binding: t -*-

;; ag
(req 'helm-ag
  (set-option helm-ag-source-type 'file-line)
  (muki:define-launcher-key "a" 'helm-do-ag))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
