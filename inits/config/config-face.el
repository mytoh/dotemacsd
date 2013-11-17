;; * faces

;; ** colour-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/inits/themes" )
(cond ((window-system)
       (load-theme 'solarized-dark t))
      (t
       (setq solarized-degrade t)
       (setq solarized-termcolors 256)
       (load-theme 'monokai t)
       ))



;; ** cursor shape
(add-to-list 'default-frame-alist '(cursor-type . hbar))
(set-cursor-color "#00ff00")

;; ** terminal colors
;; (set-face-attribute 'term-color-red nil :foreground "#d55e00")
;; (set-face-attribute 'term-color-green nil :foreground "#009e73" )
;; (set-face-attribute 'term-color-yellow nil :foreground "#f8ec59" )
;; (set-face-attribute 'term-color-blue nil :foreground "#0072b2" )
;; (set-face-attribute 'term-color-magenta nil :foreground "#cc79a7" )
;; (set-face-attribute 'term-color-cyan nil :foreground  "#56b4e9")
;; (set-face-attribute 'term-color-white nil :foreground  "#efcfaf")
;; (set-face-attribute 'term-color-black nil :foreground  "#121212")

;; ** font
(cl-defun font-existsp (font)
  "Check to see if the named FONT is available"
  (if (null (x-list-fonts font))
      nil t))

(cl-defun set-normal-font ()
  (cond ((eq window-system nil) nil)
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


;; (set-normal-font)
;; (set-japanese-fontset-font)

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

(set-bitmap-font)

;; ;; transparent
;; ;; http://www.emacswiki.org/emacs/TransparentEmacs
;; (set-frame-parameter (selected-frame) 'alpha '(85 50))
;; (add-to-list 'default-frame-alist '(alpha 85 50))

(provide 'config-face)
