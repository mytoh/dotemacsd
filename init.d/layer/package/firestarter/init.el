;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'firestarter
  (command (firestarter-mode) "firestarter")
  (defer 'firestarter)
  (after 'firestarter
      (firestarter-mode)))

;;; init.el ends here
