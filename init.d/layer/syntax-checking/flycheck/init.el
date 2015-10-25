;;; init-flycheck.el -*- lexical-binding: t; -*-

(liby 'flycheck
  (command (flycheck-mode global-flycheck-mode) "flycheck")
  ;; (add-hook 'emacs-startup-hook #'global-flycheck-mode)
  (set-option flycheck-check-syntax-automatically '(save new-line))

  ;; (flycheck-define-checker javascript-jslint-reporter
  ;;   "A JavaScript syntax and style checker based on JSLint Reporter.

  ;;                             See URL `https://github.com/FND/jslint-reporter'."
  ;;   :command ("~/.emacs.d/jslint-reporter" source)
  ;;   :error-patterns
  ;;   ((error line-start (1+ nonl) ":" line ":" column ":" (message) line-end))
  ;;   :modes (js-mode js2-mode js3-mode))
  ;; (add-hook 'js-mode-hook (clambda ()
  ;;                           (flycheck-select-checker 'javascript-jslint-reporter)
  ;;                           (flycheck-mode)))
  )

(liby 'flycheck-pos-tip
  (when (display-graphic-p (selected-frame))
    (after 'flycheck
        (req 'flycheck-pos-tip
          (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))))
