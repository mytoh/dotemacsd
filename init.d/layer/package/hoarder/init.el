;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'hoarder
  ;;;; hoarder keymap
  (muki:define-launcher-key "v u" 'hoarder-update)
  (muki:define-launcher-key "v k" 'hoarder-check)
  (muki:define-launcher-key "v c" 'hoarder-clean))

;;; init.el ends here
