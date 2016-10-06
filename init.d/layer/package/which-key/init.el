;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'which-key
  (req 'popwin)
  (command (which-key-mode which-key-setup-side-window-bottom)
           "which-key")

  (which-key-setup-side-window-bottom)
  (which-key-mode)

  (after 'which-key
    (validate-setq which-key-max-description-length 32)
    ;; (setq which-key-idle-delay 0.01)
    ;; (setq which-key-idle-secondary-delay 0.01)
    (validate-setq which-key-allow-evil-operators t)
    (validate-setq which-key-allow-imprecise-window-fit t)
    (validate-setq which-key-allow-evil-operators t)
    (which-key-add-key-based-replacements
      "SPC ?" "show keybindings"
      "SPC u" "universal arg"
      "SPC m" "major mode cmds"
      (concat "SPC " ";") "M-x"
      (concat "SPC" " m")    "major mode commands")

    (cl-letf ((new-descriptions
               ;; being higher in this list means the replacement is applied later
               '(("mesh:\\(.+\\)" . "\\1")
                 ("helm-descbinds" . "show keybindings")
                 ("universal-argument" . "universal arg")
                 ("er/expand-region" . "expand region")
                 ("helm-apropos" . "apropos"))))
      (seq-doseq (nd new-descriptions)
        ;; ensure the target matches the whole string
        (cl-pushnew (cons (concat "\\`" (car nd) "\\'") (cdr nd))
                    which-key-description-replacement-alist)))

    ;; [[http://git.savannah.gnu.org/cgit/emacs.git/diff/lisp/window.el?id=b8fd71d5709650c1aced92c772f70595c51881d2][emacs.git - Emacs source repository]]
    ;;
    ;;   -  ;; No major window exists on this side, make one.
    ;;   -  (display-buffer-in-major-side-window buffer side slot alist))
    ;; +    ;; No major side window exists on this side, make one.
    ;; +    (window--make-major-side-window buffer side slot alist))
    (when (version<= "26.0.50.1" emacs-version)
      (defalias 'display-buffer-in-major-side-window
        #'window--make-major-side-window))

    ))

;;; init.el ends here
