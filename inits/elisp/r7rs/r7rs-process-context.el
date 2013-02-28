 ;;; -*- coding: utf-8 -*-


(defun r7rs:add-process-context ()
  (r7rs:add-keywords
   'r7rs:syntax-face
   '((1 . command-line)
     (1 . emergency-exit)
     (1 . exit)
     (1 . get-environment-variable)
     (1 . get-environment-variables))))


(provide 'r7rs-process-context)
