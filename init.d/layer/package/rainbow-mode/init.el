
;; rainbow-mode

(liby 'rainbow-mode
  (command (rainbow-mode) "rainbow-mode")
  (setq rainbow-html-colors t)
  (setq rainbow-x-colors t)
  (setq rainbow-latex-colors t)
  (setq rainbow-ansi-colors t)
  (hook 'html-mode-hook #'rainbow-mode)
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
