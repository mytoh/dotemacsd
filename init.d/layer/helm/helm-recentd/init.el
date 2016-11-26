;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-recentd
  :commands (helm-recentd)
  :init
  ;; Sort directory list by 'date or 'frequency
  (setq helm-recentd-sort 'date)
  (global-set-key (kbd "C-x C-d") 'helm-recentd))

;;; init.el ends here
