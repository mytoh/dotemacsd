;; eldoc
(req 'eldoc
     (setq eldoc-idle-dely 0.20)
     (setq eldoc-echo-area-use-multiline-p t)
     (add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
     (add-hook 'lisp-interaction-mode-hook 'eldoc-mode)
     (add-hook 'ielm-mode-hook 'eldoc-mode))

(provide 'config-eldoc)
