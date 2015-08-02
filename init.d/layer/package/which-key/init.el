;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'which-key
  (req 'popwin)
  (command (which-key-mode) "which-key")
  (setq which-key-max-description-length 32)
  (which-key-mode)
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
  )

;;; init.el ends here
