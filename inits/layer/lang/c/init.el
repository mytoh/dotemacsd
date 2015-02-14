
(add-hook 'c-mode-common-hook
          (clambda ()
                   ;; (c-set-style "bsd")
                   (setq
                    ;; c-basic-offset 4
                    indent-tabs-mode nil)
                   ))

(add-hook 'c-mode-common-hook
          (clambda ()
                   (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)))

(cl-defun muki:c-indent-buffer ()
  "milkypostman/dotemacs/defun.el"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max)))

(add-hook 'c-mode-common-hook
          (clambda ()
                   (add-hook 'before-save-hook #'muki:c-indent-buffer nil t)))
