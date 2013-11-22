 ;;; -*- coding: utf-8 -*-

;;; plugin directory
(setq *user-emacs-vendle-directory* (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendle"))))

;;; plugins under vendle directory
;; github repositories
(cl-defun *my-vendle-packages* ()
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
    ("flatline-el" "mytoh/flatline-el")
    ("fish-mode" "mytoh/fish-mode")
    ("helm-ypv" "mytoh/helm-ypv")
    ("company-scheme" "mytoh/company-scheme")
    ;; ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk")
    ))

;; initialize vendle
(vendle:initialize)

;; install packages
(vendle:install-packages
 (*my-vendle-packages*)
 *user-emacs-vendle-directory*)

;; update plugins
;; (vendle:update-packages *user-emacs-vendle-directory*)

;; add to load-path
(add-subdirs-to-load-path *user-emacs-vendle-directory*)


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
             (expand-file-name "hyperplane-theme" *user-emacs-vendle-directory*))

;; fish-mode
(req 'fish-mode)

;; zone matrix
;; (req 'zone-settings)



(req 'helm-ypv
     (setq helm-ypv-local-address "peca:7144")
     (add-to-list 'helm-ypv-yp-urls '(dan1 "dandan626.web.fc2.com"))
     (add-to-list 'helm-ypv-yp-urls '(dan2 "www27.atpages.jp/dandan626"))

     (mytoh:define-global-key (kbd "y") #'helm-ypv)
     )


(req 'company-scheme
     (add-to-list 'company-backends 'company-scheme))

(provide 'config-vendle)
