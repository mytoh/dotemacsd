;;; visual -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-visualstar ()
  (req 'evil-visualstar
    (global-evil-visualstar-mode)))

(muki:init-evil-visualstar)

;;; visual.el ends here
