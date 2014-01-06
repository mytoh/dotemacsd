
(req 'guide-key
     (setq guide-key/guide-key-sequence
           '("C-x r" "C-x 4" "C-x c"
             (org-mode "C-c C-x")))
     (guide-key-mode 1))

(provide 'paketti-guide-key)
