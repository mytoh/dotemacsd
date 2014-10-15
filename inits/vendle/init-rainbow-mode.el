;; rainbow-mode
(req 'rainbow-mode
  (hook 'emacs-lisp-mode-hook 'rainbow-mode)
  (hook 'lisp-mode-hook 'rainbow-mode)
  (hook 'scheme-mode-hook 'rainbow-mode)
  (hook 'javascript-mode-hook 'rainbow-mode)
  (hook 'css-mode-hook 'rainbow-mode)
  (hook 'js3-mode-hook 'rainbow-mode)
  (hook 'js-mode-hook 'rainbow-mode)
  (after "diminish"
      (eval-after-load "rainbow-mode"
        '(diminish 'rainbow-mode " ω"))))

(provide 'init-rainbow-mode)
