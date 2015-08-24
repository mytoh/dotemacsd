;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; rebuildfm
(liby 'rebuildfm
  (command (rebuildfm) "rebuildfm")
  (set-option rebuildfm-mp3-player "mpv")

  (cl-defun muki:rebuildfm--mp3-player-command (&rest args)
    (cl-letf ((cmd (car args))
              (url (cadr args)))
      (message "open %s with %s"
               cmd url)
      (list cmd url)))

  (advice-add 'rebuildfm--mp3-player-command :override
              #'muki:rebuildfm--mp3-player-command)

  )

;;; init.el ends here
