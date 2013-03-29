
(req 'smartparens
     (req 'smartparens-config)
     (req 'dash)

     (smartparens-global-mode t)

     ;; highlights matching pairs
     (show-smartparens-global-mode t)

     ;;;;;;;;;;;;
     ;; keys
     (defvar my-sp-paredit-bindings '(
                                      ("C-M-f" . sp-forward-sexp) ;; navigation
                                      ("C-M-b" . sp-backward-sexp)
                                      ("C-M-u" . sp-backward-up-sexp)
                                      ("C-M-d" . sp-down-sexp)
                                      ("C-M-p" . sp-backward-down-sexp)
                                      ("C-M-n" . sp-up-sexp)
                                      ("M-s" . sp-splice-sexp) ;; depth-changing commands
                                      ("M-<up>" . sp-splice-sexp-killing-backward)
                                      ("M-<down>" . sp-splice-sexp-killing-forward)
                                      ("M-r" . sp-splice-sexp-killing-around)
                                      ("C-)" . sp-forward-slurp-sexp) ;; barf/slurp
                                      ("C-<right>" . sp-forward-slurp-sexp)
                                      ("C-}" . sp-forward-barf-sexp)
                                      ("C-<left>" . sp-forward-barf-sexp)
                                      ("C-(" . sp-backward-slurp-sexp)
                                      ("C-M-<left>" . sp-backward-slurp-sexp)
                                      ("C-{" . sp-backward-barf-sexp)
                                      ("C-M-<right>" . sp-backward-barf-sexp)
                                      ("M-S" . sp-split-sexp) ;; misc

                                      ;; added
                                      ("M-f" . sp-forward-symbol)
                                      ("M-b" . sp-backward-symbol)
                                      ("C-M-k" . sp-kill-sexp)
                                      ("C-]" . sp-select-next-thing-exchange)
                                      ("C-M-]" . sp-select-next-thing)
                                      )
       "Alist containing the default paredit bindings to corresponding
smartparens functions.")

     (defun my-sp-use-paredit-bindings ()
       "Initiate `sp-keymap' with paredit-compatible bindings for
corresponding functions provided by smartparens.  See variable
`sp-paredit-bindings'."
       (interactive)
       (--each my-sp-paredit-bindings
         (define-key sp-keymap (read-kbd-macro (car it)) (cdr it))))

     (my-sp-use-paredit-bindings)

     ;; from wiki/Tips-and-tricks
     (defun my-wrap-with-paren (&optional arg)
       (interactive "p")
       (sp-select-next-thing-exchange arg)
       (execute-kbd-macro (kbd "(")))
     (define-key sp-keymap (kbd "M-(") 'my-wrap-with-paren))


(provide 'package-smartparens)
