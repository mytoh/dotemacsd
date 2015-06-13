;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(req 'real-auto-save
  (add-hook 'prog-mode-hook 'real-auto-save-mode)

  ;; Auto save interval is 10 seconds by default. You can change it:
  ;; (setq real-auto-save-interval 5)  ;; in seconds
  )


;;; init.el ends here
