;;; init-multiple-cursors.el -*- lexical-binding: t; -*-

;; multiple-cursor
(req 'multiple-cursors

  (add-global-key "C-S-c C-S-c" #'mc/edit-lines
                  "C->" #'mc/mark-next-like-this
                  "C-<" #'mc/mark-previous-like-this
                  "C-c C-<" #'mc/mark-all-like-this))
