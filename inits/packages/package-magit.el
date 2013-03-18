
(req 'magit

     ;; auto filll
     (add-hook 'magit-log-edit-mode-hook
               #'(lambda ()
                   (set (make-local-variable 'fill-column) 72)
                   (turn-on-auto-fill))))
