;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package aggressive-indent
  :commands (aggressive-indent-mode)
  :init
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  :config
  (after 'evil
    (add-to-list 'aggressive-indent-protected-commands
                 'evil-undo-pop)))

;;; init.el ends here
