;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; helm-ls-git
(liby 'helm-ls-git
  (command (helm-ls-git-ls) "helm-ls-git")
  (after 'helm-ls-git
      (set-option helm-ls-git-show-abs-or-relative 'relative)))

;;; init.el ends here
