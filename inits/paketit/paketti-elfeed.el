;;; paketti-elfeed.el -*- lexical-binding: t -*-

(pak 'elfeed
  (muki:define-global-key "l" 'elfeed)

  ;; Somewhere in your .emacs file
  (setq elfeed-feeds
        '("http://nullprogram.com/feed/"
          "http://www.terminally-incoherent.com/blog/feed/")))

(provide 'paketti-elfeed)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
