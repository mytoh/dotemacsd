;;; init-elfeed.el -*- lexical-binding: t -*-

(req 'elfeed

  (muki:load "~/.elfeed-feeds")

  (muki:define-launcher-key "l" 'elfeed)

  ;; Somewhere in your .emacs file
  (set-option elfeed-feeds
              '("http://nullprogram.com/feed/"
                "http://www.terminally-incoherent.com/blog/feed/"))
  (set-option elfeed-feeds (append elfeed-feeds my-elfeed-additional-feeds))


  (defun xcowsay (message)
    (call-process "xcowsay" nil nil nil message))

  (defun elfeed-xcowsay ()
    (interactive)
    (let ((entry (elfeed-search-selected :single)))
      (xcowsay (elfeed-entry-title entry))))

  (muki:define-key elfeed-search-mode-map "x" #'elfeed-xcowsay)
  )

(provide 'init-elfeed)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
