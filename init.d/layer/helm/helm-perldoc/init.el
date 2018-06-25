;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package helm-perldoc
  ;; :commands (helm-perldoc:setup helm-perldoc:carton-setup)
  :config
  (setq helm-perldoc-executable
        "perldoc"
        ;; (cond ((executable-find "mcpandoc")
        ;;        "mcpandoc")
        ;;       ((executable-find "cpandoc")
        ;;        "cpandoc")
        ;;       (t
        ;;        "perldoc"))
        )
  ;; helm-perldoc:setup takes long time on low power platform
  (with-eval-after-load "cperl-mode"
    (progn
      ;; auto carton setup
      (add-hook 'cperl-mode-hook 'helm-perldoc:carton-setup)))
  (with-eval-after-load 'perlbrew
    (helm-perldoc:setup))
  )

;;; init.el ends here
