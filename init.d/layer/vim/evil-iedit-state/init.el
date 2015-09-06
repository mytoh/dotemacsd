;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-iedit-state
  (command (evil-iedit-state evil-iedit-state/iedit-mode)
           "evil-iedit-state")
  (evil-leader/set-key "se" 'evil-iedit-state)
  (evil-leader/set-key "sE" 'evil-iedit-state/iedit-mode))

;;; init.el ends here
