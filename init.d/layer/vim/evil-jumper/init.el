;;; jumper -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-jumper ()
  (req 'evil-jumper
    (turn-on-evil-jumper-mode)))

(muki:init-evil-jumper)

;;; jumper.el ends here
