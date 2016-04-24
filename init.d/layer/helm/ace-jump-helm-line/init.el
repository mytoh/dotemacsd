;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'ace-jump-helm-line
  (command (ace-jump-helm-line) "ace-jump-helm-line")
  (after 'helm
      (define-key helm-map (kbd "C-'") #'ace-jump-helm-line))
  ;; [[http://rubikitch.com/2015/04/16/ace-jump-helm-line/]]
  (after 'ace-jump-helm-line
      (setq avi-keys (append "aoeuidhtn;qjkxbm',.pyfgcrl" nil))))


;;; init.el ends here
