
;; rainbow-mode

(liby 'rainbow-mode
  (command (rainbow-mode) "rainbow-mode")
  (hook 'emacs-lisp-mode-hook #'rainbow-mode)
  (hook 'lisp-mode-hook #'rainbow-mode)
  (hook 'scheme-mode-hook #'rainbow-mode)
  (hook 'javascript-mode-hook #'rainbow-mode)
  (hook 'css-mode-hook #'rainbow-mode)
  (hook 'js3-mode-hook #'rainbow-mode)
  (hook 'js-mode-hook #'rainbow-mode)
  (hook 'help-mode-hook #'rainbow-mode)
  (after 'diminish
      (after 'rainbow-mode
          (diminish 'rainbow-mode " ω"))))

(provide 'init-rainbow-mode)
