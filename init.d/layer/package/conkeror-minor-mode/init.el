;;; init-conkeror-minor-mode -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


(liby 'conkeror-minor-mode
  (command (conkeror-minor-mode) "conkeror-minor-mode")

  (cl-defun muki:enable-conkeror-minor-mode ()
    (when (and (string-match-p "conkeror" (buffer-file-name))
             (string-match-p ".js" (buffer-file-name)))
      (conkeror-minor-mode 1)))

  (add-hook 'js-mode-hook #'muki:enable-conkeror-minor-mode)
  (add-hook 'js2-mode-hook #'muki:enable-conkeror-minor-mode)
  (add-hook 'js3-mode-hook #'muki:enable-conkeror-minor-mode)

  )

(provide 'paketti-conkeror-minor-mode)

;;; init-conkeror-minor-mode.el ends here
