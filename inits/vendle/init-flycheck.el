;;; init-flycheck.el -*- lexical-binding: t; -*-

(req 'flycheck
  ;; (add-hook 'after-init-hook #'global-flycheck-mode)
  (add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
  (setq flycheck-check-syntax-automatically '(save new-line))  )

(provide 'init-flycheck)
