
;; shell mode recognition
(cl-defun add-shell-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . sh-mode)))
(add-shell-mode "subr")
(add-shell-mode "mksh")

(cl-defun muki:shell-indent-buffer ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max)))


;; (add-hook 'js-mode-hook (clambda ()
;;                           (flycheck-select-checker 'javascript-jslint-reporter)
;;                           (flycheck-mode)))

(cl-defun muki:shell-set-flycheck-checker ()
  (liby 'flycheck
    (flycheck-mode)
    (flycheck-select-checker 'sh-shellcheck)))

(add-hook 'sh-mode-hook
          #'muki:shell-set-flycheck-checker)

(add-hook 'sh-mode-hook
          (clambda ()
              (add-hook 'before-save-hook 'muki:shell-indent-buffer nil t)))
