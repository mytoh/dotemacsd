;;; operator-comment -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-operator-comment ()
  (req 'evil-operator-comment
    (enable-mode global-evil-operator-comment-mode)))

(muki:init-evil-operator-comment)

;;; operator-comment.el ends here
