;;; init-vendle.el -*- lexical-binding: t; -*-

;;; requires
(require 'muki)

;;; setup
(muki:add-to-load-path  "~/huone/projektit/emacs-vendle")

(req 'vendle
;;;; initialize vendle
  (cl-letf ((muki:vendle-directory
             (muki:user-emacs-directory (file-name-as-directory "vendle"))))
    (vendle:initialize muki:vendle-directory))

;;;; register packages
  (vendle:register "magnars/s.el")

;;;;; helm
  (vendle:register "emacs-helm/helm"
                   '(:build ("gmake")
                     :deps ("jwiegley/emacs-async")))
  (vendle:register "thierryvolpiatto/pcomplete-extension")
  (vendle:register "yuutayamada/helm-ag-r")
  (vendle:register "yasuyk/helm-git-grep")
  (vendle:register "emacs-helm/helm-migemo")
  (vendle:register "emacs-helm/helm-ls-git")
  (vendle:register "emacs-helm/helm-cmd-t")
  (vendle:register "ShingoFukuyama/helm-swoop")
  (vendle:register "steckerhalter/helm-google")
  (vendle:register "syohex/emacs-helm-ag")
  (vendle:register "markus1189/helm-hoogle")
  (vendle:register "jixiuf/helm-etags-plus")
  (vendle:register "syohex/emacs-helm-themes")
  (vendle:register "syohex/emacs-helm-open-github")
  (vendle:register "istib/helm-mode-manager")
  (vendle:register "tkf/emacs-pinot-search")
  (vendle:register "yasuyk/helm-flycheck")
  (vendle:register "emacs-helm/helm-descbinds")
  (vendle:register "yasuyk/helm-company"
                   '(:deps ("rejeep/f.el")))
  (vendle:register "emacs-helm/helm-dictionary")
  (vendle:register "emacs-helm/helm-recoll")
  (vendle:register "mhayashi1120/Emacs-wgrep")
  (vendle:register "ShingoFukuyama/helm-css-scss")
  (vendle:register "tmalsburg/helm-bibtex"
                   '(:deps ("joostkremers/ebib"
                            "magnars/s.el"
                            "magnars/dash.el"
                            "rejeep/f.el")))

