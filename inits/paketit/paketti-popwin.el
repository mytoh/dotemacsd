;; popwin
(req 'popwin
     (setq display-buffer-function 'popwin:display-buffer)
     (setq popwin:special-display-config
           '(("*Warnings*") ("*Compile-Log*") ("*Help*")
             ("*Google Translate*")
             ("*eww bookmarks*")
             ("*Completions*" :noselect t)
             ("*guide-key*" :position bottom)
             ("*ag*" :noselect t) ("*diff*"))))

(provide 'paketti-popwin)
