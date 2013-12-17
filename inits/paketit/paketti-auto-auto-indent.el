
(req 'auto-auto-indent
     (add-hook 'emacs-lisp-mode-hook
               #'(lambda () (set (make-local-variable 'aai-indent-function)
                                 'aai-indent-defun))))

(provide 'paketti-auto-auto-indent)
