;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'dim
  (dim-major-name 'scheme-mode "λ")
  (dim-major-name 'help-mode "🄷")
  (dim-minor-name 'isearch-mode " 🔎")
  (dim-minor-name 'view-mode " 👀" 'view)
  (dim-major-names
   '((emacs-lisp-mode           "EL")
     (emacs-lisp-byte-code-mode "EL-byte")
     (calendar-mode             "📆")))
  (dim-minor-names
   '((visual-line-mode   " ↩")
     (auto-fill-function " ↵")
     (eldoc-mode         ""    eldoc)
     (whitespace-mode    " _"  whitespace)
     (paredit-mode       " ()" paredit))))

;;; init.el ends here
