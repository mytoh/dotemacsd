;; init-vendle.el -*- lexical-binding: t; -*-

;;;  requires
(require 'muki)

;;;  setup
(muki:add-to-load-path  "~/huone/projektit/emacs-vendle")

(req 'vendle
  ;;;; initialize vendle
  (cl-letf ((muki:vendle-directory
             (muki:user-emacs-directory (file-name-as-directory "vendle"))))
    (vendle:initialize muki:vendle-directory))

  (req 'init-vendle-registers)

  ;;;; install packages
  (vendle:check-packages)

  (vendle:turn-on-font-lock)

  ;; update plugins
  ;; (vendle:update-packages)

  ;;;; vendle keymap
  (muki:define-launcher-key "v u" 'vendle-update)
  (muki:define-launcher-key "v k" 'vendle-check)
  (muki:define-launcher-key "v c" 'vendle-clean)

  (liby 'helm-vendle
    (auto (helm-vendle) "helm-vendle")
    (muki:define-launcher-key "v l" 'helm-vendle))

  ;;;; package requires

    ;;;;; migemo
  (req 'init-migemo)

    ;;;;; diminish
  (req 'init-diminish)

    ;;;; org
    ;;;;; outshine
  (req 'init-outshine)

    ;;;;; navi
  ;; (req 'navi-mode)

  ;;;;; org-autolist
  (liby 'org-autolist
    (auto (org-autolist-mode) "org-autolist")
    (add-hook 'org-mode-hook (lambda () (org-autolist-mode))))

  (req 'init-org)
  ;; (req 'org-pretty-table
  ;;   (add-hook 'org-mode-hook
  ;;             'turn-on-org-pretty-table-mode))
    ;;;;;

    ;;;;; scheme-keywords
  (liby 'scheme-keywords
    (auto (scheme-keywords-mode) "scheme-keywords")
    (add-hook 'scheme-mode-hook 'scheme-keywords-mode))

    ;;;;; seijiseikana
  (req 'seijiseikana)

  (req 'init-flatline)

    ;;;;; fish-mode
  (req 'fish-mode
    (add-to-list 'auto-mode-alist '("\\.fish\\'" . fish-mode))
    (add-to-list 'interpreter-mode-alist '("fish" . fish-mode)))

    ;;;;; debug-print
  (req 'debug-print
    (debug-print-init)
    (add-global-key "C-x C-e" 'debug-print-eval-last-sexp))

  ;;;;; bookmark-extensions
  (req 'bookmark-extensions)

    ;;;;; lehtifile-mode
  (liby 'lehtifile-mode
    (autoload 'lehtifile-mode "lehtifile-mode")
    (mode "/Lehtifile\\'"  'lehtifile-mode))

    ;;;;; skk
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

    ;;;;; navi2ch
  (req 'init-navi2ch)

  (req 'navi2ch-file-mode
    (setq navi2ch-file-open-with-shift-jis t))

      ;;;;; rebuildfm
  (liby 'rebuildfm
    (auto (rebuildfm) "rebuildfm"))

  ;;;;; sos
  (liby 'sos
    (auto (sos) "sos"))

    ;;;;; eshell
  ;; (req 'eshell-session)
  (req 'mesh
    (turn-on-mesh-mode))

    ;;;;; yon-chan
  (liby 'yon-chan
    (auto (yon-chan) "yon-chan"))

    ;;;;; emms
  ;; (req 'init-emms)
  (req 'init-emms-mpd)

    ;;;;; magit
  (req 'init-magit)
  (req 'init-git-modes)
  (req 'magit-overview)

    ;;;;; company
  (req 'init-company-mode)

  ;;;;; anzu
  (req 'init-anzu)

  ;;;;; smartparens
  (req 'init-smartparens)

    ;;;;; haskell
  (req 'init-haskell-mode)

    ;;;;; itail
  (liby 'itail
    (auto (itail) "itail"))

    ;;;;; quickrun
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

  ;;;;; web-mode
  (liby 'web-mode
    (auto (web-mode) "web-mode")
    (mode "\\.phtml\\'"  'web-mode)
    (mode "\\.tpl\\.php\\'"  'web-mode)
    (mode "\\.[gj]sp\\'"  'web-mode)
    (mode "\\.as[cp]x\\'"  'web-mode)
    (mode "\\.erb\\'"  'web-mode)
    (mode "\\.mustache\\'"  'web-mode)
    (mode "\\.djhtml\\'"  'web-mode)
    (mode "\\.html?\\'"  'web-mode))

    ;;;;; paradox
  (req 'init-paradox)

    ;;;;; spray
  (req 'spray)

    ;;;;; highlight-parentheses
  (req 'highlight-parentheses
    (global-highlight-parentheses-mode))

    ;;;;; go-mode
  (req 'go-mode)

    ;;;;; expand-region
  (req 'init-expand-region)

    ;;;;; lua-mode
  (liby 'lua-mode
    (auto (lua-mode) "lua-mode" )
    (mode "\\.lua$" 'lua-mode)
    (add-to-list 'interpreter-mode-alist '("lua" . lua-mode)))

    ;;;;; rotate
  (liby 'rotate
    (auto (rotate-layout rotate-window) "rotate")
    (add-global-key "C-c C-SPC" 'rotate-layout
                    "C-c C-c C-SPC" 'rotate-window))

    ;;;;; git-timemachine
  (liby 'git-timemachine
    (auto (git-timemachine) "git-timemachine"))

  ;;;;; flappymacs
  (liby 'flappymacs
    (auto (flappymacs) "flappymacs"))

    ;;;;; yamada
  (liby 'yamada
    (auto (yamada) "yamada")

    ;; (add-global-key "C-c C-c C-y" 'yamada-dancing)

    ;; (yamada-dancing 1) ;; or C-c C-c C-y (M-x yamada-dancing)
    ;; (yamada-dancing 5) ;; or C-u 5 C-c C-c C-y
    )

  ;;;;; css-eldoc
  (req 'css-eldoc
    (turn-on-css-eldoc))

    ;;;;; web-beatify
  (liby 'web-beautify
    (auto (web-beautify-css-buffer) "web-beautify")
    (after 'css-mode
        (add-hook 'css-mode-hook
         (lambda ()
           (add-hook 'before-save-hook 'web-beautify-css-buffer t t)))))

    ;;;;; direx
  (liby 'direx
    (auto (direx:jump-to-directory
           direx:jump-to-directory-other-window)
          "direx"))

    ;;;;; e2wm
  (req 'init-e2wm)

    ;;;;; oniisama
  (req 'oniisama
    (imouto))

    ;;;;; eww
  (liby 'eew
    (auto (eew) "eew"))

    ;;;;; sunrise-commander
  (req 'init-sunrise-commander)

    ;;;;; tabbar
  (req 'init-tabbar)

    ;;;;; guide-key
  (req 'guide-key
    (setq guide-key/guide-key-sequence
          `("C-x r" "C-x 4" "C-q"
                    ,(if (boundp 'helm-command-prefix-key)
                         helm-command-prefix-key
                         "C-x c")
                    (org-mode "C-c C-x")))
    ;; (guide-key-mode 1)
    )

    ;;;;; guide-key-tip
  (req 'guide-key-tip
    (setq guide-key-tip/enabled t))

    ;;;;; clojure-mode
  (req 'clojure-mode
    (req 'clojure-mode-extra-font-locking))

    ;;;;; rainbow-delimiters
  (req 'init-rainbow-delimiters)

  ;;;;; bqlist-lock
  (liby 'bqlist-lock
    (auto (enable-bqlist-lock) "bqlist-lock")
    (hook 'emacs-lisp-mode-hook 'enable-bqlist-lock))

  ;;;;; elfeed
  (req 'init-elfeed)

    ;;;;; lorem-ipsum
  (liby 'lorem-ipsum
    (auto (lorem-ipsum) "lorem-ipsum"))

  ;;;;; flycheck
  (req 'init-flycheck)

  ;; ;;;;; emacs-color-themes
  (req 'emacs-color-themes)

  ;;;;; multiple-cursors
  (req 'init-multiple-cursors)

;;;;; highlight-symbol
  (req 'init-highlight-symbol)

  ;;;;; sly
  (req 'sly-autoloads
    (setq inferior-lisp-program "sbcl"))

  ;;;;; twittering-mode
  (liby 'twittering-mode
    (auto (twit) "twittering-mode")
    (setq twittering-allow-insecure-server-cert t))

  ;;;;; coffee
  (req 'coffee-mode)

  ;;;;; artbollocks
  (liby 'artbollocks-mode
    (auto (artbollocks-mode) "artbollocks-mode")
    (add-hook 'text-mode-hook 'artbollocks-mode))

  ;;;;; color-theme-approximate
  (req 'color-theme-approximate
    (color-theme-approximate-on))

  ;;;;; google-this
  (liby 'google-this
    (auto (google-this) "google-this"))

  ;;;;; golden-ratio
  (req 'golden-ratio
    (enable-mode golden-ratio-mode)
    (add-to-list 'golden-ratio-exclude-modes 'eshell-mode)
    (add-to-list 'golden-ratio-exclude-modes 'magit-status-mode)
    (add-to-list 'golden-ratio-exclude-modes 'magit-log-mode)
    (add-to-list 'golden-ratio-exclude-modes 'magit-mode))

  ;;;;; nssh
  (liby 'nssh
    (auto (nssh nssh-all) "nssh"))

  ;;;;; popwin
  (req 'init-popwin)
  ;; (req 'init-shackle)

  ;;;;; tumblesocks
  (req 'init-tumblesocks)

  ;;;;; rainbow-mode
  (req 'init-rainbow-mode)

  ;;;;; markdown
  (req 'markdown-mode
    (mode "\\.md\\'" 'gfm-mode)
    (mode "\\.markdown\\'" 'gfm-mode)
    (mode "README\\.md\\'"  'gfm-mode))

  ;;;;; google-translate
  (req 'init-google-translate)

  ;;;;; charmap
  (liby 'charmap
    (auto (charmap) "charmap")
    (setq charmap-text-scale-adjust 2))

  ;;;;; pt
  (liby 'pt
    (auto (pt-regexp) "pt"))

  ;;;;; switch-window
  (liby 'switch-window
    (auto (switch-window) "switch-window")
    (global-set-key (kbd "C-x o") 'switch-window)
    (set-option switch-window-shortcut-style 'qwerty)
    (set-option switch-window-qwerty-shortcuts
                '("a" "o" "e" "u" "h" "t" "n" "s" "," "." "c" "r")))

  ;;;;; olivetti
  (liby 'olivetti
    (auto (olivetti-mode) "olivetti"))

  ;;;;; emoji-cheat-sheet
  (liby 'emoji-cheat-sheet
    (auto (emoji-cheat-sheet emoji-cheat-sheet-copy-at-point)
          "emoji-cheat-sheet"))

  ;;;;; vimrc
  (liby 'vimrc-mode
    (auto (vimrc-mode) "vimrc-mode")
    (mode "\\.vim\\'" 'vimrc-mode)
    (mode "[._]?g?vimrc\\'"  'vimrc-mode)
    (mode "\\.exrc\\'"  'vimrc-mode))

  ;;;;; cat-mode
  (req 'cat-mode)

  ;;;;; rich-minority
  (req 'rich-minority
    (add-to-list 'rm-text-properties
                 '("Golden" 'face 'font-lock-variable-face))
    (rich-minority-mode 1))

  ;;;;; highlight-defined
  (liby 'highlight-defined
    (auto (highlight-defined-mode) "highlight-defined")
    (add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode))

;;;;; httprepl
  (liby 'httprepl
    (auto (httprepl) "httprepl"))

  ;;;;; yaml-mode
  (req 'yaml-mode)

  ;;;;; info+
  (req 'init-info-plus)

  ;;;;; elisp-slime-nav
  (req 'init-elisp-slime-nav)

  ;;;;; ace-link
  (req 'ace-link
    (ace-link-setup-default))

  ;;;;; esup
  (liby 'esup
    (auto (esup) "esup" ))

  ;;;;; context-coloring
  (req 'context-coloring
    (add-hook 'js-mode-hook 'context-coloring-mode))

  ;;;;; stumpwm
  (liby 'stumpwm-mode
    (auto (stumpwm-mode) "stumpwm-mode")
    (mode ".stumpwmrc.d/conf" 'stumpwm-mode))

  ;;;;; smeargle
  (req 'smeargle)

  ;;;;; stack exchange mode
  (req 'sx-load)

  ;;;;; csharp-mode
  (req 'csharp-mode)

  ;;;;; dircmp
  (req 'dircmp)

  ;;;;; url-preview
  (req 'url-preview
    (req 'url-preview-image
      (url-preview-module-enable "image")))

  ;;;;; stripe-buffer
  (req 'stripe-buffer
    (add-hook 'dired-mode-hook 'stripe-listify-buffer)
    (add-hook 'org-mode-hook 'turn-on-stripe-table-mode))

  ;;;;; free-keys
  (liby 'free-keys
    (auto (free-keys) "free-keys"))

  ;;;;; better-jump
  (liby 'better-jump
    (auto (bjump-char-jump-line
           bjump-word-jump
           bjump-word-jump-line
           bjump-word-jump-paragraph
           bjump-window-jump
           bjump-window-delete
           bjump-help-link-jump
           bjump-info-link-jump
           bjump-dired-jump)
          "better-jump"))

  ;;;;; tabula-rasa
  (liby 'tabula-rasa
    (auto (tabula-rasa-mode) "tabula-rasa")
    (set-option tabula-rasa-widith 130))

  ;;;;; darkroom
  (liby 'darkroom
    (auto (darkroom-mode darkroom-tentative-mode)
          "darkroom"))

  ;;;;; leerzeichen-mode
  (liby 'leerzeichen
    (auto (leerzeichen-mode) "leerzeichen")
    (after "leerzeichen"
      (set-face-attribute 'leerzeichen nil
                          :foreground
                          (color-lighten-name (face-attribute 'default :background)
                                              20))))

  ;;;;; emacs-refactor
  (liby 'emr
    (autoload 'emr-show-refactor-menu "emr")
    (autoload 'emr-initialize "emr")
    (define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu)
    (add-hook 'prog-mode-hook 'emr-initialize))

  ;;;; evil
  (req 'init-evil)

  ;;;; helm
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

  ;;; not loaded
  ;; (req 'camcorder)

  ;; (req 'js-beautify
  ;;   (add-hook 'js-mode-hook 'js-beautify-init)
  ;;   (add-hook 'html-mode-hook 'js-beautify-init)
  ;;   (add-hook 'css-mode-hook 'js-beautify-init))


  ;;   (req 'auto-save-buffers-enhanced
  ;; ;;   ;; If you're using CVS or Subversion or git
  ;;   (auto-save-buffers-enhanced-include-only-checkout-path t)
  ;;   (auto-save-buffers-enhanced t))

  ;; (req 'git-gutter-fringe+
  ;;   ;; Optional: Activate minimal skin
  ;;   (git-gutter-fr+-minimal))

  ;; (req 'travis)

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

  ;;;; yasnippet
  ;; (req 'yasnippet
  ;;   (yas-global-mode 1))

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

  ;; zone matrix
  ;; (req 'zone-settings)

  ;; (req 'undohist
  ;;      (undohist-initialize)
  ;;      (setq undohist-ignored-files '("\\.git/COMMIT_EDITMSG")))

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

  ;; (req 'smooth-scroll
  ;;      (smooth-scroll-mode nil))

  ;; (req 'yascroll
  ;;      (global-yascroll-bar-mode))

  ;; (req 'aozora-view)

  ;; (req 'eshell-alias)

  ;; (req 'init-flyparens)

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

  ;; (req 'indent-guide
  ;;   (add-hook 'emacs-lisp-mode-hook 'indent-guide-mode)
  ;;   (add-hook 'scheme-mode-hook 'indent-guide-mode)
  ;;   (set-option indent-guide-char "|"))

  ;; (req 'init-elnode)

  ;; (liby 'highlight-stages
  ;;   (auto (highlight-stages-mode)
  ;;         "highlight-stages")
  ;;   (add-hook 'emacs-lisp-mode-hook 'highlight-stages-mode)
  ;;   (add-hook 'scheme-mode-hook 'highlight-stages-mode))

  ;; (req 'comment-dwim-2
  ;;   (add-global-key  "M-;" 'comment-dwim-2))

  ;; (req 'init-auto-highlight-symbol)

  ;; (liby 'slideview
  ;;       (add-hook 'image-mode-hook 'slideview-mode))

  ;; (req 'image+
  ;;      (imagex-auto-adjust-mode 1))

  ;; (req 'recycle
  ;;   (global-set-key (kbd "C-.") 'recycle)
  ;;   (global-set-key (kbd "C-,") 'recycle-2nd))

  ;; (req 'ids-edit
  ;;   (global-ids-edit-mode))

  ;; (req 'fill-column-indicator
  ;;   (add-hook 'prog-mode-hook 'fci-mode)
  ;;   ;; (add-hook 'text-mode-hook 'fci-mode)
  ;;   )

  ;; (req 'aria2
  ;;   (enable-option  aria2-add-evil-quirks))

  ;; (liby 'eww-lnum
  ;;   (auto (eww-lnum-follow eww-lnum-universal) "eww-lnum")
  ;;   (after "eww"
  ;;       (define-key eww-mode-map "f" 'eww-lnum-follow)
  ;;     (define-key eww-mode-map "F" 'eww-lnum-universal))
  ;;   (after "eww-lnum"
  ;;       (set-face-attribute 'eww-lnum-number nil
  ;;        :foreground "#3355bb")))



  )

(provide 'init-vendle)

;;; init-vendle.el ends here
