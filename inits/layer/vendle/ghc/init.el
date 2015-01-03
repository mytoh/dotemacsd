;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'ghc
  (autoload 'ghc-init "ghc" nil t)
  (autoload 'ghc-debug "ghc" nil t)
  (add-hook 'haskell-mode-hook (lambda () (ghc-init)))

  ;; Or if you wish to display error each goto next/prev error,
  ;; set ghc-display-error valiable.

  (setq ghc-display-error 'minibuffer) ; to minibuffer
  )

;;; init.el ends here