;;;;; general packages
  (vendle:register "jonathanchu/emacs-powerline")
  (vendle:register "raugturi/powerline-evil")
  (vendle:register "TeMPOraL/nyan-mode")
  (vendle:register "daimrod/highlight-sexp")
  (vendle:register "m2ym/undohist-el")
  (vendle:register "m2ym/emux-el")
  (vendle:register "moriyamahiroshi/seijiseikana-el")
  (vendle:register "kenoss/debug-print")
  ;; (vendle:register "emacsmirror/mew")
  (vendle:register "ober/zone-matrix")
  (vendle:register "mytoh/fish-mode")
  (vendle:register "thierryvolpiatto/emacs-bmk-ext")
  (vendle:register "kawabata/aozora-view")
  (vendle:register "tomoya/fuzzyjump.el")
  (vendle:register "omouse/emacs-sos")
  (vendle:register "davexunit/yon-chan")
  (vendle:register "omouse/org-doing")
  (vendle:register "git://git.sv.gnu.org/emms.git"
                   '(:name "emms" :load-path "lisp"
                     :build ("gmake lisp docs emms-print-metadata")))
  (vendle:register "fgallina/emms-info-mediainfo")
  (vendle:register "osener/emms-soundcloud" )
  (vendle:register "r0man/soundklaus.el"
                   '(:deps (("magnars/dash.el" :compile nil)
                            "magnars/s.el"
                            "kiwanami/emacs-deferred")))

  (vendle:register "magit/git-modes")
  (vendle:register "magit/magit"
                   '(:build ("gmake lisp docs")
                     :info "."))
  (vendle:register "company-mode/company-mode")
  (vendle:register "proofit404/company-edbi")
  (vendle:register "syohex/emacs-git-gutter")
  (vendle:register "syohex/emacs-rebuildfm")
  (vendle:register "syohex/emacs-anzu" '(:compile nil))
  (vendle:register "Fuco1/smartparens"
                   '(:compile nil :deps (("magnars/dash.el" :compile nil))))
  (vendle:register "magnars/expand-region.el")
  (vendle:register "magnars/multiple-cursors.el")
  (vendle:register "Fuco1/org-pretty-table" '(:compile nil))
  (vendle:register "haskell/haskell-mode" '(:compile nil :build ("gmake all")))
  (vendle:register "Bruce-Connor/paradox")
  (vendle:register "steckerhalter/google-el")
  (vendle:register "daemianmack/magit-cheatsheet")
  (vendle:register "re5et/itail")
  (vendle:register "syohex/emacs-quickrun")
  (vendle:register "fxbois/web-mode" '(:compile nil))
  (vendle:register "m00natic/eww-lnum")
  (vendle:register "emacsmirror/auto-highlight-symbol")
  (vendle:register "emacsmirror/rainbow-mode")
  (vendle:register "skeeto/elfeed")
  (vendle:register "remyhonig/elfeed-org"
                   '(:deps ("skeeto/elfeed")))
  (vendle:register "zk-phi/spray")
  (vendle:register "nschum/highlight-parentheses.el")
  (vendle:register "dominikh/go-mode.el")
  (vendle:register "immerrr/lua-mode")
  (vendle:register "daic-h/emacs-rotate")
  (vendle:register "pidu/git-timemachine")
  (vendle:register "k-talo/smooth-scroll.el")
  (vendle:register "m2ym/yascroll-el")
  (vendle:register "emacs-jp/migemo")
  (vendle:register "taksatou/flappymacs")
  (vendle:register "gongo/yamada-el")
  (vendle:register "jiyoo/flyparens")
  (vendle:register "flycheck/flycheck"
                   '(:deps ("magnars/dash.el")
                     :info "."))
  (vendle:register "flycheck/flycheck-pos-tip"
                   '(:deps ("auto-complete/popup-el")))
  (vendle:register "zenozeng/css-eldoc")
  (vendle:register "yasuyk/web-beautify")
  (vendle:register "mhayashi1120/Emacs-slideview")
  (vendle:register "mhayashi1120/Emacs-imagex")
  (vendle:register "kiwanami/emacs-window-manager"
                   '(:deps ("kiwanami/emacs-window-layout")))
  (vendle:register "m2ym/direx-el"
                   '(:deps ("m2ym/popwin-el")))
  (vendle:register "aki2o/e2wm-direx"
                   '(:deps ("kiwanami/emacs-window-manager"
                            "m2ym/direx-el")))
  (vendle:register "yu-i9/oniisama")
  (vendle:register "nicferrier/emacs-web"
                   '(:deps ("magnars/dash.el"
                            "magnars/s.el")))
  (vendle:register "nicferrier/elnode"
                   '(:deps ("nicferrier/emacs-fakir"
                            "nicferrier/emacs-kv"
                            "nicferrier/emacs-db"
                            "nicferrier/emacs-noflet"
                            )))
  (vendle:register "nicferrier/emacs-web"
                   '(:deps ("nicferrier/elnode")))
  (vendle:register "syohex/emacs-eew")
  (vendle:register "escherdragon/sunrise-commander"
                   '(:compile nil))
  ;; (vendle:register "http://git.gnus.org/gnus.git"
  ;;                  '(:build ("./configure" "gmake")
  ;;                    :load-path ("lisp" "contrib")))
  (vendle:register "dholm/tabbar")
  (vendle:register "aki2o/guide-key-tip"
                   '(:deps ("kbkbkbkb1/guide-key"
                            "emacsmirror/pos-tip")))
  (vendle:register "clojure-emacs/clojure-mode")
  (vendle:register "jlr/rainbow-delimiters")
  (vendle:register "zk-phi/highlight-stages")
  (vendle:register "zk-phi/indent-guide")
  (vendle:register "jschaf/emacs-lorem-ipsum")
  (vendle:register "remyferre/comment-dwim-2")
;  (vendle:register "capitaomorte/sly"
 ;                  '(:build ("gmake compile contrib-compile")))
  (vendle:register "hayamiz/twittering-mode")
  (vendle:register "defunkt/coffee-mode")
  (vendle:register "fbkante/recycle")
  (vendle:register "kawabata/ids-edit")
  (vendle:register "gbalats/autodisass-llvm-bitcode")
  (vendle:register "sachac/artbollocks-mode")
  (vendle:register "alpaker/Fill-Column-Indicator")
  (vendle:register "tungd/color-theme-approximate")
  (vendle:register "http://www.dr-qubit.org/git/undo-tree.git")
  (vendle:register "Bruce-Connor/emacs-google-this")
  (vendle:register "roman/golden-ratio.el")
  (vendle:register "winterTTr/ace-jump-mode" )
  (vendle:register "ieure/nssh-el")
  (vendle:register "mhayashi1120/japanlaw.el")
  (vendle:register "roman/navorski.el")
  (vendle:register "febuiles/lyricwiki.el")
  (vendle:register "sabof/svg-mode-line-themes"
                   '(:deps ("philjackson/xmlgen")))
  (vendle:register "naota/navi2ch"
                   '(:build ("./configure" "gmake")))
  (vendle:register "purcell/elisp-slime-nav")
  (vendle:register "gcr/tumblesocks"
                   '(:deps ( "psanford/emacs-oauth"
                            "git://jblevins.org/git/markdown-mode.git")))
  (vendle:register "thomblake/js3-mode")
  (vendle:register "jd/google-maps.el")
  (vendle:register "atykhonov/google-translate")
  (vendle:register "lateau/charmap")
  (vendle:register "bling/pt.el")
  (vendle:register "emacsmirror/goto-last-change")
  (vendle:register "dimitri/switch-window")
  ;; (vendle:register "capitaomorte/yasnippet")

;;;;; evil
  (vendle:register "git://gitorious.org/evil/evil.git"
                   '(:build ("gmake doc all")
                     :info "doc"
                     :deps ("emacsmirror/goto-chg"
                            "http://www.dr-qubit.org/git/undo-tree.git")))
  (vendle:register "cofi/evil-leader")
  (vendle:register "timcharper/evil-surround")
  (vendle:register "redguardtoo/evil-nerd-commenter")
  (vendle:register "redguardtoo/evil-matchit")
  (vendle:register "Dewdrops/evil-exchange")
  (vendle:register "edwtjo/evil-org-mode")
  (vendle:register "bling/evil-visualstar")
  (vendle:register "tarao/evil-plugins")
  (vendle:register "tarleb/evil-rebellion")
  (vendle:register "AshleyMoni/evil-sneak")
  (vendle:register "juanjux/evil-search-highlight-persist")
  (vendle:register "sunesimonsen/evil-walk-on-the-edge")
  (vendle:register "bling/evil-jumper")
  (vendle:register "roman/evil-paredit")
  (vendle:register "Dewdrops/evil-extra-operator")
  (vendle:register "cofi/evil-indent-textobject")
  (vendle:register "linktohack/evil-space")
  (vendle:register "jschaf/evil-smartparens")
  (vendle:register "edwtjo/evil-projectile")
  (vendle:register "nadavspi/evil-linewise")
  (vendle:register "TheBB/evil-paragraph-textobject")
  (vendle:register "syl20bnr/evil-lisp-state"
                   '(:deps ("magnars/expand-region.el")
                     :compile nil))

