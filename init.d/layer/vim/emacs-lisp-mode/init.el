;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(require 'muki-evil)

;; from spacemacs github.com/syl20bnr/spacemacs/spacemacs/keybindings.el
;; emacs-lisp -----------------------------------------------------------------
(muki:evil-leader-define-key-for-mode (emacs-lisp-mode emacs-lisp-mode-map)
  "e$" #'lisp-state-eval-sexp-end-of-line
  "eb" #'eval-buffer
  "ee" #'eval-last-sexp
  "ep" #'pp-eval-last-sexp
  "ef" #'eval-defun
  "er" 'eval-region
  "el" #'lisp-state-eval-sexp-end-of-line
  ","  #'lisp-state-toggle-lisp-state

  "gg" #'xref-find-definitions-other-window
  "hh" #'elisp-slime-nav-describe-elisp-thing-at-point)


;;; init.el ends here
