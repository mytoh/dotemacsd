;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; lua-mode
(liby 'lua-mode
  (auto (lua-mode) "lua-mode" )
  (mode "\\.lua$" 'lua-mode)
  (cl-pushnew '("lua" . lua-mode) interpreter-mode-alist))

;;; init.el ends here
