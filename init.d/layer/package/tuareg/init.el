;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'tuareg
  (command (tuareg-mode tuareg-run-ocaml ocamldebug) "tuareg")
  (mode "\\.ml[ip]?\\'"  #'tuareg-mode)
  (mode "\\.eliomi?\\'"  #'tuareg-mode)
  (after 'tuareg
      (dolist (ext '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"
                     ".annot" ".cmt" ".cmti"))
        (add-to-list 'completion-ignored-extensions ext))))


;;; init.el ends here
