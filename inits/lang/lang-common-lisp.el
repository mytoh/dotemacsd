
(cl-defun my-cl-buffer-enable-reindent ()
  (add-hook 'before-save-hook 'my-indent-buffer nil t))

(add-hook 'lisp-mode-hook 'my-cl-buffer-enable-reindent)
(add-hook 'lisp-mode-hook 'checkdoc-minor-mode)

(add-to-list 'auto-mode-alist `(,(concat "\\." "cl" "\\'") . common-lisp-mode))

(provide 'lang-common-lisp)
