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
    ("helm-dictionary" "emacs-helm/helm-dictionary")
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



(req 'helm-dictionary
     (setq helm-dictionary-database (expand-file-name "dict/en-fi.ding"
                                                      user-emacs-directory)))

(req 'helm-ypv)

(provide 'config-vendle)
