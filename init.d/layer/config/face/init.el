;;; config-face.el  -*- lexical-binding: t -*-

;;; faces
;;;; colour-theme
(cl-defun muki:load-theme ()
  (cl-pushnew (locate-user-emacs-file "init.d/themes")
              custom-theme-load-path)
  (cond ((window-system)
         ;; make the fringe stand out from the background
         (enable-option solarized-distinct-fringe-background)
         ;; make the modeline high contrast
         (setq solarized-high-contrast-mode-line t)
         ;; (load-theme 'gruvbox t)
         (load-theme muki:x-theme 'no-confirm))
        (t
         (setq solarized-degrade t)
         (setq solarized-termcolors 256)
         (defvar monokai-add-font-lock-keywords t)
         (load-theme muki:term-theme 'no-confirm))))
(add-hook 'emacs-startup-hook #'muki:load-theme)
;;(add-to-list 'before-make-frame-hook #'muki:load-theme)

;;;; cursor shape
(cl-pushnew '(cursor-type . box) default-frame-alist)
(set-cursor-color (muki:colour-hsl-to-hex 127 55 39))

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
