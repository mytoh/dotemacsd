;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'mpv
  (org-add-link-type "mpv" #'mpv-play)
  (defun org-mpv-complete-link (&optional arg)
    (replace-regexp-in-string
     "file:" "mpv:"
     (org-file-complete-link arg)
     t t))
  (add-hook 'org-open-at-point-functions #'mpv-seek-to-position-at-point))

;;; init.el ends here
