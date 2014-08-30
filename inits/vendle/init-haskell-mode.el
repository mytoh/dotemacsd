;; haskell-mode
(req 'haskell-mode-autoloads
     (req 'haskell-cabal)
     ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
     (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
     (add-to-list 'Info-default-directory-list
                  (muki:user-emacs-directory (file-name-as-directory "vendle/haskell-mode")))

     (setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
     (add-to-list 'exec-path "~/.cabal/bin")
     (when (executable-find "hasktags")
       (enable-option haskell-tags-on-save)
       (add-hook 'haskell-mode-hook
                 (lambda () (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def-or-tag))))

     (enable-option haskell-process-suggest-remove-import-lines
                    haskell-process-auto-import-loaded-modules
                    haskell-process-log)

     (with-eval-after-load 'haskell-mode
       (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
       (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
       (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
       (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
       (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
       (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
       (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space))
     (with-eval-after-load 'haskell-cabal
       (define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
       (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-ode-clear)
       (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
       (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal))

     )

(provide 'init-haskell-mode)
