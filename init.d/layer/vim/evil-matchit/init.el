;;; matchit -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-matchit ()
  (req 'evil-matchit
    (enable-mode global-evil-matchit-mode)))

(muki:init-evil-matchit)

;;; matchit.el ends here
