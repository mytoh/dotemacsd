;;; config-font.el -*- lexical-binding: t -*-
;;;; font
(cl-defun font-exists-p (font)
  "Check to see if the named FONT is available"
  (find-font (font-spec :name font)))

(set-face-attribute 'default nil :height 80)

(cl-defun set-ascii-font ()
  (cond ((eq window-system nil) nil)
        ((font-exists-p "CosmicSansNeueMono")
         (set-fontset-font nil 'ascii (font-spec :name "CosmicSansNeueMono")))
        ((font-exists-p "Inconsolata")
         (set-fontset-font nil 'ascii (font-spec :name "Inconsolata")))
        ((font-exists-p "Droid Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "Droid Sans Mono"))
        ((font-exists-p "Source Code Pro")
         (set-face-attribute 'default nil :height 90 :font "Source Code Pro"))
        ((font-exists-p "Ricty")
         (set-face-attribute 'default nil :height 90 :font "Ricty"))
        ((font-exists-p "DejaVu Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "DejaVu Sans Mono"))
        ((font-exists-p "ProFont")
         (set-face-attribute 'default nil :height 80 :font "ProFont"))
        ((font-exists-p "Bitstream Vera Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "Bitstream Vera Sans Mono"))
        ((font-exists-p "Neep")
         (set-face-attribute 'default nil :height 80 :font "Neep"))))



;;; いろはにほへと　ちりぬるを
;;; わかよたれそ　　つねならむ
;;; うゐのおくやま　けふこえて
;;; あさきゆめみし　ゑひもせす
(cl-defun set-japanese-font ()
  (cond ((eq window-system nil) nil)
        ((font-exists-p "Hiragino Mincho Pro")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :name "Hiragino Mincho Pro")))
        ((font-exists-p "IPAGothic")
         (set-fontset-font nil 'japanese-jisx0208
                           '("IPAGothic" . "unicode-bmp"))
         (set-fontset-font  nil 'kana "IPAGothic")
         (set-fontset-font nil 'han "IPAGothic"))
        ((font-exists-p "Sazanami Gothic")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :family "Sazanami Gothic")))))

(cl-defun set-symbol-font ()
  (if (font-exists-p "Symbola")
      (set-fontset-font nil 'symbol (font-spec :name "Symbola" :size 13))))

(cl-defun set-cyrillic-font ()
  (if (font-exists-p "CosmicSansNeueMono")
      (set-fontset-font nil 'cyrillic (font-spec :name "CosmicSansNeueMono"))))


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
    (set-fontset-font  "fontset-k10"
                       'kana
                       r10)
    (set-fontset-font "fontset-k10"
                      'han
                      mplus-fxd)

    (set-default-font "fontset-k10")
    ))

;; (set-bitmap-font)

(set-ascii-font)
(set-symbol-font)
(set-cyrillic-font)
;; (set-japanese-font)

(provide 'config-font)
