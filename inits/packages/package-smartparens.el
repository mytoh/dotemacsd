
(req 'smartparens)
(req 'smartparens-config)

(smartparens-global-mode t)

;; highlights matching pairs
(show-smartparens-global-mode t)

;;;;;;;;;;;;
;; keys
(define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)

(define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

(define-key sp-keymap (kbd "C-M-d") 'sp-down-sexp)
(define-key sp-keymap (kbd "C-M-a") 'sp-backward-down-sexp)

(define-key sp-keymap (kbd "C-M-e") 'sp-up-sexp)
(define-key sp-keymap (kbd "C-M-u") 'sp-backward-up-sexp)

(define-key sp-keymap (kbd "C-M-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-M-p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "M-F") 'sp-forward-symbol)
(define-key sp-keymap (kbd "M-B") 'sp-backward-symbol)

(define-key sp-keymap (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
(define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

;; from wiki/Tips-and-tricks
(defun my-wrap-with-paren (&optional arg)
  (interactive "p")
  (sp-select-next-thing-exchange arg)
  (execute-kbd-macro (kbd "(")))
(define-key sp-keymap (kbd "M-(") 'my-wrap-with-paren)

;; paredit-forward-slurp-sexp
(define-key sp-keymap (kbd "C-)") 'sp-forward-slurp-sexp)
;; paredit-forward-barf-sexp
(define-key sp-keymap (kbd "C-}") 'sp-forward-barf-sexp)
;; paredit-backward-slurp-sexp
(define-key sp-keymap (kbd "C-(") 'sp-backward-slurp-sexp)
;; paredit-backward-barf-sexp
(define-key sp-keymap (kbd "C-{") 'sp-backward-barf-sexp)



(provide 'package-smartparens)


