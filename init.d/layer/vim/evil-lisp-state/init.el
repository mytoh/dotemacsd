;;; lisp-state -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-lisp-state ()
  (use-package evil-lisp-state
      :init
    (progn
      (setq evil-lisp-state-global t)
      (setq evil-lisp-state-enter-lisp-state-on-command nil))
    :config
    (bind-key "C-g" #'evil-normal-state evil-lisp-state-map)
    ))

(muki:init-evil-lisp-state)

;;; lisp-state.el ends here
