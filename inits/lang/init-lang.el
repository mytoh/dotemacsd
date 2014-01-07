

;; (add-hook 'prog-mode-hook 'flyspell-prog-mode)

(defvar init-langs
  '(lang-lisp
    lang-elisp
    ;; lang-scheme
    lang-common-lisp
    kernel-mode
    lang-shell
    lang-cpp
    lang-c
    ))

(mapc 'require init-langs)

(provide 'init-lang)
