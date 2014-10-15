;;; init-flycheck.el -*- lexical-binding: t; -*-

(req 'flycheck
  ;; (add-hook 'after-init-hook #'global-flycheck-mode)
  (add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
  (set-option flycheck-check-syntax-automatically '(save new-line)))

(liby 'flycheck-pos-tip
  (when (display-graphic-p (selected-frame))
    (after 'flycheck
        (req 'flycheck-pos-tip
          (setq flycheck-display-errors-function 'flycheck-pos-tip-error-messages)))))

(provide 'init-flycheck)
