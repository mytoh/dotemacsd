;; * faces
(progn

  ;; ** colour-theme
  (load-theme 'solarized-dark t)

  ;; cursor shape
  (add-to-list 'default-frame-alist '(cursor-type . hbar))
  (set-cursor-color "#00ff00")

  ;; terminal colors
  ;; (set-face-attribute 'term-color-red nil :foreground "#d55e00")
  ;; (set-face-attribute 'term-color-green nil :foreground "#009e73" )
  ;; (set-face-attribute 'term-color-yellow nil :foreground "#f8ec59" )
  ;; (set-face-attribute 'term-color-blue nil :foreground "#0072b2" )
  ;; (set-face-attribute 'term-color-magenta nil :foreground "#cc79a7" )
  ;; (set-face-attribute 'term-color-cyan nil :foreground  "#56b4e9")
  ;; (set-face-attribute 'term-color-white nil :foreground  "#efcfaf")
  ;; (set-face-attribute 'term-color-black nil :foreground  "#121212")

  ;; font
  (defun font-existsp (font)
    "Check to see if the named FONT is available"
    (if (null (x-list-fonts font))
        nil t))

  (defun set-normal-font ()
    (cond ((eq window-system nil) nil)
          ((font-existsp "Ricty")
           (set-face-attribute 'default nil :height 90 :font "Ricty"))
          ((font-existsp "Droid Sans")
           (set-face-attribute 'default nil :height 90 :font "Droid Sans"))
          ((font-existsp "Source Code Pro")
           (set-face-attribute 'default nil :height 80 :font "Source Code Pro"))
          ((font-existsp "DejaVu Sans Mono")
           (set-face-attribute 'default nil :height 80 :font "DejaVu Sans Mono"))
          ((font-existsp "ProFont")
           (set-face-attribute 'default nil :height 80 :font "ProFont"))
          ((font-existsp "Bitstream Vera Sans Mono")
           (set-face-attribute 'default nil :height 80 :font "Bitstream Vera Sans Mono"))
          ((font-existsp "Neep")
           (set-face-attribute 'default nil :height 80 :font "Neep"))))
  (set-normal-font)

  (defun set-japanese-fontset-font ()
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

  (set-japanese-fontset-font)

  ;; ;; transparent
  ;; ;; http://www.emacswiki.org/emacs/TransparentEmacs
  ;; (set-frame-parameter (selected-frame) 'alpha '(85 50))
  ;; (add-to-list 'default-frame-alist '(alpha 85 50))

  )

(provide 'config-face)
