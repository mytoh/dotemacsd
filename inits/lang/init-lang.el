
(defvar init-langs
  '(lang-lisp
    lang-elisp
    lang-scheme
    lang-common-lisp
    lang-csh
    kernel-mode
    ))

(mapc #'require init-langs)

(provide 'init-lang)
