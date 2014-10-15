
(req 'smartparens
  (req 'smartparens-config)
  (enable-option sp-show-pair-from-inside)

     ;;;;;;;;;;;;
  ;; keys

  (muki:define-key sp-keymap "C-M-f"       'sp-forward-sexp) ;; navigation
  (muki:define-key sp-keymap "C-M-b"       'sp-backward-sexp)
  (muki:define-key sp-keymap "C-M-u"       'sp-backward-up-sexp)
  (muki:define-key sp-keymap "C-M-d"       'sp-down-sexp)
  (muki:define-key sp-keymap "C-M-p"        'sp-previous-sexp)
  (muki:define-key sp-keymap "C-M-a"        'sp-beginning-of-sexp)
  (muki:define-key sp-keymap "C-M-e" 'sp-end-of-sexp)
  (muki:define-key sp-keymap "C-M-n"       'sp-next-sexp)
  (muki:define-key sp-keymap "M-s"         'sp-splice-sexp) ;; depth-changing commands
  (muki:define-key sp-keymap "M-<up>"      'sp-splice-sexp-killing-backward)
  (muki:define-key sp-keymap "M-<down>"    'sp-splice-sexp-killing-forward)
  (muki:define-key sp-keymap "M-r"         'sp-splice-sexp-killing-around)
  (muki:define-key sp-keymap "C-)"         'sp-forward-slurp-sexp) ;; barf/slurp
  (muki:define-key sp-keymap "C-<right>"   'sp-forward-slurp-sexp)
  (muki:define-key sp-keymap "C-}"         'sp-forward-barf-sexp)
  (muki:define-key sp-keymap "C-<left>"    'sp-forward-barf-sexp)
  (muki:define-key sp-keymap "C-("         'sp-backward-slurp-sexp)
  (muki:define-key sp-keymap "C-M-<left>"  'sp-backward-slurp-sexp)
  (muki:define-key sp-keymap "C-{"         'sp-backward-barf-sexp)
  (muki:define-key sp-keymap "C-M-<right>" 'sp-backward-barf-sexp)
  (muki:define-key sp-keymap "M-S"         'sp-split-sexp) ;; misc

  ;; added
  (muki:define-key sp-keymap "M-f"   'sp-forward-whitespace)
  (muki:define-key sp-keymap "M-b"   'sp-backward-symbol)
  (muki:define-key sp-keymap "C-M-k" 'sp-kill-sexp)

  (muki:define-key sp-keymap "C-]"   'sp-select-next-thing-exchange)
  (muki:define-key sp-keymap "C-M-]" 'sp-select-next-thing)
  (muki:define-key sp-keymap "M-S" 'sp-split-sexp)
  (muki:define-key sp-keymap "M-J" 'sp-join-sexp)


  ;; from wiki/Tips-and-tricks
  (cl-defun muki:sp-wrap-with-paren (&optional arg)
    (interactive "p")
    (sp-select-next-thing-exchange arg)
    (execute-kbd-macro (kbd "(")))

  (muki:define-key sp-keymap "M-(" 'muki:sp-wrap-with-paren)


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
    (cl-mapc
     (lambda (mode)
       (let ((hook (intern (format "%s-hook" (symbol-name mode)))))
         (add-hook hook 'smartparens-strict-mode)))
     muki:lisp-modes))

  (muki:smartparens-setup-strict-modes)


  ;; (sp-with-modes '(org-mode)
  ;;   ;; fix quotatin in org-mode
  ;;   (sp-local-pair "“" "”" :trigger "\""))

  ;; (set-face-attribute 'sp-pair-overlay-face nil
  ;;                     :background "#fdf6e3"
  ;;                     :foreground "#073642")

  (after "diminish"
      (after "smartparens"
          (diminish 'smartparens-mode " ⚖")))

  (smartparens-global-mode)
  ;; (smartparens-global-strict-mode t)
  ;; highlights matching pairs
  ;; (show-smartparens-global-mode t)

  )


(provide 'init-smartparens)
