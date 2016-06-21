;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; [[https://www.youtube.com/watch?v=0mwwN0S1dnQ][Using Emacs 6 - Search (Swiper) - YouTube]]
(liby 'swiper
  (command (swiper) "swiper")
  (add-global-key "C-s" #'swiper)
  (after 'swiper
      (set-face-attribute 'swiper-match-face-1 nil
       :foreground "yellow"
       :inherit 'isearch-lazy-highlight-face)
    (set-face-attribute 'swiper-match-face-2 nil
                        :foreground "orange"
                        :inherit 'isearch)
    (set-face-attribute 'swiper-match-face-3 nil
                        :foreground "blue"
                        :inherit 'match)
    (set-face-attribute 'swiper-match-face-4 nil
                        :foreground "cyan"
                        :inherit 'isearch))
  )

;;; init.el ends here
