;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; helm-ls-git
(liby 'helm-ls-git
  (auto (helm-ls-git-ls) "helm-ls-git")
  (muki:define-launcher-key "f" #'helm-ls-git-ls))

;;; init.el ends here
