;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'helm-github-stars
  (command (helm-github-stars) "helm-github-stars")
  (setq helm-github-stars-username (getenv "USER")))

;;; init.el ends here
