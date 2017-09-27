;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-directory
  :commands (helm-directory)
  :init
  ;; (define-key global-map (kbd "C-c l") 'helm-directory)
  ;; (define-key global-map (kbd "C-c C-l") 'helm-directory)
  (setq helm-directory-basedir "~/src/github.com/projectA/")
  (setq helm-directory-basedir-list '("~/src/github.com/projectA/" "~/src/github.com/projectB/" "~/Dropbox"))

  )

;;; init.el ends here
