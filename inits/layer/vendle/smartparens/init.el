
(req 'smartparens
  (req 'smartparens-config)
  (enable-option sp-show-pair-from-inside)

     ;;;;;;;;;;;;
  ;; keys

  (add-key sp-keymap
    "C-M-f"       #'sp-forward-sexp ;; navigation
    "C-M-b"       #'sp-backward-sexp
    "C-M-u"       #'sp-backward-up-sexp
    "C-M-d"       #'sp-down-sexp
    "C-M-p"        #'sp-previous-sexp
    "C-M-a"        #'sp-beginning-of-sexp
    "C-M-e" #'sp-end-of-sexp
    "C-M-n"       #'sp-next-sexp
    "M-s"         #'sp-splice-sexp ;; depth-changing commands
    "M-<up>"      #'sp-splice-sexp-killing-backward
    "M-<down>"    #'sp-splice-sexp-killing-forward
    "M-r"         #'sp-splice-sexp-killing-around
    "C-)"         #'sp-forward-slurp-sexp ;; barf/slurp
    "C-<right>"   #'sp-forward-slurp-sexp
    "C-}"         #'sp-forward-barf-sexp
    "C-<left>"    #'sp-forward-barf-sexp
    "C-("         #'sp-backward-slurp-sexp
    "C-M-<left>"  #'sp-backward-slurp-sexp
    "C-{"         #'sp-backward-barf-sexp
    "C-M-<right>" #'sp-backward-barf-sexp
    "M-S"         #'sp-split-sexp ;; misc
    )


  ;; added
  (add-key sp-keymap
    "M-f"   #'sp-forward-whitespace
    "M-b"   #'sp-backward-symbol
    "C-M-k" #'sp-kill-sexp)

  (add-key sp-keymap
    "C-]"   #'sp-select-next-thing-exchange
    "C-M-]" #'sp-select-next-thing
    "M-S" #'sp-split-sexp
    "M-J" #'sp-join-sexp)


  ;; from wiki/Tips-and-tricks
  (cl-defun muki:sp-wrap-with-paren (&optional arg)
    (interactive "p")
    (sp-select-next-thing-exchange arg)
    (execute-kbd-macro (kbd "(")))

  (add-key sp-keymap "M-(" #'muki:sp-wrap-with-paren)


  ;; lisp modes
  (defvar muki:lisp-modes
    '(emacs-lisp-mode
      inferior-emacs-lisp-mode
      lisp-interaction-mode
      scheme-mode
      lisp-mode
      eshell-mode
      slime-repl-mode
      clojure-mode
      common-lisp-mode))

  (sp-with-modes muki:lisp-modes
    (sp-local-pair "(" nil :bind "M-("))

  (cl-defun muki:smartparens-setup-strict-modes ()
    (seq-each
     (lambda (mode)
       (let ((hook (intern (format "%s-hook" (symbol-name mode)))))
         (add-hook hook #'smartparens-strict-mode)))
     muki:lisp-modes))

  (muki:smartparens-setup-strict-modes)


  ;; (sp-with-modes '(org-mode)
  ;;   ;; fix quotatin in org-mode
  ;;   (sp-local-pair "“" "”" :trigger "\""))

  ;; (set-face-attribute 'sp-pair-overlay-face nil
  ;;                     :background "#fdf6e3"
  ;;                     :foreground "#073642")

  (after 'diminish
      (after 'smartparens
          (diminish 'smartparens-mode " ⚖")))

  (smartparens-global-mode)
  ;; (smartparens-global-strict-mode t)
  ;; highlights matching pairs
  ;; (show-smartparens-global-mode t)

  )
