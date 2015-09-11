;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'elixir-mode
  (command (elixir-mode) "elixir-mode")
  (mode "\\.elixir2\\'"  #'elixir-mode))

;;; init.el ends here
