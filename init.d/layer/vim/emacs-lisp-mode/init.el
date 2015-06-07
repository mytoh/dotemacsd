;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; from spacemacs github.com/syl20bnr/spacemacs/spacemacs/keybindings.el
;; emacs-lisp -----------------------------------------------------------------
(evil-leader/set-key-for-mode 'emacs-lisp-mode
    "me$" #'lisp-state-eval-sexp-end-of-line
    "meb" #'eval-buffer
    "mee" #'eval-last-sexp
    "mep" #'pp-eval-last-sexp
    "mef" #'eval-defun
    "mel" #'lisp-state-eval-sexp-end-of-line
    "m,"  #'lisp-state-toggle-lisp-state)

(evil-leader/set-key-for-mode 'emacs-lisp-mode
    "mgg" 'elisp-slime-nav-find-elisp-thing-at-point
    "mhh" 'elisp-slime-nav-describe-elisp-thing-at-point)

;;; init.el ends here
