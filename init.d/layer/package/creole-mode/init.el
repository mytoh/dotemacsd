;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'creole-mode
  (command (creole-mode) "creole-mode")
  (mode "\\.creole\\'" #'creole-mode))

;;; init.el ends here
