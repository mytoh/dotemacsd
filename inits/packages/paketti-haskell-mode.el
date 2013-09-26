;; haskell-mode
(req 'haskell-mode
     (req 'haskell-cabal)
     (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
     (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))

(provide 'paketti-haskell-mode)
