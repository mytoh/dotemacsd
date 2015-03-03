;; eldoc
(req 'eldoc
  (set-option eldoc-idle-dely 0.20)
  (set-option eldoc-echo-area-use-multiline-p t)
  (hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (hook 'lisp-interaction-mode-hook #'eldoc-mode)
  (hook 'ielm-mode-hook #'eldoc-mode))
