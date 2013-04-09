
(req 'smartparens
     (req 'smartparens-config)


     (smartparens-global-mode t)

     ;; highlights matching pairs
     (show-smartparens-global-mode t)

     ;;;;;;;;;;;;
     ;; keys

     (define-key sp-keymap (kbd "C-M-f")       'sp-forward-sexp) ;; navigation
     (define-key sp-keymap (kbd "C-M-b")       'sp-backward-sexp)
     (define-key sp-keymap (kbd "C-M-u")       'sp-backward-up-sexp)
     (define-key sp-keymap (kbd "C-M-d")       'sp-down-sexp)
     (define-key sp-keymap (kbd "C-M-p")       'sp-backward-down-sexp)
     (define-key sp-keymap (kbd "C-M-n")       'sp-up-sexp)
     (define-key sp-keymap (kbd "M-s")         'sp-splice-sexp) ;; depth-changing commands
     (define-key sp-keymap (kbd "M-<up>")      'sp-splice-sexp-killing-backward)
     (define-key sp-keymap (kbd "M-<down>")    'sp-splice-sexp-killing-forward)
     (define-key sp-keymap (kbd "M-r")         'sp-splice-sexp-killing-around)
     (define-key sp-keymap (kbd "C-)")         'sp-forward-slurp-sexp) ;; barf/slurp
     (define-key sp-keymap (kbd "C-<right>")   'sp-forward-slurp-sexp)
     (define-key sp-keymap (kbd "C-}")         'sp-forward-barf-sexp)
     (define-key sp-keymap (kbd "C-<left>")    'sp-forward-barf-sexp)
     (define-key sp-keymap (kbd "C-(")         'sp-backward-slurp-sexp)
     (define-key sp-keymap (kbd "C-M-<left>")  'sp-backward-slurp-sexp)
     (define-key sp-keymap (kbd "C-{")         'sp-backward-barf-sexp)
     (define-key sp-keymap (kbd "C-M-<right>") 'sp-backward-barf-sexp)
     (define-key sp-keymap (kbd "M-S")         'sp-split-sexp) ;; misc

     ;; added
     (define-key sp-keymap (kbd "M-f")   'sp-forward-symbol)
     (define-key sp-keymap (kbd "M-b")   'sp-backward-symbol)
     (define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)
     (define-key sp-keymap (kbd "C-]")   'sp-select-next-thing-exchange)
     (define-key sp-keymap (kbd "C-M-]") 'sp-select-next-thing)


     ;; from wiki/Tips-and-tricks
     (defun my-sp-wrap-with-paren (&optional arg)
       (interactive "p")
       (sp-select-next-thing-exchange arg)
       (execute-kbd-macro (kbd "(")))
     (define-key sp-keymap (kbd "M-(") 'my-sp-wrap-with-paren)

     ;; lisp modes
     (sp-with-modes '(emacs-lisp-mode
                      inferior-emacs-lisp-mode
                      lisp-interaction-mode
                      scheme-mode
                      lisp-mode
                      eshell-mode
                      slime-repl-mode
                      clojure-mode
                      common-lisp-mode)
       (sp-local-pair "(" nil :bind "M-("))


     (define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp))


(provide 'package-smartparens)
