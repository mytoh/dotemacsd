;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; twittering-mode
(liby 'twittering-mode
  (command (twit twittering-icon-mode) "twittering-mode")
  (setq twittering-use-master-password t)
  (setq twittering-allow-insecure-server-cert t)
  (setq twittering-icon-mode t)
  (setq twittering-use-icon-storage t)
  (setq twittering-convert-fix-size 52)
  (setq twittering-display-remaining t)
  (setq twittering-timeline-header  "")
  (setq twittering-timeline-footer  "")
  (setq twittering-status-format
        "%i  %S, %RT{%FACE[bold]{%S}} %@  %FACE[shadow]{%p%f%L%r}\n%FOLD[        ]{%T}\n")
  ;; (after 'twittering-mode
  ;;     (twittering-icon-mode))

  (cl-defun muki:twittering-open-user (user)
    (interactive "sUser: ")
    (twit)
    (twittering-visit-timeline `(user ,user)))

  )

;;; init.el ends here
