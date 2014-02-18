
(pak 'conkeror-minor-mode
     (cl-defun muki:enable-conkeror-minor-mode ()
       (when (string-match "conkeror" (buffer-file-name))
         (conkeror-minor-mode 1)))

     (add-hook 'js-mode-hook 'muki:enable-conkeror-minor-mode)
     (add-hook 'js3-mode-hook 'muki:enable-conkeror-minor-mode)
     )

(provide 'paketti-conkeror-minor-mode)
