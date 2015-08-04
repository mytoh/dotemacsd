;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(cl-defun muki:init-evil-anzu ()
  (after 'anzu
      (req 'evil-anzu)))

(muki:init-evil-anzu)

;;; init.el ends here
