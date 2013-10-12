 ;;; -*- coding: utf-8 -*-

;;; plugin directory
(setq *user-emacs-vendor-directory* (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendor"))))

;;; plugins under vendor directory
;; github repositories
(cl-defun *my-vendor-packages* ()
  '(("emacs-powerline" "jonathanchu/emacs-powerline")
    ("nyan-mode" "TeMPOraL/nyan-mode")
    ("highlight-sexp" "daimrod/highlight-sexp")
    ("emux-el" "m2ym/emux-el")
    ("seijiseikana-el" "moriyamahiroshi/seijiseikana-el")
    ("eldoc-extension" "emacsmirror/eldoc-extension")
    ("mew" "emacsmirror/mew")
    ("navi2ch" "naota/navi2ch")
    ("outxxtra" "tj64/outxxtra")
    ("hyperplane-theme" "sabof/hyperplane-theme")
    ("zone-matrix" "ober/zone-matrix")
    ("emacs-highlight-unique-symbol" "hitode909/emacs-highlight-unique-symbol")
    ("flatline-el" "mytoh/flatline-el")
    ("fish-mode" "mytoh/fish-mode")
    ("helm-ypv" "mytoh/helm-ypv")
    ("auto-complete" "auto-complete/auto-complete")
    ;; ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk")
    ))

;; initialize vendor
(my-vendor-initialize)

;; install packages
(my-vendor-install-packages
 (*my-vendor-packages*)
 *user-emacs-vendor-directory*)


;; update plugins
;; (my-vendor-update-packages *user-emacs-vendor-directory*)

;; add to load-path
(add-subdirs-to-load-path *user-emacs-vendor-directory*)


;; (nyan-mode t)


;;(req 'emux
;; prefix C-c
;; "C-n" ' emux:term-next
;; "SPC" 'emux:term-next
;; "C-p"  'emux:term-previous
;; "C-t"   'emux:term-new
;; "A"      'emux:term-rename
;; "k"      'emux:term-kill
;; "d"      'emux:term-cd
;; "~"     'emux:term-sync
;;     )

;; highlight-sexp
;; (req 'highlight-sexp
;;     (add-hook 'lisp-mode-hook 'highlight-sexp-mode)
;;   (add-hook 'emacs-lisp-mode-hook 'highlight-sexp-mode)
;;   (add-hook 'scheme-mode-hook 'highlight-sexp)
;;   (setq hl-sexp-foreground-color nil)
;;   (setq hl-sexp-background-color "#1a1a1a"))


;; seijiseikana
(req 'seijiseikana)

;; eldoc-extension
(req 'eldoc-extension)

;; navi2ch
(req 'navi2ch
     (setq navi2ch-mona-enable 1)
     (setq navi2ch-ack-when-exit -1)
     (setq navi2ch-message-user-name ""))

;; flatline
(req 'flatline
     (flatline-mode 1))


;; hyperplane theme
(add-to-list 'custom-theme-load-path
             (expand-file-name (concat-path user-emacs-directory
                                            "vendor"
                                            "hyperplane-theme")))

;; fish-mode
(req 'fish-mode)

;; highlight unique symbol
;;(req 'highlight-unique-symbol
;;     (highlight-unique-symbol t))

;; zone matrix
;; (req 'zone-settings)

(req 'auto-complete-config
     (ac-config-default)
     (global-auto-complete-mode 1)

     (enable-option ac-dwim)
     (setq ac-auto-start 2)
     ;; (setq ac-delay 0.05)
     ;; (setq ac-quick-help-delay 0.5)
     ;; (setq ac-auto-show-menu 0.05)
     (setq ac-ignore-case nil)
     (setq ac-use-menu-map 1)
     (setq ac-use-comphist t)
     (enable-option ac-use-fuzzy)

     (set-face-attribute 'ac-selection-face nil
                         :background "#ab4223")
     (set-face-attribute 'ac-candidate-face nil
                         :foreground "#dfdfe1"
                         :background "#393939")

     (req 'ac-ja)
     (add-to-list 'ac-modes 'eshell-mode)
     ;; elisp mode
     (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
     )

(req 'helm-ypv)

(provide 'config-vendor)
