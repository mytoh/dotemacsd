;;; init-vendle.el -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "~/huone/projektit/emacs-vendle"))

(req 'vendle

     ;; initialize vendle
     (cl-letf ((muki:vendle-directory (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendle")))))
       (vendle:initialize muki:vendle-directory))

     (vendle:register "jonathanchu/emacs-powerline")
     (vendle:register "TeMPOraL/nyan-mode")
     (vendle:register "daimrod/highlight-sexp")
     (vendle:register "m2ym/undohist-el")
     (vendle:register "m2ym/emux-el")
     (vendle:register "moriyamahiroshi/seijiseikana-el")
     (vendle:register "kenoss/debug-print")
     (vendle:register "emacsmirror/eldoc-extension")
     (vendle:register "emacsmirror/mew")
     (vendle:register "tj64/outxxtra")
     (vendle:register "ober/zone-matrix")
     (vendle:register "mytoh/fish-mode")
     (vendle:register "thierryvolpiatto/emacs-bmk-ext")
     (vendle:register "kawabata/aozora-view")
     (vendle:register-theme "sabof/hyperplane-theme")
     (vendle:register-theme "emacs-jp/replace-colorthemes")
     (vendle:register-theme "djcb/dream-theme")
     (vendle:register-theme "owainlewis/emacs-color-themes" '(:path "themes"))

     (cl-flet ((muki:add-project-root (path)
                                      (vendle:register-local (expand-file-name path "~/huone/projektit"))))
       (muki:add-project-root  "emacs-flatline")
       (muki:add-project-root "helm-ypv")
       (muki:add-project-root "company-scheme")
       (muki:add-project-root "emacs-scheme-keywords")
       (muki:add-project-root "emacs-lehtifile-mode")
       (muki:add-project-root "helm-alku")
       (muki:add-project-root "emacs-navi2ch-file-mode")
       (muki:add-project-root "emacs-eshell-session"))
     (when (file-directory-p "/usr/local/share/emacs/24.3/site-lisp/skk")
       (vendle:register-local "/usr/local/share/emacs/24.3/site-lisp/skk"))
     ;; (vendle:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

     (vendle:turn-on-font-lock)

     ;; install packages
     (vendle:check-packages)

     ;; keymap
     (muki:define-global-key (kbd "v u") 'vendle-update)

     ;; update plugins
     ;; (vendle:update-packages)

     (pak 'scheme-keywords
          (autoload 'scheme-keywords-mode "scheme-keywords")
          (add-hook 'scheme-mode-hook 'scheme-keywords-mode))

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
     ;; (req 'eldoc-extension)

     (req 'init-flatline)

     ;; fish-mode
     (req 'fish-mode)

     ;; zone matrix
     ;; (req 'zone-settings)


     (req 'init-helm-ypv)

     (with-eval-after-load 'company
       (req 'company-scheme
            (add-to-list 'company-backends 'company-scheme)))

     (req 'debug-print
          (debug-print-init)
          (define-key global-map (kbd "C-x C-e") 'debug-print-eval-last-sexp))

     ;; (req 'aozora-view)

     (req 'bookmark-extensions)

     (pak 'lehtifile-mode
          (autoload 'lehtifile-mode "lehtifile-mode")
          (add-to-list 'auto-mode-alist '("Lehtifile\\'" . lehtifile-mode)))

     ;; ディレクトリ指定
     ;; ~/.emacs.d/ddskk/init is setting file
     (set-option skk-user-directory "~/.emacs.d/ddskk/")
     (req 'skk-autoloads
          ;; C-x C-j で skk モードを起動
          (define-key global-map (kbd "C-x C-j") 'skk-mode)
          ;; enable skk mode by pressing カタカナ/ひらがな key
          (global-set-key [hiragana-katakana] 'skk-mode)
          ;; set default input method to skk
          (setq default-input-method "japanese-skk")
          ;; .skk を自動的にバイトコンパイル
          (enable-option skk-byte-compile-init-file))

     (req 'init-helm-alku)

     (req 'undohist
          (undohist-initialize)
          (setq undohist-ignored-files '("\\.git/COMMIT_EDITMSG")))

     (req 'navi2ch-file-mode)
     (setq navi2ch-file-open-with-shift-jis t)
     (modify-coding-system-alist 'file "\\.dat$" 'shift_jis)
     )


(provide 'init-vendle)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
