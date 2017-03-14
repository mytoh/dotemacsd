;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package ace-jump-helm-line
  :defer 30
  :commands (ace-jump-helm-line)
  :init
  (use-package helm
    :config
    (progn
      (define-key helm-map (kbd "C-'") #'ace-jump-helm-line)))
  :config
  (progn
    ;; [[http://rubikitch.com/2015/04/16/ace-jump-helm-line/]]
    (setq ace-jump-helm-line-keys (append "aoeuidhtnsqjkxbmpyfgcrl" nil))
    ;; (setq ace-jump-helm-line-style 'de-bruijn)
    (setq ace-jump-helm-line-style 'pre)))


;;; init.el ends here
