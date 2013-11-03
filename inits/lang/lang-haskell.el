
;; Haskell

(defun my-haskell-mode-hook
  ;; (flymake-haskell-multi-load)
  (turn-on-haskell-indentation)
  )

(add-hook 'haskell-mode-hook
          #'my-haskell-mode-hook)

(provide 'lang-haskell)
