;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; go-mode
(liby 'go-mode
  (command (go-mode) "go-mode")
  (mode "\\.go\\'" 'go-mode))

;;; init.el ends here
