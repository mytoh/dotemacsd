;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; switch-window
(liby 'switch-window
  (command (switch-window) "switch-window")
  (global-set-key (kbd "C-x o") 'switch-window)
  (set-option switch-window-shortcut-style 'qwerty)
  (set-option switch-window-qwerty-shortcuts
              '("a" "o" "e" "u" "h" "t" "n" "s" "," "." "c" "r")))

;;; init.el ends here
