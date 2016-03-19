;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'dim
  (dim-minor-name 'isearch-mode " 🔎")
  (dim-minor-name 'view-mode " 👀" 'view)
  (dim-major-names
   '((calendar-mode             "📆")))
  (dim-minor-names
   '((visual-line-mode   " ↩")
     (auto-fill-function " ↵")
     (eldoc-mode         ""    eldoc)
     (whitespace-mode    " _"  whitespace)
     (paredit-mode       " ()" paredit)
     (helm-mode          " ⎈" helm))))

;;; init.el ends here
