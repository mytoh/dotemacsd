;;; snipe -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-snipe ()
  (req 'evil-snipe
    (global-evil-snipe-mode)))

(provide 'init-evil-snipe)

;;; snipe.el ends here
