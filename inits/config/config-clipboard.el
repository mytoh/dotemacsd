;;; config-clipboard.el  -*- lexical-binding: t -*-
;; [[http://d.hatena.ne.jp/l1o0/20100429/1272557315]]

(cl-defun muki:cut-function (text &optional rest)
  (interactive)
  (let ((process-connection-type nil))
    (let ((proc (start-process "xclip" "*Messages*" "xclip")))
      (process-send-string proc text)
      (process-send-eof proc))))

(cl-defun muki:paste-function ()
  (interactive)
  (shell-command-to-string "xclip -o"))

(cl-defun muki:activate-clipboard ()
  (when (and (not window-system)
             (executable-find "xclip"))
    (setq interprogram-cut-function 'muki:cut-function)
    (setq interprogram-paste-function 'muki:paste-function)))

(muki:activate-clipboard)

(provide 'config-clipboard)
