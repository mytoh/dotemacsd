;; rainbow-mode
(pak 'rainbow-mode
     (add-hook 'emacs-lisp-mode-hook 'rainbow-mode)
     (add-hook 'lisp-mode-hook 'rainbow-mode)
     (add-hook 'scheme-mode-hook 'rainbow-mode)
     (add-hook 'javascript-mode-hook 'rainbow-mode)
     (add-hook 'css-mode-hook 'rainbow-mode)
     (add-hook 'js3-mode-hook 'rainbow-mode)
     (with-eval-after-load "diminish"
       (eval-after-load "rainbow-mode"
         '(diminish 'rainbow-mode " ω"))))

(provide 'paketti-rainbow-mode)
