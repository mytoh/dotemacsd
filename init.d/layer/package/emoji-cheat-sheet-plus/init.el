;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(liby 'emoji-cheat-sheet-plus
  (command (emoji-cheat-sheet-plus-display-mode
            emoji-cheat-sheet-plus-buffer)
           "emoji-cheat-sheet-plus")
  ;; enabled emoji in buffer
  (add-hook 'org-mode-hook 'emoji-cheat-sheet-plus-display-mode)
  )

;;; init.el ends here
