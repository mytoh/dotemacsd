
;; rainbow-mode

(liby 'rainbow-mode
  (command (rainbow-mode) "rainbow-mode")
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
          (diminish 'rainbow-mode " ω")))
  (after 'rainbow-mode
      (validate-setq rainbow-html-colors t)
    (validate-setq rainbow-x-colors t)
    (validate-setq rainbow-latex-colors t)
    (validate-setq rainbow-ansi-colors t)
    (validate-setq rainbow-html-rgb-colors-font-lock-keywords
                   (cons `(,(concat "muki:color-hsl->hex \s*\\([0-9]\\{1,3\\}\\)"
                                    "\s*\\([0-9]\\{1,3\\}\\)"
                                    "\s*\\([0-9]\\{1,3\\}\\)")
                            (0 (rainbow-colorize-hsl)))
                         rainbow-html-rgb-colors-font-lock-keywords))
    ))

(provide 'init-rainbow-mode)
