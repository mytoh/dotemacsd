;;; init-flyparens -*- lexical-binding: t -*-

;;; Code:

;; Recommended configuration for beginners
;; there is a similar package called `flylisp'

(liby 'flyparens
  (command (flyparens-mode) "flyparens")

  ;; Enabling the minor mode for all Lisp buffers
  (add-hook 'emacs-lisp-mode-hook #'flyparens-mode)
  (add-hook 'lisp-mode-hook #'flyparens-mode)
  (add-hook 'scheme-mode-hook #'flyparens-mode)
  (add-hook 'clojure-mode-hook #'flyparens-mode)

  ;; additional indication by the color of the text cursor (grey cursor if any mismatched paren)
  ;; (defun my-flyparens-function (position)
  ;;   (flyparens-default-function position)
  ;;   ;; (set-cursor-color (if position "grey" "black"))
  ;;   )
  ;; (setq flyparens-function
  ;;       #'my-flyparens-function)
  )

;;; init-flyparens.el ends here
