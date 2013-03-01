 ;;; -*- coding: utf-8 -*-

;; plugin directory
(setq *user-emacs-vendor-directory* (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendor"))))

;;; plugins under vendor directory
;; github repositories
(defun *my-vendor-packages* ()
  '(("emacs-powerline" "jonathanchu/emacs-powerline")
    ("nyan-mode" "TeMPOraL/nyan-mode")
    ("highlight-sexp" "daimrod/highlight-sexp")
    ("emux-el" "m2ym/emux-el")
    ("auto-highlight-symbol-mode" "mitsuo-saito/auto-highlight-symbol-mode")
    ("helm-delicious" "emacs-helm/helm-delicious")
    ("seijiseikana-el" "moriyamahiroshi/seijiseikana-el")
    ("highlight-cl" "emacsmirror/highlight-cl")
    ("eldoc-extension" "emacsmirror/eldoc-extension")
    ("navi2ch" "naota/navi2ch")
    ("helm-ag" "syohex/emacs-helm-ag")
    ;; ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk")
    ))


;; install packages
(my-vendor-install-packages
 (*my-vendor-packages*))


;; update plugins
;;(my-vendor-update-packages *user-emacs-vendor-directory*)

;; add to load-path
(add-subdirs-to-load-path *user-emacs-vendor-directory*)


;; (nyan-mode t)


(req 'emux
     ;; prefix C-c
     ;; "C-n" ' emux:term-next
     ;; "SPC" 'emux:term-next
     ;; "C-p"  'emux:term-previous
     ;; "C-t"   'emux:term-new
     ;; "A"      'emux:term-rename
     ;; "k"      'emux:term-kill
     ;; "d"      'emux:term-cd
     ;; "~"     'emux:term-sync
     )

;; highlight-sexp
;; (req 'highlight-sexp
;;     (add-hook 'lisp-mode-hook 'highlight-sexp-mode)
;;   (add-hook 'emacs-lisp-mode-hook 'highlight-sexp-mode)
;;   (add-hook 'scheme-mode-hook 'highlight-sexp)
;;   (setq hl-sexp-foreground-color nil)
;;   (setq hl-sexp-background-color "#1a1a1a"))

;; auto-highlight-symbol-mode
(req 'auto-highlight-symbol
     (global-auto-highlight-symbol-mode t))

;; highlight-cl
(req 'highlight-cl
     (add-hook 'emacs-lisp-mode-hook 'highlight-cl-add-font-lock-keywords)
     (add-hook 'lisp-interaction-mode-hook 'highlight-cl-add-font-lock-keywords))

;; stumpwm
(req 'stumpwm-mode)

;; helm-delicious
(req 'helm-delicious
     (req 'auth-source
          (if (file-exists-p "~/.authinfo.gpg")
              (setq auth-sources '((:source "~/.authinfo.gpg" :host t :protocol t)))
            (setq auth-sources '((:source "~/.authinfo" :host t :protocol t))))))

;; seijiseikana
(req 'seijiseikana)

;; eldoc-extension
(req 'eldoc-extension)

;; navi2ch
(req 'navi2ch
     ;; use mona font
     (setq navi2ch-mona-enable 1))

;; helm-ag
(req 'helm-ag
     )

(provide 'config-vendor)
