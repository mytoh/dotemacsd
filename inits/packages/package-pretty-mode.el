
(req 'pretty-mode
     (global-pretty-mode 1)
     (pretty-add-keywords 'scheme-mode
                          '(("(\\(and\\>\\)" . ?∧)
                            ))
     ;;;    (?∧ ("\\<And\\>"     emacs-lisp lisp python)
;;;        ("\\<andalso\\>" sml)
;;;        ("&&"            c c++ perl haskell))
;;;    (?∨ ("\\<or\\>"      emacs-lisp lisp)
;;;        ("\\<orelse\\>"  sml)
;;;        ("||"            c c++ perl haskell))
;;;    (?¬ ("\\<!\\>"       c c++ perl sh)
;;;        ("\\<not\\>"     lisp emacs-lisp scheme haskell sml))

     )


(provide 'package-pretty-mode)
