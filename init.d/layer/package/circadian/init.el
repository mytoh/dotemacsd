;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package circadian
    :defer 5
  :preface
  (cl-defun muki:pick-random (lst)
    (seq-elt lst
             (random (length lst))))
  :config
  ;; [[https://www.latlong.net/][Latitude and Longitude Finder on Map Get Coordinates]]
  (setq calendar-latitude 60.169856)
  (setq calendar-longitude 24.938379)
  (setq circadian-themes `((:sunrise . ,(muki:pick-random muki:favorite-themes))
                           ("10:00"  . ,(muki:pick-random muki:favorite-themes))
                           ("19:30"  . ,(muki:pick-random muki:favorite-themes))
                           (:sunset  . ,(muki:pick-random muki:favorite-themes))))
  (circadian-setup))

;;; init.el ends here
