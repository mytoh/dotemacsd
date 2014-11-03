;; init-vendle.el -*- lexical-binding: t; -*-

;; * requires
(require 'muki)

;; * setup
(muki:add-to-load-path  "~/huone/projektit/emacs-vendle")

(req 'vendle
  ;; ** initialize vendle
  (cl-letf ((muki:vendle-directory
             (muki:user-emacs-directory (file-name-as-directory "vendle"))))
    (vendle:initialize muki:vendle-directory))

  (req 'init-vendle-registers)

  ;; ** install packages
  (vendle:check-packages)

  (vendle:turn-on-font-lock)

  ;; ** vendle keymap
  (muki:define-launcher-key "v u" 'vendle-update)
  (muki:define-launcher-key "v k" 'vendle-check)
  (muki:define-launcher-key "v c" 'vendle-clean)

  (liby 'helm-vendle
    (auto (helm-vendle) "helm-vendle")
    (muki:define-launcher-key "v l" 'helm-vendle))

  ;; ** package requires

  (req 'init-migemo)

  (req 'init-diminish)

  (req 'init-outshine)
  ;; (req 'navi-mode)
  (req 'init-org)
  ;; (req 'org-pretty-table
  ;;   (add-hook 'org-mode-hook
  ;;             'turn-on-org-pretty-table-mode))

  (req 'org-eldoc
    (org-eldoc-hook-setup))

  ;; update plugins
  ;; (vendle:update-packages)

  (liby 'scheme-keywords
    (auto (scheme-keywords-mode) "scheme-keywords")
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

  (req 'init-flatline)

  ;; fish-mode
  (req 'fish-mode)

  ;; zone matrix
  ;; (req 'zone-settings)

  (req 'debug-print
    (debug-print-init)
    (add-global-key "C-x C-e" 'debug-print-eval-last-sexp))

  ;; (req 'aozora-view)

  (req 'bookmark-extensions)

  (liby 'lehtifile-mode
    (autoload 'lehtifile-mode "lehtifile-mode")
    (mode "/Lehtifile\\'"  'lehtifile-mode))

  ;; ディレクトリ指定
  ;; ~/.emacs.d/ddskk/init is setting file
  (set-option skk-user-directory (muki:user-emacs-directory "ddskk/"))
  (req 'skk-autoloads
    ;; C-x C-j で skk モードを起動
    (add-global-key "C-x C-\\" 'skk-mode
                    "C-x C-j" 'skk-mode
                    ;; enable skk mode by pressing カタカナ/ひらがな key
                    [hiragana-katakana] 'skk-mode)
    ;; set default input method to skk
    ;; (setq default-input-method "japanese-skk")
    ;; .skk を自動的にバイトコンパイル
    (enable-option skk-byte-compile-init-file)

    ;; (req 'context-skk)
    )

  ;; (req 'undohist
  ;;      (undohist-initialize)
  ;;      (setq undohist-ignored-files '("\\.git/COMMIT_EDITMSG")))

  (req 'init-navi2ch)

  (req 'navi2ch-file-mode
    (setq navi2ch-file-open-with-shift-jis t))

  (liby 'rebuildfm
    (auto (rebuildfm) "rebuildfm"))

  ;; (req 'fuzzyjump
  ;;   (let ((map fuzzyjump-cmd-map))
  ;;     (define-key map (kbd "'") (lambda () (interactive) (fuzzyjump 1 0)))
  ;;     (define-key map (kbd ",") (lambda () (interactive) (fuzzyjump 1 1)))
  ;;     (define-key map (kbd ".") (lambda () (interactive) (fuzzyjump 1 2)))
  ;;     (define-key map (kbd "p") (lambda () (interactive) (fuzzyjump 1 3)))
  ;;     (define-key map (kbd "y") (lambda () (interactive) (fuzzyjump 1 4)))
  ;;     (define-key map (kbd "f") (lambda () (interactive) (fuzzyjump 1 5)))
  ;;     (define-key map (kbd "g") (lambda () (interactive) (fuzzyjump 1 6)))
  ;;     (define-key map (kbd "c") (lambda () (interactive) (fuzzyjump 1 7)))
  ;;     (define-key map (kbd "r") (lambda () (interactive) (fuzzyjump 1 8)))
  ;;     (define-key map (kbd "l") (lambda () (interactive) (fuzzyjump 1 9)))
  ;;     (define-key map (kbd "a") (lambda () (interactive) (fuzzyjump 2 0)))
  ;;     (define-key map (kbd "o") (lambda () (interactive) (fuzzyjump 2 1)))
  ;;     (define-key map (kbd "e") (lambda () (interactive) (fuzzyjump 2 2)))
  ;;     (define-key map (kbd "u") (lambda () (interactive) (fuzzyjump 2 3)))
  ;;     (define-key map (kbd "i") (lambda () (interactive) (fuzzyjump 2 4)))
  ;;     (define-key map (kbd "d") (lambda () (interactive) (fuzzyjump 2 5)))
  ;;     (define-key map (kbd "h") (lambda () (interactive) (fuzzyjump 2 6)))
  ;;     (define-key map (kbd "t") (lambda () (interactive) (fuzzyjump 2 7)))
  ;;     (define-key map (kbd "n") (lambda () (interactive) (fuzzyjump 2 9)))
  ;;     (define-key map (kbd ";") (lambda () (interactive) (fuzzyjump 3 0)))
  ;;     (define-key map (kbd "q") (lambda () (interactive) (fuzzyjump 3 1)))
  ;;     (define-key map (kbd "j") (lambda () (interactive) (fuzzyjump 3 2)))
  ;;     (define-key map (kbd "k") (lambda () (interactive) (fuzzyjump 3 3)))
  ;;     (define-key map (kbd "x") (lambda () (interactive) (fuzzyjump 3 4)))
  ;;     (define-key map (kbd "b") (lambda () (interactive) (fuzzyjump 3 5)))
  ;;     (define-key map (kbd "m") (lambda () (interactive) (fuzzyjump 3 6)))
  ;;     (define-key map (kbd "w") (lambda () (interactive) (fuzzyjump 3 7)))
  ;;     (define-key map (kbd "v") (lambda () (interactive) (fuzzyjump 3 9))))
  ;;   (fuzzyjump-mode t))

  (liby 'sos
    (auto (sos) "sos"))

  ;; (req 'eshell-alias)

  (req 'emacs-color-themes)

  (liby 'yon-chan
    (auto (yon-chan) "yon-chan"))

  ;; (req 'init-emms)
  (req 'init-emms-mpd)

  (req 'init-magit)

  (req 'init-company-mode)


  (req 'init-anzu)

  (req 'init-smartparens)

  (req 'init-haskell-mode)

  (liby 'itail
    (auto (itail) "itail"))

  (req 'quickrun
    (cl-defun quickrun-sc (start end)
      (interactive "r")
      (if mark-active
          (quickrun :start start :end end)
        (quickrun)))
    (add-global-key "<f5>" 'quickrun-sc)
    (after "popwin"
        (push '("*quickrun*") popwin:special-display-config))
    (quickrun-add-command "scheme/gosh-r7rs"
                          '((:command . "gosh")
                            (:exec    . "%c -r7 %s"))
                          :default "scheme"
                          :mode 'scheme-mode))

  (liby 'web-mode
    (auto (web-mode) "web-mode")
    (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

  (req 'init-paradox)

  (req 'spray)

  (req 'highlight-parentheses
    (global-highlight-parentheses-mode))

  (req 'go-mode)

  (req 'init-expand-region)

  (liby 'lua-mode
    (auto (lua-mode) "lua-mode" )
    (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
    (add-to-list 'interpreter-mode-alist '("lua" . lua-mode)))

  (liby 'rotate
    (auto (rotate-layout rotate-window) "rotate")
    (add-global-key "C-c C-SPC" 'rotate-layout
                    "C-c C-c C-SPC" 'rotate-window))

  (liby 'git-timemachine
    (auto (git-timemachine) "git-timemachine"))

  ;; (req 'smooth-scroll
  ;;      (smooth-scroll-mode nil))

  ;; (req 'yascroll
  ;;      (global-yascroll-bar-mode))

  (liby 'flappymacs
    (auto (flappymacs) "flappymacs"))

  (liby 'yamada
    (auto (yamada) "yamada")

    ;; (add-global-key "C-c C-c C-y" 'yamada-dancing)

    ;; (yamada-dancing 1) ;; or C-c C-c C-y (M-x yamada-dancing)
    ;; (yamada-dancing 5) ;; or C-u 5 C-c C-c C-y
    )

  ;; (req 'init-flyparens)

  (req 'css-eldoc
    (turn-on-css-eldoc))

  (liby 'web-beautify
    (auto (web-beautify-css-buffer) "web-beautify")
    (after 'css-mode
        (add-hook 'css-mode-hook
         (lambda ()
           (add-hook 'before-save-hook 'web-beautify-css-buffer t t)))))

  ;; (req 'moe-theme
  ;;   ;; org-modeで見出しごとにフォントの大きさを変える
  ;;   (setq moe-theme-resize-org-title
  ;;         '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
  ;;   ;; mode-lineをオレンジにする
  ;;   ;; (サポートしている他の色: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b)
  ;;   ;; (setq moe-theme-mode-line-color 'orange)
  ;;   (moe-dark)
  ;;   ;; あるいは (moe-light)
  ;;   )

  (req 'direx)

  (req 'init-e2wm)

  (req 'oniisama
    (imouto))

  ;; (req 'init-elnode)

  (liby 'eew
    (auto (eew) "eew"))

  (req 'init-sunrise-commander)

  (req 'init-tabbar)

  (req 'guide-key
    (setq guide-key/guide-key-sequence
          `("C-x r" "C-x 4" "C-q"
                    ,(if (boundp 'helm-command-prefix-key)
                         helm-command-prefix-key
                         "C-x c")
                    (org-mode "C-c C-x")))
    ;; (guide-key-mode 1)
    )

  (req 'guide-key-tip
    (setq guide-key-tip/enabled t))

  (req 'clojure-mode
    (req 'clojure-mode-extra-font-locking))

  (req 'init-rainbow-delimiters)

  (liby 'highlight-stages
    (auto (highlight-stages-mode)
          "highlight-stages")
    (add-hook 'emacs-lisp-mode-hook 'highlight-stages-mode)
    (add-hook 'scheme-mode-hook 'highlight-stages-mode))

  ;; (req 'indent-guide
  ;;   (add-hook 'emacs-lisp-mode-hook 'indent-guide-mode)
  ;;   (add-hook 'scheme-mode-hook 'indent-guide-mode)
  ;;   (set-option indent-guide-char "|"))

  (req 'init-elfeed)

  (liby 'lorem-ipsum
    (auto (lorem-ipsum) "lorem-ipsum"))

  ;; (liby 'slideview
  ;;       (add-hook 'image-mode-hook 'slideview-mode))

  ;; (req 'image+
  ;;      (imagex-auto-adjust-mode 1))

  (req 'init-flycheck)

  (req 'init-multiple-cursors)

  ;; (req 'comment-dwim-2
  ;;   (add-global-key  "M-;" 'comment-dwim-2))

  (req 'init-auto-highlight-symbol)

  (req 'sly-autoloads
    (setq inferior-lisp-program "sbcl"))

  (liby 'twittering-mode
    (auto (twit) "twittering-mode")
    (setq twittering-allow-insecure-server-cert t))

  (req 'coffee-mode)

  (liby 'artbollocks-mode
    (auto (artbollocks-mode) "artbollocks-mode")
    (add-hook 'text-mode-hook 'artbollocks-mode))

  ;; (req 'recycle
  ;;   (global-set-key (kbd "C-.") 'recycle)
  ;;   (global-set-key (kbd "C-,") 'recycle-2nd))

  ;; (req 'ids-edit
  ;;   (global-ids-edit-mode))

  ;; (req 'fill-column-indicator
  ;;   (add-hook 'prog-mode-hook 'fci-mode)
  ;;   ;; (add-hook 'text-mode-hook 'fci-mode)
  ;;   )

  (req 'color-theme-approximate
    (color-theme-approximate-on))

  (liby 'google-this
    (auto (google-this) "google-this"))

  (req 'golden-ratio
    (enable-mode golden-ratio-mode)
    (add-to-list 'golden-ratio-exclude-modes 'magit-status-mode))

  (liby 'nssh
    (auto (nssh nssh-all) "nssh"))

  (req 'init-popwin)

  (req 'init-tumblesocks)

  (req 'init-rainbow-mode)

  (req 'markdown-mode
    (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode)))

  (req 'init-google-translate)

  (liby 'charmap
    (auto (charmap) "charmap")
    (setq charmap-text-scale-adjust 2))

  (liby 'pt
    (auto (pt-regexp) "pt"))

  (liby 'switch-window
    (auto (switch-window) "switch-window")
    (global-set-key (kbd "C-x o") 'switch-window)
    (set-option switch-window-shortcut-style 'qwerty)
    (set-option switch-window-qwerty-shortcuts
                '("a" "o" "e" "u" "h" "t" "n" "s" "," "." "c" "r")))

  (liby 'olivetti
    (auto (olivetti-mode) "olivetti"))

  (liby 'emoji-cheat-sheet
    (auto (emoji-cheat-sheet emoji-cheat-sheet-copy-at-point)
          "emoji-cheat-sheet"))

  (req 'vimrc-mode)

  (req 'cat-mode)

  (req 'rich-minority
    (add-to-list 'rm-text-properties
                 '("Golden" 'face 'font-lock-variable-face))
    (rich-minority-mode 1))

  (liby 'highlight-defined
    (auto (highlight-defined-mode) "highlight-defined")
    (add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode))


  (liby 'httprepl
    (auto (httprepl) "httprepl"))

  (req 'aria2-mode
    (enable-option  aria2-add-evil-quirks))


  ;; (req 'vi-tilde-fringe
  ;;   (add-hook 'prog-mode-hook 'vi-tilde-fringe-mode))

  ;; (liby 'aggressive-indent
  ;;   (auto (aggressive-indent-mode) "aggressive-indent")
  ;;   (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode))

  ;; (req 'highlight-indentation
  ;;   (set-face-background 'highlight-indentation-face "#e3e3d3")
  ;;   (set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
  ;;   (highlight-indentation-current-column-mode))

  ;; (req 'js3-mode
  ;;   (add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))
  ;;   )

  ;; ** yasnippet
  ;; (req 'yasnippet
  ;;   (yas-global-mode 1))

  ;; ** evil
  (req 'init-evil)

  ;; ** helm
  (req 'init-helm)
  (req 'init-helm-ypv)
  (req 'init-helm-alku)
  (liby 'helm-project-buffer
    (auto (helm-project-buffer) "helm-project-buffer")
    (add-global-key "C-x b" 'helm-project-buffer))
  ;; (req 'init-helm-ag-r)
  (req 'init-helm-ag)
  (req 'init-helm-swoop)
  (req 'init-helm-helm-commands)
  (req 'init-wgrep-helm)
  (req 'helm-css-scss)
  (req 'helm-bibtex)


  ;;; util
  (cl-defun vendle-find-duplicate-packages ()
    (cl-remove-if-not
     (lambda (p)
       (cl-find-if (lambda (v) (equalp (vendle:package-name v)
                                  p))
                   *vendle-package-list*))
     (cl-mapcar
      (lambda (p) (format "%s" p))
      package-activated-list)))

  )

(provide 'init-vendle)

;;; init-vendle.el ends here
