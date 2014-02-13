;;; config-face.el  -*- lexical-binding: t -*-
;;; faces

;;;; colour-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/inits/themes" )
(cond ((window-system)
       ;; make the fringe stand out from the background
       (setq solarized-distinct-fringe-background t)
       ;; make the modeline high contrast
       (setq solarized-high-contrast-mode-line t)
       ;; (load-theme 'gruvbox t)
       (load-theme 'gruvbox t))
      (t
       (setq solarized-degrade t)
       (setq solarized-termcolors 256)
       (defvar monokai-add-font-lock-keywords t)
       (load-theme 'moe-dark t)))


;;;; cursor shape
(add-to-list 'default-frame-alist '(cursor-type . hollow))
(set-cursor-color (mytoh:colour-hsl-to-hex 137 65 50))

;;;; terminal colors
;; (set-face-attribute 'term-color-red nil :foreground "#d55e00")
;; (set-face-attribute 'term-color-green nil :foreground "#009e73" )
;; (set-face-attribute 'term-color-yellow nil :foreground "#f8ec59" )
;; (set-face-attribute 'term-color-blue nil :foreground "#0072b2" )
;; (set-face-attribute 'term-color-magenta nil :foreground "#cc79a7" )
;; (set-face-attribute 'term-color-cyan nil :foreground  "#56b4e9")
;; (set-face-attribute 'term-color-white nil :foreground  "#efcfaf")
;; (set-face-attribute 'term-color-black nil :foreground  "#121212")



;; ;; transparent
;; ;; http://www.emacswiki.org/emacs/TransparentEmacs
;; (set-frame-parameter (selected-frame) 'alpha '(85 50))
;; (add-to-list 'default-frame-alist '(alpha 85 50))


(provide 'config-face)
