;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package easy-escape
  :commands (easy-escape-minor-mode)
  :init
  (progn
    ;; * Set `easy-escape-character` to a different character:
    (setq easy-escape-character ?╲)

    ;; Replace 'lisp-mode-hook with 'prog-mode-hook to enable everywhere
    (add-hook 'lisp-mode-hook #'easy-escape-minor-mode)
    (add-hook 'emacs-lisp-mode-hook #'easy-escape-minor-mode)
    (add-hook 'lisp-interaction-mode-hook #'easy-escape-minor-mode))
  :config
  (progn
    ;; * Adjust the foreground of `easy-escape-face`:
    (set-face-attribute 'easy-escape-face nil :foreground "red")))

;;; init.el ends here
