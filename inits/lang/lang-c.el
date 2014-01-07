
(add-hook 'c-mode-common-hook
          (lambda ()
            ;; (c-set-style "bsd")
            (setq
             ;; c-basic-offset 4
             indent-tabs-mode nil)
            ))

(add-hook 'c-mode-common-hook
          (lambda ()
            (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)))

(cl-defun my-c-indent-buffer ()
  "milkypostman/dotemacs/defun.el"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max)))

(add-hook 'c-mode-common-hook
          (lambda ()
            (add-hook 'before-save-hook 'my-c-indent-buffer nil t)))


(provide 'lang-c)
