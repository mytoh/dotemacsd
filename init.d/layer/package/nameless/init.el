;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'nameless
  (command (nameless-mode nameless-mode-from-hook) "nameless")
  (add-hook 'emacs-lisp-mode-hook #'nameless-mode-from-hook)
  (after 'nameless
      (set-option nameless-prefix "¦")
    (set-option nameless-separator ":")
    (cl-labels ((add-alias (icon name)
                  (add-to-list 'nameless-global-aliases
                               (cons icon name)))))
    (add-alias "⚢" "sis")
    (add-alias "☠"  "hoarder")
    (add-alias "🍺" "muki")
    (add-alias "🍱" "colle")))

;;; init.el ends here
