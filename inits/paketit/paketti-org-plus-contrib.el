
(pak 'org-indent

     (cl-defun my-org-add-before-save-hook
         ;; add-hook hook function &optional append local
         (add-hook 'before-save-hook 'org-indent-indent-buffer nil t))

     (add-hook 'org-mode-hook 'my-org-add-before-save-hook)

     )

(provide 'paketti-org-plus-contrib)
