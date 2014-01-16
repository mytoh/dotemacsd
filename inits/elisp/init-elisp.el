
(add-subdirs-to-load-path (concat user-emacs-directory "inits/elisp"))

(req 'csh-mode
     (setq csh-mode-hook
           (lambda ()
             (font-lock-mode 1)             ;; font-lock the buffer
             (setq csh-indent 4)
             (setq csh-tab-always-indent t)
             (setq csh-match-and-tell t)
             (setq csh-align-to-keyword t)))
     (add-to-list 'auto-mode-alist '("\\.tcsh\\'" . csh-mode))
     (add-to-list 'auto-mode-alist '("\\.tcshrc\\'" . csh-mode)))

(cl-defun my-csh-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (mapcar (lambda (x)
                                     (symbol-name (cdr x)))
                                   keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords 'shell-script-mode
                            `((,keyword-regexp 1 ',face-name)))))

(req 'ninja-mode)

(req 'eshell-script
     (add-to-list 'auto-mode-alist '("\\.esh\\'" . eshell-script-mode)))

(req 'helm-alku
     (setq helm-alku-directory-list
           '(("video" . "~/huone/videot")
             ("sarjakuva" . "~/huone/kuvat/sarjakuva")
             ("lataukset" . "~/huone/lataukset")
             ("4chan" . "~/huone/kuvat/sivusto/4ch")
             ("lehti"  . "~/huone/projektit/lehti")
             ("flatline"  . "~/huone/projektit/emacs-flatline")
             ("company-scheme" . "~/huone/projektit/company-scheme")
             ("conkerorrc" . "~/huone/projektit/conkerorrc")
             ("dotemacsd" . "~/huone/projektit/dotemacsd")
             ("dotfiles" . "~/huone/projektit/dotfiles")
             ("helm-ypv" . "~/huone/projektit/helm-ypv")
             ("shellar" . "~/huone/projektit/shellar")
             ("shellar_custom" . "~/huone/projektit/shellar_custom")
             ("paketti" . "~/.emacs.d/inits/paketit")))
     (setq helm-alku-command-list
           '("v2c" "conkeror" "firefox" "pcmanfm" "thunar"))
     (mytoh:define-global-key (kbd "c")  'helm-alku-command)
     (mytoh:define-global-key (kbd "h") 'helm-alku))

(req 'vendle

     ;; initialize vendle
     (vendle:initialize (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendle"))))

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
     (when (file-executable-p "/usr/local/share/emacs/24.3/site-lisp/skk")
       (vendle:register-local "/usr/local/share/emacs/24.3/site-lisp/skk"))
     ;; (vendle:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

     (vendle:turn-on-font-lock)

     (req 'scheme-keywords
          (add-hook 'scheme-mode-hook 'scheme-keywords-mode))

     ;; install packages
     (vendle:install-packages)

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
     ;;   (setq hl-sexp-foreground-color nil)
     ;;   (setq hl-sexp-background-color "#1a1a1a"))


     ;; seijiseikana
     (req 'seijiseikana)

     ;; eldoc-extension
     (req 'eldoc-extension)

     ;; navi2ch
     ;; (req 'navi2ch
     ;;      (setq navi2ch-mona-enable 1)
     ;;      (setq navi2ch-ack-when-exit -1)
     ;;      (setq navi2ch-message-user-name ""))

     ;; flatline
     (req 'flatline
          (flatline-mode 1))

     ;; fish-mode
     (req 'fish-mode)

     ;; zone matrix
     ;; (req 'zone-settings)


     (pak 'helm-ypv
          (autoload 'helm-ypv "helm-ypv")
          (autoload 'helm-ypv-bookmarks "helm-ypv")
          (autoload 'helm-ypv-channels "helm-ypv")
          (setq helm-ypv-local-address "localhost:7144")

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
     (setq skk-user-directory "~/.emacs.d/ddskk/")
     (req 'skk-autoloads
          ;; C-x C-j で skk モードを起動
          (define-key global-map (kbd "C-x C-j") 'skk-mode)
          ;; .skk を自動的にバイトコンパイル
          (setq skk-byte-compile-init-file t)
          )

     )

(provide 'init-elisp)
