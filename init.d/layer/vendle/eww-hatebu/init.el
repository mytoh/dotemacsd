;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'eww-hatebu
  (command (eww-hatebu-setup) "eww-hatebu")
  (with-eval-after-load 'eww
    (eww-hatebu-setup)
    (set-face-foreground 'eww-hatebu-bookmarks
                         "#38ebac")))

;;; init.el ends here
