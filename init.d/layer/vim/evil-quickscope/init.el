;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-quickscope
  (command (turn-on-evil-quickscope-always-mode
            turn-on-evil-quickscope-mode)
           "evil-quickscope")
  (add-hook 'emacs-lisp-mode-hook 'turn-on-evil-quickscope-mode))

;;; init.el ends here
