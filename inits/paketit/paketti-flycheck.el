
(pak 'flycheck
     ;; (add-hook 'after-init-hook #'global-flycheck-mode)
     (add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
     (with-eval-after-load 'flycheck
       (setq flycheck-check-syntax-automatically '(save new-line))))

(provide 'paketti-flycheck)
