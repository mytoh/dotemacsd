;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'emux
  prefix C-c

  "C-n" ' emux:term-next
  "SPC" 'emux:term-next
  "C-p"  'emux:term-previous
  "C-t"   'emux:term-new
  "A"      'emux:term-rename
  "k"      'emux:term-kill
  "d"      'emux:term-cd
  "~"     'emux:term-sync
  )

;;; init.el ends here
