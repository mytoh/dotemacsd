;; popwin
(req 'popwin
  (setq display-buffer-function 'popwin:display-buffer)
  (setq popwin:special-display-config
        '(("*Warnings*") ("*Compile-Log*") ("*Help*") ("*Backtrace*")
          ("*Google Translate*")
          ("*eww bookmarks*")
          ("*Completions*" :noselect t)
          ("*guide-key*" :position bottom)
          ("*Man" :regexp t :stick t)
          ("*ag*" :noselect t) ("*diff*"))))
