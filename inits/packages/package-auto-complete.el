;; auto-complete
(req 'auto-complete
     (req 'auto-complete-config)
     (ac-config-default)
     (global-auto-complete-mode 1)
     (enable-option ac-dwim)
     ;; (setq ac-delay 0.1)
     ;; (setq ac-auto-show-menu 0.1)
     ;; (setq ac-use-menu-map 1)
     ;; (enable-option ac-use-fuzzy)

     (set-face-attribute 'ac-selection-face nil
                         :background "#ab4223")
     (set-face-attribute 'ac-candidate-face nil
                         :foreground "#dfdfe1"
                         :background "#393939")

     ;; global
     (setq-default ac-sources '(ac-source-filename ac-source-words-in-same-mode-buffers))
     ;; elisp mode
     (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)

     ;; (req 'ac-ja)
     ;; (add-to-list 'ac-modes 'eshell-mode)

     )


(provide 'package-auto-complete)
