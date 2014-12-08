;;; init-shackle -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'shackle
  ;; (setq display-buffer-function 'popwin:display-buffer)
  ;; (set-option shackle-rules
  ;;             '(("*Warnings*") ("*Compile-Log*")
  ;;               ("*Help*"
  ;;                :select t
  ;;                :reuse nil)
  ;;               ("*Backtrace*")
  ;;               ("*Google Translate*")
  ;;               ("*eww bookmarks*")
  ;;               ("*Completions*" :noselect t)
  ;;               ("*guide-key*" :position bottom)
  ;;               ("*Man" :regexp t :stick t)
  ;;               ("*ag*" :noselect t) ("*diff*")
  ;;               (compilation-mode :noselect t)
  ;;               (t :select t)))

  (set-option shackle-rules
              '((help-mode
                 :select t
                 :reuse nil)
                ("*Compile-Log*"
                 :select t
                 :reuse nil)
                (Man-mode
                 :select t
                 :reuse nil)
                ))
  (enable-mode shackle-mode))

(provide 'init-shackle)

;;; init-shackle.el ends here
