
(req 'visual-regexp
     (define-key global-map (kbd "C-c r r") 'vr/replace)
     (define-key global-map (kbd "C-c r q") 'vr/query-replace))


(provide 'paketti-visual-regexp)
