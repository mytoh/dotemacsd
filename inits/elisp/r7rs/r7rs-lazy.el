
(cl-defun r7rs:add-lazy ()
  (r7rs:add-keywords
   'r7rs:function-face
   '((1 . delay)
     (1 . force)
     (1 . promise?)

     (1 . delay-force)
     (1 . make-promise)

     )))

(provide 'r7rs-lazy)
