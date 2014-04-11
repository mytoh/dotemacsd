;; haskell-mode
(req 'haskell-mode
     (req 'haskell-cabal)
     ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
     (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
     )

(provide 'paketti-haskell-mode)
