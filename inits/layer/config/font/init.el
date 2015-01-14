;;; config-font.el -*- lexical-binding: t -*-
;;;; font
(cl-defun font-exists-p (font)
  "Check to see if the named FONT is available"
  (find-font (font-spec :name font)))

(cl-defun set-default-font-size ()
  (set-face-attribute 'default nil :height 75))

(set-default-font-size)

(cl-defun set-ascii-font ()
  (cond ((eq window-system nil) nil)
        ((font-exists-p "Comic Sans MS")
         (set-fontset-font nil 'ascii (font-spec :name  "Comic Sans MS" )))
        ((font-exists-p "-Comic Neue Angular")
         (set-fontset-font nil 'ascii (font-spec :name  "Comic Neue Angular"  :weight 'regular)))
        ((font-exists-p "Fira Mono")
         (set-fontset-font nil 'ascii (font-spec :name "Fira Mono" :weight 'normal)))
        ((font-exists-p "Ricty Diminished")
         (set-fontset-font nil 'ascii (font-spec :name "Ricty Diminished" :size 10 :weight 'regular)))
        ((font-exists-p "Liberation Mono")
         (set-fontset-font nil 'ascii (font-spec :name "Liberation Mono")))
        ((font-exists-p "CosmicSansNeueMono")
         (set-fontset-font nil 'ascii (font-spec :name "CosmicSansNeueMono")))
        ((font-exists-p "Inconsolata")
         (set-fontset-font nil 'ascii (font-spec :name "Inconsolata")))
        ((font-exists-p "Fantasque Sans Mono")
         (set-fontset-font nil 'ascii (font-spec :name  "Fantasque Sans Mono")))
        ((font-exists-p "Droid Sans Mono")
         (set-face-attribute 'ascii nil :height 80 :font "Droid Sans Mono"))
        ((font-exists-p "Source Code Pro")
         (set-face-attribute 'ascii nil :height 90 :font "Source Code Pro"))
        ((font-exists-p "Ricty")
         (set-face-attribute 'ascii nil :height 90 :font "Ricty"))
        ((font-exists-p "DejaVu Sans Mono")
         (set-face-attribute 'default nil :height 80 :font "DejaVu Sans Mono"))
        ((font-exists-p "ProFont")
         (set-face-attribute 'ascii nil :height 80 :font "ProFont"))
        ((font-exists-p "Bitstream Vera Sans Mono")
         (set-face-attribute 'ascii nil :height 80 :font "Bitstream Vera Sans Mono"))
        ((font-exists-p "Neep")
         (set-face-attribute 'ascii nil :height 80 :font "Neep"))))



;; いろはにほへと　ちりぬるを
;; わかよたれそ　　つねならむ
;; うゐのおくやま　けふこえて
;; あさきゆめみし　ゑひもせす
(cl-defun set-japanese-font ()
  (cond ((eq window-system nil) nil)
        ((font-exists-p "Ricty Diminished")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :name "Ricty Diminished" )))
        ((font-exists-p "Hiragino Mincho Pro")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :name "Hiragino Mincho Pro")))
        ((font-exists-p "IPAGothic")
         (set-fontset-font nil 'japanese-jisx0208
                           '("IPAGothic" . "unicode-bmp"))
         (set-fontset-font  nil 'kana (font-spec :name "IPAGothic" :size 10 :weight 'normal))
         (set-fontset-font nil 'han (font-spec :name "IPAGothic" :size 10 :weight 'normal)))
        ((font-exists-p "Sazanami Gothic")
         (set-fontset-font nil 'japanese-jisx0208
                           (font-spec :family "Sazanami Gothic")))))

(cl-defun set-symbol-font ()
  (if (font-exists-p "Symbola")
      (set-fontset-font nil 'symbol (font-spec :name "Symbola" :size 11))))

(cl-defun set-cyrillic-font ()
  (if (font-exists-p "CosmicSansNeueMono")
      (set-fontset-font nil 'cyrillic (font-spec :name "CosmicSansNeueMono"))))


(cl-defun set-naga10-font ()
  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-*-75-75-c-100-jisx0208.1983-0")
            (a10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-iso8859-1")
            (r10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (misc-iso "-misc-fixed-medium-r-normal--10-*-75-75-c-60-iso10646-1")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1")
            (symbola "-unknown-Symbola-normal-normal-semicondensed-*-*-*-*-*-*-0-iso10646-1")
            (fontset "fontset-naga10"))
    (create-fontset-from-ascii-font
     "-misc-fixed-medium-r-normal--10-*-*-*-*-*"
     nil
     "naga10")

    (cl-flet ((set (script font) (set-fontset-font fontset script font)))
      (set 'ascii       a10)
      (set 'latin       a10)
      (set 'japanese-jisx0208 k10)
      (set 'katakana-jisx0201       r10)
      (set 'kana k10)
      (set 'cjk-misc misc-iso)
      (set 'han k10)
      (set 'symbol symbola))

    (cl-pushnew `(font . ,fontset) default-frame-alist)
    ))


(cl-defun set-neep-font ()
  (cl-letf ((k10  "-misc-fixed-medium-r-normal--10-*-75-75-c-100-jisx0208.1983-0")
            (neep "-jmk-Neep-normal-normal-semicondensed-*-11-*-*-*-c-50-iso10646-1")
            (r10 "-misc-fixed-medium-r-normal--10-*-75-75-c-50-jisx0201.1976-0")
            (misc-iso "-misc-fixed-medium-r-normal--10-*-75-75-c-60-iso10646-1")
            (mplus-fxd "-mplus-fxd-normal-normal-normal-*-10-*-*-*-c-60-iso10646-1")
            (symbola "-unknown-Symbola-normal-normal-semicondensed-*-*-*-*-*-*-0-iso10646-1")
            (fontset "fontset-naga10"))
    (create-fontset-from-ascii-font
     "-misc-fixed-medium-r-normal--10-*-*-*-*-*"
     nil
     "naga10")

    (cl-flet ((set (script font) (set-fontset-font fontset script font)))
      (set 'ascii       neep)
      (set 'latin       neep)
      (set 'japanese-jisx0208 k10)
      (set 'katakana-jisx0201       r10)
      (set 'kana k10)
      (set 'cjk-misc misc-iso)
      (set 'han k10)
      (set 'symbol symbola))

    (cl-pushnew `(font . ,fontset) default-frame-alist)
    ))

(cl-defun muki:set-font (type)
  (cond
    ((cl-equalp type 'bitmap)
     ;; (set-ascii-font)
     ;; (set-naga10-font)
     (set-neep-font)
     ;; (set-symbol-font)
     (set-cyrillic-font)
     ;; (set-japanese-font)
     )
    ((cl-equalp type 'antialias)
     (set-ascii-font)
     ;; (set-naga10-font)
     (set-symbol-font)
     (set-cyrillic-font)
     (set-japanese-font))))

(muki:set-font 'bitmap)
