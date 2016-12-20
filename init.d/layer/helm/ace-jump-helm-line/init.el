;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'ace-jump-helm-line
  (command (ace-jump-helm-line) "ace-jump-helm-line")
  (after 'helm
    (define-key helm-map (kbd "C-'") #'ace-jump-helm-line))
  ;; [[http://rubikitch.com/2015/04/16/ace-jump-helm-line/]]
  (after 'ace-jump-helm-line
    (setq ace-jump-helm-line-keys (append "aoeuidhtns;qjkxbm',.pyfgcrl" nil))
    ;; (setq ace-jump-helm-line-style 'de-bruijn)
    (setq ace-jump-helm-line-style 'pre)))


;;; init.el ends here
