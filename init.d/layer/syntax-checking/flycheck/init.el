;;; init-flycheck.el -*- lexical-binding: t; -*-

(liby 'flycheck
  (command (flycheck-mode global-flycheck-mode) "flycheck")
  ;; (add-hook 'emacs-startup-hook #'global-flycheck-mode)
  (set-option flycheck-check-syntax-automatically '(save new-line))

  (setq flycheck-emacs-lisp-load-path 'inherit)

  ;(add-hook 'flycheck-mode-hook
   ;         (lambda ()
    ;          (set-face-background 'flycheck-warning
     ;                              (color-lighten-name (face-background 'default) 15))))

  (add-hook 'emacs-lisp-mode-hook #'flycheck-mode)
  ;; (remove-hook 'emacs-lisp-mode-hook #'flycheck-mode)

  ;; perl
  ;; [[https://m0t0k1ch1st0ry.com/blog/2014/07/07/flycheck/][flycheck しながら Perl を描くときに · m0t0k1ch1st0ry]]
  (after 'flycheck
      (flycheck-define-checker perl-project-libs
        "A perl syntax checker."
        :command ("perl"
                  "-MProject::Libs lib_dirs => [qw(local/lib/perl5)]"
                  "-wc"
                  source-inplace)
        :error-patterns ((error line-start
                                (minimal-match (message))
                                " at " (file-name) " line " line
                                (or "." (and ", " (zero-or-more not-newline)))
                                line-end))
        :modes (cperl-mode)))

  ;; Project::Libs、便利である。で、これを cperl-mode-hook として登録する。

  (add-hook 'cperl-mode-hook
            (lambda ()
              (flycheck-mode t)
              (setq flycheck-checker 'perl-project-libs)))


  )

(liby 'flycheck-pos-tip
  (when (display-graphic-p (selected-frame))
    (after 'flycheck
      (req 'flycheck-pos-tip
        (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))))
