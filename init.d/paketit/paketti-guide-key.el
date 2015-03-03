
(req 'guide-key
     (setq guide-key/guide-key-sequence
           `("C-x r" "C-x 4" "C-q"
                     ,(if (boundp 'helm-command-prefix-key)
                          helm-command-prefix-key
                          "C-x c")
                     (org-mode "C-c C-x")))
     (guide-key-mode 1))

(provide 'paketti-guide-key)
