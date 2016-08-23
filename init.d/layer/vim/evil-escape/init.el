;;; escape -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-escape ()
  (liby 'evil-escape
    (set-option evil-escape-key-sequence (kbd "ESC"))
    (req 'evil-escape
      (evil-escape-mode))))

(cl-defun muki:init-evil-escape-w/o-lib ()
  ;; [[https://github.com/davvil/.emacs.d/blob/master/init.el]]
  ;; [[http://juanjoalvarez.net/es/detail/2014/sep/19/vim-emacsevil-chaotic-migration-guide/]]
  ;; esc quits
  (defun minibuffer-keyboard-quit ()
    "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
    (interactive)
    (if (and delete-selection-mode transient-mark-mode mark-active)
        (setq deactivate-mark  t)
      (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
      (abort-recursive-edit)))
  (define-key evil-normal-state-map [escape] #'keyboard-quit)
  (define-key evil-visual-state-map [escape] #'keyboard-quit)
  (define-key evil-emacs-state-map [escape] #'keyboard-quit)
  (define-key minibuffer-local-map [escape] #'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] #'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] #'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] #'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] #'minibuffer-keyboard-quit)
  (global-set-key [escape] #'evil-exit-emacs-state))

;;; escape.el ends here
