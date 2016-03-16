;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-parentheses
  (command (highlight-parentheses-mode) "highlight-parentheses")
  (add-hook 'prog-mode-hook #'highlight-parentheses-mode)
  (set-option hl-paren-delay 0.2)
  (set-option hl-paren-background-colors
              '("Lightyellow4"))
  )

;;; init.el ends here
