;;; visual -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-visualstar ()
  (req 'evil-visualstar
    (advice-add 'evil-visualstar/begin-search-forward :after 'recenter)
    (advice-add 'evil-visualstar/begin-search-backward :after 'recenter)))

;;; visual.el ends here
