
;; shell mode recognition
(cl-defun add-shell-mode (ext)
  (add-to-list 'auto-mode-alist `(,(concat "\\." ext "\\'") . sh-mode)))
(add-shell-mode "subr")
(add-shell-mode "mksh")

(cl-defun my-shell-indent-buffer ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max)))

(add-hook 'sh-mode-hook
          #'(lambda ()
              (add-hook 'before-save-hook 'my-shell-indent-buffer nil t)))


(provide 'lang-shell)
