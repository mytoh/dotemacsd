;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; twittering-mode
(liby 'twittering-mode
  (command (twit twittering-icon-mode) "twittering-mode")
  (setq twittering-use-master-password t)
  (setq twittering-allow-insecure-server-cert t)
  (after 'twittering-mode
      (twittering-icon-mode))

  (cl-defun muki:twittering-open-user (user)
    (interactive "sUser: ")
    (twittering-visit-timeline `(user ,user)))

  )

;;; init.el ends here
