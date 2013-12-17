
(cl-defun r7rs:add-repl ()
  (r7rs:add-keywords
   'r7rs:function-face
   '((1 . interaction-environment))))

(provide 'r7rs-repl)
