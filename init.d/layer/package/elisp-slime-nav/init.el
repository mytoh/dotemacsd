;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'elisp-slime-nav
  (command (turn-on-elisp-slime-nav-mode) "elisp-slime-nav")
  (seq-doseq (hook '(emacs-lisp-mode-hook ielm-mode-hook))
    (add-hook hook #'turn-on-elisp-slime-nav-mode)))

;;; init.el ends here
