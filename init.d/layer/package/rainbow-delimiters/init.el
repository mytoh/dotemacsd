;; rainbow-delimiters

(liby 'rainbow-delimiters
  (command (rainbow-delimiters-mode) "rainbow-delimiters")
  (hook 'scheme-mode-hook       #'rainbow-delimiters-mode)
  (hook 'lisp-mode-hook         #'rainbow-delimiters-mode)
  (hook 'emacs-lisp-mode-hook   #'rainbow-delimiters-mode)
  (hook 'clojure-mode-hook   #'rainbow-delimiters-mode)
  (hook 'haskell-mode-hook #'rainbow-delimiters-mode)
  ;; (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

  ;; (after 'rainbow-delimiters
  ;;     (defface my-outermost-paren-face
  ;;       '((t (:weight bold)))
  ;;       "Face used for outermost parens.")

  ;;   (setq rainbow-delimiters-outermost-only-face-count 1)
  ;;   (set-face-attribute 'rainbow-delimiters-depth-1-face nil
  ;;                       :foreground 'unspecified
  ;;                       :inherit 'my-outermost-paren-face))


  ;; (after "rainbow-delimiters"
  ;;   (set-face-attribute 'rainbow-delimiters-depth-1-face nil :inherit 'font-lock-builtin-face)
  ;;   (set-face-attribute 'rainbow-delimiters-depth-2-face nil :foreground "dodger blue")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-3-face nil :foreground "orange")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-4-face nil :foreground "RoyalBlue3")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-5-face nil :foreground "darkgreen")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-6-face nil :foreground "brown")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-7-face nil :foreground "purple")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-8-face nil :foreground "khaki")
  ;;   (set-face-attribute 'rainbow-delimiters-depth-9-face nil :inherit 'font-lock-doc-face))
  '((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))
  )
