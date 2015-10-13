;;; lisp-state -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-lisp-state ()
  (liby 'evil-lisp-state
    (setq evil-lisp-state-leader-prefix "k")
    (req 'evil-lisp-state
      (hook 'emacs-lisp-mode-hook #'evil-lisp-state)
      (add-key evil-lisp-state-map "C-g" #'evil-normal-state))))

(muki:init-evil-lisp-state)

;;; lisp-state.el ends here