;;;;; org
  (vendle:register "git://orgmode.org/org-mode.git"
                   '(:load-path ("lisp" "contrib/lisp")
                     :compile nil
                     :build ("gmake" "gmake doc")
                     :info "doc"))
  (vendle:register "tj64/outshine" '(:compile nil))
  (vendle:register "tj64/outorg" '(:compile nil))
  ;; (vendle:register "jleechpe/outorg-export")
  ;; (vendle:register "https://bitbucket.org/ukaszg/org-eldoc.git")
  (vendle:register "tj64/navi")
  (vendle:register "kawabata/ox-pandoc"
                   '(:deps ("Wilfred/ht.el"
                            "magnars/dash.el")))

;;;;; themes
  (vendle:register "owainlewis/emacs-color-themes")
  (vendle:register "kuanyui/moe-theme.el")
  (vendle:register-theme "caisah/seti-theme")
  (vendle:register-theme "j0ni/phoenix-dark-pink")
  (vendle:register-theme "Fanael/stekene-theme")
  (vendle:register-theme "sabof/hyperplane-theme")
  (vendle:register-theme "niflheim-theme/emacs" '(:name "niflheim-theme"))
  (vendle:register-theme "emacs-jp/replace-colorthemes")
  (vendle:register-theme "djcb/dream-theme")
  (vendle:register-theme "FrankRuben/cuatroporocho-theme" '(:compile nil))
  (vendle:register-theme "neomantic/Emacs-Sunburst-Color-Theme")
  (vendle:register-theme "ranmocy/amelie-theme")
  (vendle:register-theme "yuttie/steady-theme-emacs")
  (vendle:register-theme "rozh/grandpunk-theme")
  (vendle:register-theme "nhunzaker/emacs-laravel-plus-theme")
  (vendle:register-theme "nishikawasasaki/ns-milk-theme")
  (vendle:register-theme "tiborsimko/ostrich-theme-el")
  (vendle:register-theme "michaelparenteau/parenteau-theme")
  (vendle:register-theme "emacsfodder/emacs-purple-haze-theme")
  (vendle:register-theme "emacsfodder/emacs-clues-theme" )
  (vendle:register-theme "gchp/flatland-emacs")
  (vendle:register-theme "mswift42/busybee-theme")
  (vendle:register-theme "byels/emacs-cherry-blossom-theme")
  (vendle:register-theme "startling/firebelly")
  (vendle:register-theme "Greduan/emacs-theme-gruvbox")
  (vendle:register-theme "donderom/jazz-theme")
  (vendle:register-theme "andre-richter/emacs-lush-theme")
  (vendle:register-theme "Lokaltog/distinguished-theme")
  ;; (vendle:register-theme "ccann/badger-theme")"


;;;;; local packages
  (cl-labels ((add-project-root (path)
                (vendle:register-local (expand-file-name path "~/huone/projektit"))))
    (add-project-root  "emacs-flatline")
    (add-project-root "helm-ypv")
    (add-project-root "company-scheme")
    (add-project-root "emacs-scheme-keywords")
    (add-project-root "emacs-lehtifile-mode")
    (add-project-root "helm-alku")
    (add-project-root "emacs-navi2ch-file-mode")
    (add-project-root "emacs-eshell-session")
    (add-project-root "emacs-eshell-alias")
    (add-project-root "helm-project-buffer"))

  (cond
    ((file-directory-p (muki:user-emacs-directory "vendle/ddskk"))
     (vendle:register-local (muki:user-emacs-directory "vendle/ddskk")
                            '(:build ("gmake elc info")
                              :info "info")))
    ((file-directory-p "/usr/local/share/emacs/24.3/site-lisp/skk")
     (vendle:register-local "/usr/local/share/emacs/24.3/site-lisp/skk")))

  ;; (vendle:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

;;;;; not library
  (vendle:fetch "purcell/emacs.d")
  (vendle:fetch "redguardtoo/mastering-emacs-in-one-year-guide")
  (vendle:fetch "git://git.savannah.nongnu.org/emacs-tiny-tools.git")
  (vendle:fetch "bbatsov/emacs-lisp-style-guide")
  (vendle:fetch "danielsz/.emacs.d")
  (vendle:fetch "davvil/.emacs.d")
  (vendle:fetch "hico-horiuchi/dotemacs")
  (vendle:fetch "juanjux/emacs-dotfiles")
  (vendle:fetch "redguardtoo/emacs.d")
  (vendle:fetch "sachac/.emacs.d")
  (vendle:fetch "serras/emacs-haskell-tutorial")
  (vendle:fetch "supermomonga/dot-emacs")
  (vendle:fetch "thierryvolpiatto/emacs-tv-config")
  (vendle:fetch "xiaohanyu/oh-my-emacs")
  (vendle:fetch "bling/emacs-evil-bootstrap")
  (vendle:fetch "capdevc/dotfiles-cc")
  (vendle:fetch "siancu/evilmode-pack")
  (vendle:fetch "emacs-tw/awesome-emacs")
  (vendle:fetch "syl20bnr/spacemacs")
  (vendle:fetch "bbatsov/prelude")
  (vendle:fetch "bling/dotemacs")
  (vendle:fetch "cofi/dotfiles")
  (vendle:fetch "tarao/dotfiles")
  (vendle:fetch "fukamachi/emacs-config")
  (vendle:fetch "mikio/dotfiles")
  (vendle:fetch "yukihr/dotfiles")
  (vendle:fetch "handlename/dot-emacs")
  (vendle:fetch "seven1m/.emacs.d")
  (vendle:fetch "gongo/elfactory")
  (vendle:fetch "rdallasgray/graphene")
  (vendle:fetch "mgill25/emacs")
  (vendle:fetch "nikki93/.emacs.d")
  (vendle:fetch "davvil/.emacs.d")
  (vendle:fetch "sunesimonsen/evil-config")
  (vendle:fetch "jcf/emacs.d")
  (vendle:fetch "jcf/previous-emacs.d")
  (vendle:fetch "nathantypanski/emacs.d")
  (vendle:fetch "lukaszkorecki/cult-leader")
  (vendle:fetch "ahmadseleem/ViMacs")
  (vendle:fetch "lunaryorn/.emacs.d")
  (vendle:fetch "febuiles/dotemacs")
  (vendle:fetch "git://orgmode.org/worg.git")
  (vendle:fetch "roman/emacs.d")
  (vendle:fetch "iconpin/dotemacs")
  (vendle:fetch "jpace121/evil-ed")
  (vendle:fetch "edwtjo/evil-ed")
  (vendle:fetch "sunesimonsen/evil-config")
  (vendle:fetch "gbarta/evil-my-shims")
  (vendle:fetch "novoid/Memacs")
  (vendle:fetch "terhechte/emacs.d")
  (vendle:fetch "echosa/emacs.d")
  (vendle:fetch "wataken44/dot.emacs.d2")
  (vendle:fetch "scottjad/dotfiles")
  (vendle:fetch "alexander-yakushev/.emacs.d")
  (vendle:fetch "LukeSwart/.emacs.d")
  (vendle:fetch "romanoaugusto88/.emacs.d")
  (vendle:fetch "jirkamarsik/sonic-screwdriver")
  (vendle:fetch "defunkt/emacs")
  (vendle:fetch "rejeep/emacs")
  (vendle:fetch "dragonwasrobot/dot-emacs")
  (vendle:fetch "jhamrick/emacs")
  (vendle:fetch "joedicastro/dotfiles")
  (vendle:fetch "emacs-tw/awesome-emacs")

;;;; install packages
  (vendle:check-packages)

  (vendle:turn-on-font-lock)

;;;; vendle keymap
  (muki:define-launcher-key "v u" 'vendle-update)
  (muki:define-launcher-key "v k" 'vendle-check)
  (muki:define-launcher-key "v c" 'vendle-clean)
  (after "helm"
      (req 'helm-vendle
        (muki:define-launcher-key "v l" 'helm-vendle)))

;;;; package requires
  (req 'init-migemo)

  (req 'init-outshine)
  ;; (req 'navi-mode)
  (req 'init-org)
  ;; (req 'org-pretty-table
  ;;   (add-hook 'org-mode-hook
  ;;             'turn-on-org-pretty-table-mode))

  ;; update plugins
  ;; (vendle:update-packages)

  (liby 'scheme-keywords
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

  (req 'init-flatline)

  ;; fish-mode
  (req 'fish-mode)

  ;; zone matrix
  ;; (req 'zone-settings)

  (req 'debug-print
    (debug-print-init)
    (muki:global-set-key "C-x C-e" 'debug-print-eval-last-sexp))

  ;; (req 'aozora-view)

  (req 'bookmark-extensions)

  (liby 'lehtifile-mode
    (autoload 'lehtifile-mode "lehtifile-mode")
    (add-to-list 'auto-mode-alist '("/Lehtifile\\'" . lehtifile-mode)))

  ;; ディレクトリ指定
  ;; ~/.emacs.d/ddskk/init is setting file
  (set-option skk-user-directory (muki:user-emacs-directory "ddskk/"))
  (req 'skk-autoloads
    ;; C-x C-j で skk モードを起動
    (muki:global-set-key "C-x C-\\" 'skk-mode)
    (muki:global-set-key "C-x C-j" 'skk-mode)
    ;; enable skk mode by pressing カタカナ/ひらがな key
    (muki:global-set-key [hiragana-katakana] 'skk-mode)
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

  (req 'rebuildfm)

  (req 'fuzzyjump
    (let ((map fuzzyjump-cmd-map))
      (define-key map (kbd "'") (lambda () (interactive) (fuzzyjump 1 0)))
      (define-key map (kbd ",") (lambda () (interactive) (fuzzyjump 1 1)))
      (define-key map (kbd ".") (lambda () (interactive) (fuzzyjump 1 2)))
      (define-key map (kbd "p") (lambda () (interactive) (fuzzyjump 1 3)))
      (define-key map (kbd "y") (lambda () (interactive) (fuzzyjump 1 4)))
      (define-key map (kbd "f") (lambda () (interactive) (fuzzyjump 1 5)))
      (define-key map (kbd "g") (lambda () (interactive) (fuzzyjump 1 6)))
      (define-key map (kbd "c") (lambda () (interactive) (fuzzyjump 1 7)))
      (define-key map (kbd "r") (lambda () (interactive) (fuzzyjump 1 8)))
      (define-key map (kbd "l") (lambda () (interactive) (fuzzyjump 1 9)))
      (define-key map (kbd "a") (lambda () (interactive) (fuzzyjump 2 0)))
      (define-key map (kbd "o") (lambda () (interactive) (fuzzyjump 2 1)))
      (define-key map (kbd "e") (lambda () (interactive) (fuzzyjump 2 2)))
      (define-key map (kbd "u") (lambda () (interactive) (fuzzyjump 2 3)))
      (define-key map (kbd "i") (lambda () (interactive) (fuzzyjump 2 4)))
      (define-key map (kbd "d") (lambda () (interactive) (fuzzyjump 2 5)))
      (define-key map (kbd "h") (lambda () (interactive) (fuzzyjump 2 6)))
      (define-key map (kbd "t") (lambda () (interactive) (fuzzyjump 2 7)))
      (define-key map (kbd "n") (lambda () (interactive) (fuzzyjump 2 9)))
      (define-key map (kbd ";") (lambda () (interactive) (fuzzyjump 3 0)))
      (define-key map (kbd "q") (lambda () (interactive) (fuzzyjump 3 1)))
      (define-key map (kbd "j") (lambda () (interactive) (fuzzyjump 3 2)))
      (define-key map (kbd "k") (lambda () (interactive) (fuzzyjump 3 3)))
      (define-key map (kbd "x") (lambda () (interactive) (fuzzyjump 3 4)))
      (define-key map (kbd "b") (lambda () (interactive) (fuzzyjump 3 5)))
      (define-key map (kbd "m") (lambda () (interactive) (fuzzyjump 3 6)))
      (define-key map (kbd "w") (lambda () (interactive) (fuzzyjump 3 7)))
      (define-key map (kbd "v") (lambda () (interactive) (fuzzyjump 3 9))))
    (fuzzyjump-mode t))

  (req 'sos)

  ;; (req 'eshell-alias)

  (req 'emacs-color-themes)

  (req 'yon-chan)

  ;; (req 'init-emms)
  (req 'init-emms-mpd)

  (req 'init-magit)

  (req 'init-company-mode)


  (req 'init-anzu)

  (req 'init-smartparens)

  (req 'init-haskell-mode)

  (req 'itail)

  (req 'quickrun
    (cl-defun quickrun-sc (start end)
      (interactive "r")
      (if mark-active
          (quickrun :start start :end end)
        (quickrun)))
    (muki:global-set-key "<f5>" 'quickrun-sc)
    (after "popwin"
        (push '("*quickrun*") popwin:special-display-config))
    (quickrun-add-command "scheme/gosh-r7rs"
                          '((:command . "gosh")
                            (:exec    . "%c -r7 %s"))
                          :default "scheme"
                          :mode 'scheme-mode))

  (req 'web-mode
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

  (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
  (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
  (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

  (req 'rotate
    (muki:global-set-key "C-c C-SPC" 'rotate-layout)
    (muki:global-set-key "C-c C-c C-SPC" 'rotate-window))

  (req 'git-timemachine)

  ;; (req 'smooth-scroll
  ;;      (smooth-scroll-mode nil))

  ;; (req 'yascroll
  ;;      (global-yascroll-bar-mode))

  (req 'flappymacs)

  (req 'yamada
    ;; (muki:global-set-key "C-c C-c C-y" 'yamada-dancing)

    ;; (yamada-dancing 1) ;; or C-c C-c C-y (M-x yamada-dancing)
    ;; (yamada-dancing 5) ;; or C-u 5 C-c C-c C-y
    )

  ;; (req 'init-flyparens)

  (req 'css-eldoc
    (turn-on-css-eldoc))

  (req 'web-beautify
    (eval-after-load 'css-mode
      '(add-hook 'css-mode-hook
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

  (req 'eew)

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

  (req 'highlight-stages
    (add-hook 'emacs-lisp-mode-hook 'highlight-stages-mode)
    (add-hook 'scheme-mode-hook 'highlight-stages-mode))

  (req 'indent-guide
    (add-hook 'emacs-lisp-mode-hook 'indent-guide-mode)
    (add-hook 'scheme-mode-hook 'indent-guide-mode)
    (set-option indent-guide-char "|"))

  (req 'init-elfeed)

  (req 'lorem-ipsum)

  ;; (liby 'slideview
  ;;       (add-hook 'image-mode-hook 'slideview-mode))

  ;; (req 'image+
  ;;      (imagex-auto-adjust-mode 1))

  (req 'init-flycheck)

  (req 'init-multiple-cursors)

  ;; (req 'comment-dwim-2
  ;;   (muki:global-set-key  "M-;" 'comment-dwim-2))

  (req 'init-auto-highlight-symbol)

  (req 'sly-autoloads
    (setq inferior-lisp-program "sbcl"))

  (req 'twittering-mode
    (setq twittering-allow-insecure-server-cert t))

  (req 'coffee-mode)

  (req 'artbollocks-mode
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

  (req 'google-this)

  (req 'golden-ratio
    (enable-mode golden-ratio-mode))

  (req 'nssh)

  (req 'init-popwin)

  (req 'init-tumblesocks)

  (req 'init-rainbow-mode)

  (req 'markdown-mode
    (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode)))

  (req 'google-translate
    (req 'google-translate-default-ui)

    (cl-letf ((mpv (executable-find "mpv")))
      (when mpv
        (set-option google-translate-listen-program mpv)))

    (setq google-translate-default-source-language "en")
    (setq google-translate-default-target-language "fi")
    )

  (req 'charmap
    (setq charmap-text-scale-adjust 2))

  (req 'pt)

  (req 'switch-window
    (global-set-key (kbd "C-x o") 'switch-window)
    (set-option switch-window-shortcut-style 'qwerty)
    (set-option switch-window-qwerty-shortcuts
                '("a" "o" "e" "u" "h" "t" "n" "s" "," "." "c" "r")))


  ;; (req 'js3-mode
  ;;   (add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))
  ;;   )

  ;;;; yasnippet
  ;; (req 'yasnippet
  ;;   (yas-global-mode 1))

;;;;; evil
  (req 'init-evil)

;;;;; helm
  (req 'init-helm)
  (req 'init-helm-ypv)
  (req 'init-helm-alku)
  (liby 'helm-project-buffer
    (autoload 'helm-project-buffer "helm-project-buffer")
    (muki:global-set-key "C-x b" 'helm-project-buffer))
  (req 'init-helm-ag-r)
  ;; (req 'init-helm-ag)
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
