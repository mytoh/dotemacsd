;; popwin
(req 'popwin
     (setq display-buffer-function 'popwin:display-buffer)
     (setq popwin:special-display-config
           '(("*Warnings*") ("*Compile-log*") ("*Help*") ("*Completions*" :noselect t)
             ("*ag*" :noselect t) ("*diff*")) ))

(provide 'package-popwin)
