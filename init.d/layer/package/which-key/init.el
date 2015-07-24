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
   (concat "SPC " ";") "M-x"))

;;; init.el ends here
