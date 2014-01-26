;;; init-vendle.el -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "~/huone/projektit/emacs-vendle"))

(req 'vendle

     ;; initialize vendle
     (cl-letf ((my-vendle-directory (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendle")))))
       (vendle:initialize my-vendle-directory))

     (vendle:register "jonathanchu/emacs-powerline")
     (vendle:register "TeMPOraL/nyan-mode")
     (vendle:register "daimrod/highlight-sexp")
     (vendle:register "m2ym/emux-el")
     (vendle:register "moriyamahiroshi/seijiseikana-el")
     (vendle:register "kenoss/debug-print")
     (vendle:register "emacsmirror/eldoc-extension")
     (vendle:register "emacsmirror/mew")
     (vendle:register "naota/navi2ch")
     (vendle:register "tj64/outxxtra")
     (vendle:register "ober/zone-matrix")
     (vendle:register "mytoh/fish-mode")
     (vendle:register "thierryvolpiatto/emacs-bmk-ext")
     (vendle:register "kawabata/aozora-view")

     (vendle:register-theme "sabof/hyperplane-theme")
     (vendle:register-theme "emacs-jp/replace-colorthemes")

     (vendle:register-local "~/huone/projektit/emacs-flatline")
     (vendle:register-local "~/huone/projektit/helm-ypv")
     (vendle:register-local "~/huone/projektit/company-scheme")
     (vendle:register-local "~/huone/projektit/emacs-scheme-keywords")
     (vendle:register-local "~/huone/projektit/emacs-lehtifile-mode")
     (vendle:register-local "~/huone/projektit/helm-alku")
     (when (file-executable-p "/usr/local/share/emacs/24.3/site-lisp/skk")
       (vendle:register-local "/usr/local/share/emacs/24.3/site-lisp/skk"))
     ;; (vendle:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

     (vendle:turn-on-font-lock)

     (req 'scheme-keywords
          (add-hook 'scheme-mode-hook 'scheme-keywords-mode))

     ;; install packages
     (vendle:check)

     ;; keymap
     (mytoh:define-global-key (kbd "v u") 'vendle-update)

     ;; update plugins
     ;; (vendle:update-packages)


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
     ;;   (set-option hl-sexp-foreground-color nil)
     ;;   (set-option hl-sexp-background-color "#1a1a1a"))


     ;; seijiseikana
     (req 'seijiseikana)

     ;; eldoc-extension
     (req 'eldoc-extension)

     ;; navi2ch
     ;; (req 'navi2ch
     ;;      (setq navi2ch-mona-enable 1)
     ;;      (setq navi2ch-ack-when-exit -1)
     ;;      (setq navi2ch-message-user-name ""))

     (require 'init-flatline)

     ;; fish-mode
     (req 'fish-mode)

     ;; zone matrix
     ;; (req 'zone-settings)


     (pak 'helm-ypv
          (autoload 'helm-ypv "helm-ypv")
          (autoload 'helm-ypv-bookmarks "helm-ypv")
          (autoload 'helm-ypv-channels "helm-ypv")
          (set-option helm-ypv-local-address "localhost:7144")

          (with-eval-after-load 'helm-ypv
            (add-to-list 'helm-ypv-yp-urls '(dan1 "dandan626.web.fc2.com"))
            (add-to-list 'helm-ypv-yp-urls '(dan2 "www27.atpages.jp/dandan626")))

          (mytoh:define-global-key (kbd "y") 'helm-ypv))


     (with-eval-after-load 'company
       (req 'company-scheme
            (add-to-list 'company-backends 'company-scheme)))

     (req 'debug-print
          (debug-print-init)
          (define-key global-map (kbd "C-x C-e") 'debug-print-eval-last-sexp))

     ;; (req 'aozora-view)

     (req 'bookmark-extensions)

     (req 'lehtifile-mode
          (add-to-list 'auto-mode-alist '("Lehtifile\\'" . lehtifile-mode)))

     ;; ディレクトリ指定
     ;; ~/.emacs.d/ddskk/init is setting file
     (set-option skk-user-directory "~/.emacs.d/ddskk/")
     (req 'skk-autoloads
          ;; C-x C-j で skk モードを起動
          (define-key global-map (kbd "C-x C-j") 'skk-mode)
          ;; .skk を自動的にバイトコンパイル
          (enable-option skk-byte-compile-init-file))

     (req 'helm-alku
          (set-option helm-alku-directory-list
                      '(("video" . "~/huone/videot")
                        ("sarjakuva" . "~/huone/kuvat/sarjakuva")
                        ("lataukset" . "~/huone/lataukset")
                        ("4chan" . "~/huone/kuvat/sivusto/4ch")
                        ("futaba" . "~/huone/kuvat/sivusto/futaba")
                        ("paketti" . "~/.emacs.d/inits/paketit")))
          (helm-alku-directory-add-subdirectories "~/huone/projektit")
          (set-option helm-alku-command-list
                      '("v2c" "conkeror" "firefox" "pcmanfm" "thunar" "caja_no_desktop.sh"))
          (mytoh:define-global-key (kbd "c")  'helm-alku-command)
          (mytoh:define-global-key (kbd "h") 'helm-alku))

     )


(provide 'init-vendle)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
