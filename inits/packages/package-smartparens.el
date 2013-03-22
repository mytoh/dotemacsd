
(req 'smartparens
     (req 'smartparens-config)

     (smartparens-global-mode t)

     ;; highlights matching pairs
     (show-smartparens-global-mode t)

     ;;;;;;;;;;;;
     ;; keys
     (sp-use-paredit-bindings)
     ;; (sp-use-smartparens-bindings)

     ;; from wiki/Tips-and-tricks
     (defun my-wrap-with-paren (&optional arg)
       (interactive "p")
       (sp-select-next-thing-exchange arg)
       (execute-kbd-macro (kbd "(")))
     (define-key sp-keymap (kbd "M-(") 'my-wrap-with-paren)

     )


(provide 'package-smartparens)
