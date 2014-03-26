;; outshine
(pak 'outshine
     (add-hook 'outline-minor-mode-hook 'outshine-hook-function)

     ;; (defvar outline-minor-mode-prefix "\M-#")
     (add-hook 'emacs-lisp-mode-hook 'outline-minor-mode)
     (add-hook 'scheme-mode-hook 'outline-minor-mode))

(provide 'paketti-outshine)
