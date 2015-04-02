;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'hi2
  (command (turn-on-hi2) "hi2")
  (add-hook 'haskell-mode-hook #'turn-on-hi2))

;;; init.el ends here
