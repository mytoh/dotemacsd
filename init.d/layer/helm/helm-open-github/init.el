;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'helm-open-github
  (command (helm-open-github-from-file
            helm-open-github-from-commit
            helm-open-github-from-issues
            helm-open-github-from-pull-requests)
           "helm-open-github"))

;;; init.el ends here
