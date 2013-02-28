 ;;; -*- coding: utf-8 -*-
;;; faces
(progn

  ;; colour theme
  (load-theme 'molokai t)


  ;; font
  (defun font-existsp (font)
    "Check to see if the named FONT is available"
    (if (null (x-list-fonts font))
        nil t))

  (cond ((eq window-system nil) nil)
        ((font-existsp "Droid Sans")
         (set-face-attribute 'default nil :height 100 :font "Droid Sans"))
        ((font-existsp "Source Code Pro")
         (set-face-attribute 'default nil :height 80 :font "Source Code Pro"))
        ((font-existsp "DejaVu Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "DejaVu Sans Mono"))
        ((font-existsp "ProFont")
         (set-face-attribute 'default nil :height 80 :font "ProFont"))
        ((font-existsp "Bitstream Vera Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "Bitstream Vera Sans Mono"))
        ((font-existsp "Neep")
         (set-face-attribute 'default nil :height 80 :font "Neep"))
        )

  ;;(set-frame-font "-artwiz-lime-medium-r-normal--10-*-75-75-m-50-iso10646-1")
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'japanese-jisx0208
  ;;                   '("IPAGothic" . "unicode-bmp"))))

  ;;   ;; transparent
  ;;   ;; http://www.emacswiki.org/emacs/TransparentEmacs
  ;; (set-frame-parameter (selected-frame) 'alpha '(85 50))
  ;; (add-to-list 'default-frame-alist '(alpha 85 50))

  )

(provide 'config-face)
