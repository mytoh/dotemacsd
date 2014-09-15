;;; init-multiple-cursors.el -*- lexical-binding: t; -*-

;; #* multiple-cursor
(req 'multiple-cursors

  (muki:global-set-key "C-S-c C-S-c" 'mc/edit-lines)

  (muki:global-set-key "C->" 'mc/mark-next-like-this)
  (muki:global-set-key "C-<" 'mc/mark-previous-like-this)
  (muki:global-set-key "C-c C-<" 'mc/mark-all-like-this))

;; * provide
(provide 'init-multiple-cursors)
