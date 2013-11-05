
(req 'multi-term
     (setq multi-term-program "/bin/tcsh")

     (add-hook 'term-mode-hook
               (lambda ()
                 (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
                 (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

     (add-hook 'term-mode-hook
               (lambda ()
                 (setq show-trailing-whitespace nil)
                 ;; (autopair-mode -1)
                 ))

     (add-hook 'term-mode-hook
               '(lambda ()
                  ;; C-h を term 内文字削除にする
                  (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
                  ;; C-y を term 内ペーストにする
                  (define-key term-raw-map (kbd "C-y") 'term-paste)
                  ))
     )


(provide 'paketti-multi-term)
