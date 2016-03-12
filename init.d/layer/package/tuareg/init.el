;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'tuareg
  (command (tuareg-mode tuareg-run-ocaml ocamldebug) "tuareg")
  (mode "\\.ml[iylp]?"  #'tuareg-mode))


;;; init.el ends here
