;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-hoarder
  (command (helm-hoarder) "helm-hoarder")
  (muki:define-launcher-key "v l" 'helm-hoarder))

;;; init.el ends here
