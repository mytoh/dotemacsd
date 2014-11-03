;;; init-conkeror-minor-mode -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


(liby 'conkeror-minor-mode
  (auto (conkeror-minor-mode) "conkeror-minor-mode")

  (cl-defun muki:enable-conkeror-minor-mode ()
    (when (string-match "conkeror" (buffer-file-name))
      (conkeror-minor-mode 1)))

  (mode "\\/*conkerorrc/*.js\\'"  'conkeror-minor-mode)

  ;; (add-hook 'js-mode-hook 'muki:enable-conkeror-minor-mode)
  ;; (add-hook 'js3-mode-hook 'muki:enable-conkeror-minor-mode)
  )

(provide 'paketti-conkeror-minor-mode)

;;; init-conkeror-minor-mode.el ends here
