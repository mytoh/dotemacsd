;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'moonscript
  (command (moonscript-mode) "moonscript")
  (command (moonscript-repl-mode) "moonscript-repl")
  (mode "\\.moon\\'"  #'moonscript-mode)
  )

;;; init.el ends here
