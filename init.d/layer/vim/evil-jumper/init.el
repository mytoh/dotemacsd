;;; jumper -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-jumper ()
  (req 'evil-jumper
    (enable-option evil-jumper-auto-center)))

(muki:init-evil-jumper)

;;; jumper.el ends here
