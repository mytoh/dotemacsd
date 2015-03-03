
(pak 'lua-mode
     (autoload 'lua-mode "lua-mode" "Lua editing mode." 'interactive)
     (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
     (add-to-list 'interpreter-mode-alist '("lua" . lua-mode)))

(provide 'paketti-lua-mode)
