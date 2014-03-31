
(req 'flycheck
     (add-hook 'after-init-hook #'global-flycheck-mode)
     ;; (add-hook 'emacs-lisp-mode 'flycheck-mode)
     )

(provide 'paketti-flycheck)
