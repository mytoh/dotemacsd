;; rainbow-mode
(req 'rainbow-mode
     (add-hook 'emacs-lisp-mode-hook 'rainbow-mode)
     (add-hook 'lisp-mode-hook 'rainbow-mode)
     (add-hook 'scheme-mode-hook 'rainbow-mode))

(provide 'package-rainbow-mode)
