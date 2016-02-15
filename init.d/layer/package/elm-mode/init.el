;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'elm-mode
  (command (elm-mode) "elm-mode")
  (mode "\\.elm\\'" #'elm-mode))

;;; init.el ends here
