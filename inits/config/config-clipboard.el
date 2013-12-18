
;; [[http://d.hatena.ne.jp/l1o0/20100429/1272557315]]

(cl-defun mytoh:cut-function (text &optional rest)
  (interactive)
  (let ((process-connection-type nil))
    (let ((proc (start-process "xclip" "*Messages*" "xclip")))
      (process-send-string proc text)
      (process-send-eof proc))))

(cl-defun mytoh:paste-function ()
  (interactive)
  (shell-command-to-string "xclip -o"))

(cl-defun mytoh:activate-clipboard ()
  (when (and (not window-system)
             (executable-find "xclip"))
    (setq interprogram-cut-function 'mytoh:cut-function)
    (setq interprogram-paste-function 'mytoh:paste-function)))

(mytoh:activate-clipboard)

(provide 'config-clipboard)
