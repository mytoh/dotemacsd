;;; init-flycheck.el -*- lexical-binding: t; -*-

(liby 'flycheck
  (command (flycheck-mode global-flycheck-mode) "flycheck")
  ;; (add-hook 'emacs-startup-hook #'global-flycheck-mode)
  (set-option flycheck-check-syntax-automatically '(save new-line))

  (setq flycheck-emacs-lisp-load-path 'inherit)

  (add-hook 'flycheck-mode-hook
            (lambda ()
              (set-face-background 'flycheck-warning
                                   (color-lighten-name (face-background 'default) 15)))))

(liby 'flycheck-pos-tip
  (when (display-graphic-p (selected-frame))
    (after 'flycheck
        (req 'flycheck-pos-tip
          (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))))
