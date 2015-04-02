;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-vendle
  (command (helm-vendle) "helm-vendle")
  (muki:define-launcher-key "v l" 'helm-vendle))

;;; init.el ends here
