;;; lisp-state -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-lisp-state ()
  (req 'evil-lisp-state
    (add-key evil-normal-state-map "L" 'evil-lisp-state)
    (add-key evil-lisp-state-map "C-g" 'evil-normal-state)))

(provide 'init-evil-lisp-state)

;;; lisp-state.el ends here
