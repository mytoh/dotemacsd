;; haskell-mode
(liby 'haskell-mode-autoloads
  (defery 'haskell-mode-autoloads)
  (after 'haskell-mode-autoloads
      (req 'haskell-cabal)
    ;; (add-hook 'haskell-mode-hook #'turn-on-haskell-doc-mode)
    (add-hook 'haskell-mode-hook #'turn-on-haskell-indent)
    (cl-pushnew (locate-user-emacs-file "hoarder/haskell-mode")
                Info-default-directory-list)

    (setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
    (cl-pushnew "~/.cabal/bin" exec-path)
    (when (executable-find "hasktags")
      (enable-option haskell-tags-on-save)
      (add-hook 'haskell-mode-hook
                (clambda () (define-key haskell-mode-map (kbd "M-.") #'haskell-mode-jump-to-def-or-tag))))

    (enable-option haskell-process-suggest-remove-import-lines
                   haskell-process-auto-import-loaded-modules
                   haskell-process-log)

    (after 'haskell-mode
        (define-key haskell-mode-map (kbd "C-c C-l") #'haskell-process-load-or-reload)
      (define-key haskell-mode-map (kbd "C-`") #'haskell-interactive-bring)
      (define-key haskell-mode-map (kbd "C-c C-n C-t") #'haskell-process-do-type)
      (define-key haskell-mode-map (kbd "C-c C-n C-i") #'haskell-process-do-info)
      (define-key haskell-mode-map (kbd "C-c C-n C-c") #'haskell-process-cabal-build)
      (define-key haskell-mode-map (kbd "C-c C-n c") #'haskell-process-cabal)
      (define-key haskell-mode-map (kbd "SPC") #'haskell-mode-contextual-space))

    (after 'haskell-cabal
        (define-key haskell-cabal-mode-map (kbd "C-`") #'haskell-interactive-bring)
      (define-key haskell-cabal-mode-map (kbd "C-c C-k") #'haskell-interactive-ode-clear)
      (define-key haskell-cabal-mode-map (kbd "C-c C-c") #'haskell-process-cabal-build)
      (define-key haskell-cabal-mode-map (kbd "C-c c") #'haskell-process-cabal)))

  )
