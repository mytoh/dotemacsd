
(cl-defun muki:cl-buffer-enable-reindent ()
  (add-hook 'before-save-hook #'muki:indent-buffer nil t))

(add-hook 'lisp-mode-hook #'muki:cl-buffer-enable-reindent)
(add-hook 'lisp-mode-hook #'checkdoc-minor-mode)

(mode (concat "\\." "cl" "\\'")  #'common-lisp-mode)
