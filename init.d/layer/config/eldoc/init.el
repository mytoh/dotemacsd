;; eldoc
(req 'eldoc
  (validate-setq eldoc-idle-dely 0.3)
  (validate-setq eldoc-echo-area-use-multiline-p t)
  (hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (hook 'lisp-interaction-mode-hook #'eldoc-mode)
  (hook 'ielm-mode-hook #'eldoc-mode))
