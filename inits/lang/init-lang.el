

(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(defvar init-langs
  '(lang-lisp
    lang-elisp
    lang-scheme
    lang-common-lisp
    lang-csh
    kernel-mode
    lang-shell
    ))

(mapc #'require init-langs)

(provide 'init-lang)
