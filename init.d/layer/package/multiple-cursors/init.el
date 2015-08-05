;;; init-multiple-cursors.el -*- lexical-binding: t; -*-

;; multiple-cursor
(liby 'multiple-cursors
  (command (mc/edit-lines
            mc/mark-next-like-this
            mc/mark-previous-like-this
            mc/mark-all-like-this)
           "multiple-cursors")

  (add-global-key "C-S-c C-S-c" #'mc/edit-lines
                  "C->" #'mc/mark-next-like-this
                  "C-<" #'mc/mark-previous-like-this
                  "C-c C-<" #'mc/mark-all-like-this))
