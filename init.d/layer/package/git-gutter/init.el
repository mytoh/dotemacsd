;; git-gutter
(req 'git-gutter
  (setq git-gutter:window-width 2)
  (setq git-gutter:modified-sign "*")
  (setq git-gutter:added-sign "+")
  (setq git-gutter:deleted-sign "-")
  (setq git-gutter:disabled-modes '(image-mode eshell-mode))

  ;; (add-hook 'emacs-lisp-mode-hook #'git-gutter-mode)

  ;; diff information is updated after command in git-gutter:update-commands executed.
  (add-to-list 'git-gutter:update-commands #'other-window)

  (after 'diminish
    (after 'git-gutter
      (diminish 'git-gutter-mode "")))
  )

(provide 'init-git-gutter)
