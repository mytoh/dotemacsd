;;; matchit -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-matchit ()
  (req 'evil-matchit
    (enable-mode global-evil-matchit-mode)))

;;; matchit.el ends here
