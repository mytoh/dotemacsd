;; eldoc
(req 'eldoc
     (setq eldoc-idle-dely 0.20)
     (setq eldoc-echo-area-use-multiline-p t)
     (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
     (add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
     (add-hook 'ielm-mode-hook 'turn-on-eldoc-mode))

(provide 'package-eldoc)
