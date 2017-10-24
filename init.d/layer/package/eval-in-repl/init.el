;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package eval-in-repl-ielm
  :commands (eir-eval-in-ielm)
  :bind (:map emacs-lisp-mode-map
         ("C-<return>" . eir-eval-in-ielm))
  :config
  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (setq-local eir-ielm-eval-in-current-buffer t))))

;;; init.el ends here
