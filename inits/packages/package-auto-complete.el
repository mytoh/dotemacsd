;; auto-complete
(req 'auto-complete-config
     (ac-config-default)
     (global-auto-complete-mode 1)
     (setq ac-dwim 1)
     ;; (setq ac-delay 0.1)
     ;; (setq ac-auto-show-menu 0.1)
     (setq ac-use-menu-map 1)
     ;; (setq ac-use-fuzzy 1)

     (set-face-attribute 'ac-selection-face nil
                         :background "#ab4223")
     (set-face-attribute 'ac-candidate-face nil
                         :foreground "#dfdfe1"
                         :background "#393939")

     (req 'ac-ja)
     (add-to-list 'ac-modes 'eshell-mode)
     ;; elisp mode
     (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)


     ;; c mode
     ;; (req 'auto-complete-clang
     ;;      (defun my-ac-c-mode-setup ()
     ;;        (setq ac-sources (append '(ac-source-clang as-source-yasnippet) as-sources)))
     ;;      (add-hook 'c-mode-hook
     ;;                #'(lambda ()
     ;;                    (my-ac-c-mode-setup))))

     )


(provide 'package-auto-complete)
