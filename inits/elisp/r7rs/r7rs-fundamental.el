 ;;; -*- coding: utf-8; lexical-binding: t -*-


(defun r7rs:add-fundamental ()
  (r7rs:add-keywords
   'r7rs:font-lock-scheme-syntax-face
   '((2 . library)
     (2 . define-library)
     (0 . export)
     (0 . import)
     (0 . except)
     (0 . only)
     (0 . rename)
     (0 . prefix)
     (0 . srfi))))


(provide 'r7rs-fundamental)
