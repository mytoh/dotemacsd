;;; init-shackle -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'shackle
  ;; (setq display-buffer-function 'popwin:display-buffer)
  (set-option shackle-rules
              '(("*Warnings*") ("*Compile-Log*") ("*Help*") ("*Backtrace*")
                ("*Google Translate*")
                ("*eww bookmarks*")
                ("*Completions*" :noselect t)
                ("*guide-key*" :position bottom)
                ("*Man" :regexp t :stick t)
                ("*ag*" :noselect t) ("*diff*")
                (compilation-mode :noselect t)
                (t :select t)))
  (enable-mode shackle-mode))

(provide 'init-shackle)

;;; init-shackle.el ends here
