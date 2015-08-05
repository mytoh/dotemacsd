;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'js2-mode
  (command (js2-mode) "js2-mode")
  (mode "\\.js\\'"  #'js2-mode))

;;; init.el ends here
