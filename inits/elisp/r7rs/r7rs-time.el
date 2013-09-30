
(cl-defun r7rs:add-time ()
  (r7rs:add-keywords
   'r7rs:function-face
   '((1 . current-jiffy)
     (1 . jiffies-per-second)
     (1 . current-second))))

(provide 'r7rs-time)
