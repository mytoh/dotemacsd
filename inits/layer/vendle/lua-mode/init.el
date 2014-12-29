;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; lua-mode
(liby 'lua-mode
  (auto (lua-mode) "lua-mode" )
  (mode "\\.lua$" 'lua-mode)
  (add-to-list 'interpreter-mode-alist '("lua" . lua-mode)))

;;; init.el ends here
