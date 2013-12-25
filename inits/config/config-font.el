;;; config-font.el -*- lexical-binding: t -*-
;;;; font
(cl-defun font-existsp (font)
  "Check to see if the named FONT is available"
  (if (null (x-list-fonts font))
      nil t))

(cl-defun set-normal-font ()
  (cond ((eq window-system nil) nil)
        ((font-existsp "CosmicSansNeueMono")
         (set-face-attribute 'default nil :height 80 :font "CosmicSansNeueMono"))
        ((font-existsp "Inconsolata")
         (set-face-attribute 'default nil :height 90 :font "Inconsolata"))
        ((font-existsp "Droid Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "Droid Sans Mono"))
        ((font-existsp "Source Code Pro")
         (set-face-attribute 'default nil :height 90 :font "Source Code Pro"))
        ((font-existsp "Ricty")
         (set-face-attribute 'default nil :height 90 :font "Ricty"))
        ((font-existsp "DejaVu Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "DejaVu Sans Mono"))
        ((font-existsp "ProFont")
         (set-face-attribute 'default nil :height 80 :font "ProFont"))
        ((font-existsp "Bitstream Vera Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "Bitstream Vera Sans Mono"))
        ((font-existsp "Neep")
         (set-face-attribute 'default nil :height 80 :font "Neep"))))



;;; いろはにほへと　ちりぬるを
;;; わかよたれそ　　つねならむ
;;; うゐのおくやま　けふこえて
;;; あさきゆめみし　ゑひもせす
(cl-defun set-japanese-fontset-font ()
  (cond ((eq window-system nil) nil)
        ((font-existsp "Hiragino Mincho Pro")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :family "Hiragino Mincho Pro")))
        ((font-existsp "IPAGothic")
         (set-fontset-font nil 'japanese-jisx0208
                           '("IPAGothic" . "unicode-bmp")))
        ((font-existsp "Sazanami Gothic")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :family "Sazanami Gothic")))))



(cl-defun set-bitmap-font ()
  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-90-75-75-c-100-jisx0208.1983-0")
            (k10i "-misc-fixed-medium-i-normal--10-90-75-75-c-100-jisx0208.1983-0")
            (k10b "-misc-fixed-bold-r-normal--10-90-75-75-c-100-jisx0208.1983-0")
            (k10bi "-misc-fixed-bold-i-normal--10-90-75-75-c-100-jisx0208.1983-0")
            (a10 "-misc-fixed-medium-r-normal--10-90-75-75-c-50-iso8859-1")
            (a10i "-misc-fixed-medium-i-normal--10-90-75-75-c-50-iso8859-1")
            (a10b "-misc-fixed-bold-r-normal--10-90-75-75-c-50-iso8859-1")
            (a10bi "-misc-fixed-bold-i-normal--10-90-75-75-c-50-iso8859-1")
            (r10 "-misc-fixed-medium-r-normal--10-90-75-75-c-50-jisx0201.1976-0")
            (r10b "-misc-fixed-bold-r-normal--10-90-75-75-c-50-jisx0201.1976-0")
            (r10i "-misc-fixed-medium-i-normal--10-90-75-75-c-50-jisx0201.1976-0")
            (r10bi "-misc-fixed-bold-i-normal--10-90-75-75-c-50-jisx0201.1976-0")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1"))
    (create-fontset-from-fontset-spec
     "-misc-fixed-medium-r-normal--10-*-*-*-*-*-fontset-k10")

    (set-fontset-font "fontset-k10"
                      'ascii
                      a10)
    (set-fontset-font "fontset-k10"
                      'latin
                      a10)
    (set-fontset-font  "fontset-k10"
                       'japanese-jisx0208
                       k10)
    (set-fontset-font  "fontset-k10"
                       'katakana-jisx0201
                       r10)

    (set-fontset-font "fontset-k10"
                      'han
                      mplus-fxd)

    (set-default-font "fontset-k10")
    ))

;; (set-bitmap-font)

(set-normal-font)
;; (set-japanese-fontset-font)

(provide 'config-font)
