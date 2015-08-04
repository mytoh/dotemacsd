;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-volatile-highlights ()
  (req 'volatile-highlights
    (enable-mode volatile-highlights-mode)))

(muki:init-volatile-highlights)

;;; init.el ends here
