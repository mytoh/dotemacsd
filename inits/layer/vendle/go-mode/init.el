;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; go-mode
(liby 'go-mode
  (auto (go-mode) "go-mode")
  (mode "\\.go\\'" 'go-mode))

;;; init.el ends here
