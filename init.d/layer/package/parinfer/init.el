;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package parinfer
  :ensure t
  :bind
  (("C-," . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
             ;; pretty-parens  ; different paren styles for different modes.
             evil           ; If you use Evil.
             ;; lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
             smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
             smart-yank))   ; Yank behavior depend on mode.
    (add-hook 'clojure-mode-hook #'parinfer-mode)
    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
    ))

;;; init.el ends here
