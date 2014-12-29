;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'vendle
  ;;;; vendle keymap
  (muki:define-launcher-key "v u" 'vendle-update)
  (muki:define-launcher-key "v k" 'vendle-check)
  (muki:define-launcher-key "v c" 'vendle-clean))

;;; init.el ends here
