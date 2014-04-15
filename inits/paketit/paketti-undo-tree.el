
(req 'undo-tree
     (global-undo-tree-mode)
     ;; http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2014/03/C3F.html
     (eval-after-load "diminish"
       '(progn
         (eval-after-load "undo-tree"
           '(diminish 'undo-tree-mode " ↺")))))

(provide 'paketti-undo-tree)
