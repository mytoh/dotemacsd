
;; Haskell

(defun muki:haskell-mode-hook
    ;; (flymake-haskell-multi-load)
    (turn-on-haskell-indentation)
  )

(add-hook 'haskell-mode-hook
          #'muki:haskell-mode-hook)
