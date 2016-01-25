;;; init-hoarder-registers -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;  register packages
;;;;; helm
(hoarder:register "emacs-helm/helm"
  '(:build ["gmake"]
    :dependency ["jwiegley/emacs-async"]
    :tag "helm"))
(hoarder:fetch "emacs-helm/helm.wiki"
  '(:tag ["helm" "wiki"]))
(hoarder:register "thierryvolpiatto/pcomplete-extension")
(hoarder:register "yuutayamada/helm-ag-r"
  '(:tag ["helm" "ag"]))
(hoarder:register "yasuyk/helm-git-grep"
  '(:tag ["helm" "git"]))
;; (hoarder:register "emacs-helm/helm-migemo"
;;                   '(:tag ("helm" "migemo")))
(hoarder:register "emacs-helm/helm-ls-git"
  '(:tag ["helm" "git"]))
(hoarder:register "emacs-helm/helm-ls-hg"
  '(:tag ["helm" "mercurial"]))
(hoarder:register "emacs-helm/helm-cmd-t"
  '(:tag ["helm"]))
(hoarder:register "ShingoFukuyama/helm-swoop"
  '(:tag ["helm"]))
(hoarder:register "steckerhalter/helm-google"
  '(:tag ["helm" "google"]))
(hoarder:register "syohex/emacs-helm-ag"
  '(:tag ["helm" "ag"]))
(hoarder:register "markus1189/helm-hoogle"
  '(:tag ["helm" "haskell"]))
(hoarder:register "jixiuf/helm-etags-plus"
  '(:tag ["helm"]))
(hoarder:register "syohex/emacs-helm-themes"
  '(:tag ["helm" "theme"]))
(hoarder:register "syohex/emacs-helm-open-github"
  '(:tag ["helm" "github"]
    :dependency [("sigma/gh.el"
                  (:dependency ["sigma/logito"
                                "sigma/pcache"]))]))
(hoarder:register "istib/helm-mode-manager"
  '(:tag ["helm"]))
(hoarder:register "tkf/emacs-pinot-search"
  '(:tag ["helm"]))
(hoarder:register "yasuyk/helm-flycheck"
  '(:tag ["helm" "flycheck"]))
(hoarder:register "emacs-helm/helm-descbinds"
  '(:tag ["helm"]))
(hoarder:register "yasuyk/helm-company"
  '(:dependency ["rejeep/f.el"]
    :tag ["helm" "company"]))
(hoarder:register "emacs-helm/helm-dictionary"
  '(:tag ["helm"]))
(hoarder:register "emacs-helm/helm-recoll"
  '(:tag ["helm"]))
(hoarder:register "mhayashi1120/Emacs-wgrep")
(hoarder:register "ShingoFukuyama/helm-css-scss"
  '(:tag ["helm" "css"]))
(hoarder:register "tmalsburg/helm-bibtex"
  '(:dependency ["joostkremers/ebib"
                 "magnars/s.el"
                 "magnars/dash.el"
                 "rejeep/f.el"
                 "joostkremers/parsebib"]
    :tag ["helm" "bibtex"]))
(hoarder:register "k1LoW/helm-dirset"
  '(:dependency ["rejeep/f.el"
                 "magnars/s.el"
                 ( "emacs-helm/helm"
                  (:build ["gmake"]
                          :dependency ["jwiegley/emacs-async"]
                          :tag "helm"))]))
(hoarder:register "pronobis/helm-words"
  '(:dependency [( "emacs-helm/helm"
                  (:build ["gmake"]
                          :dependency ["jwiegley/emacs-async"]
                          :tag "helm"))]
    :tag ["helm" "dictionary"]))
(hoarder:register "emacs-jp/helm-orgcard"
  '(:tag ["helm" "org"]
    :dependency [( "emacs-helm/helm"
                  (:build ["gmake"]
                          :dependency ["jwiegley/emacs-async"]
                          :tag "helm"))]))
(hoarder:register "lins05/helm-org-files"
  '(:tag ["helm" "org"]
    :dependency [( "emacs-helm/helm"
                  (:build ["gmake"]
                          :dependency ["jwiegley/emacs-async"]
                          :tag "helm"))]))
(hoarder:register "abo-abo/helm-org-wiki"
  '(:tag ["helm" "org"]))
(hoarder:register "csantosb/helm-perso-wiki"
  '(:tag ["helm" "wiki" "org"]
    :dependency ["git://jblevins.org/git/deft.git"
                 ("bbatsov/projectile"
                  (:dependency ["magnars/s.el"
                                "rejeep/f.el"
                                ("magnars/dash.el" (:compile nil))
                                ("lunaryorn/pkg-info.el"
                                 (:dependency ["cask/epl"]))]))
                 "nex3/perspective-el"
                 "Bruce-Connor/names"]))
(hoarder:register "yuutayamada/helm-shell-history"
  '(:tag ["helm" "term"]))
(hoarder:register "david-christiansen/helm-pages"
  '(:tag ["helm"]))
(hoarder:register "vanicat/helm-xmms2"
  '(:tag ["helm" "xmms2"]))
(hoarder:register "julienXX/helm-lobste.rs"
  '(:tag ["helm" "lobste.rs" "news" "web"]))
(hoarder:register "syohex/emacs-helm-hackernews"
  '(:tag ["helm" "hackernews" "news" "web"]))
(hoarder:register "tetracat/sallet"
  '(:tag ["helm"]
    :dependency ["lewang/flx"
                 ("magnars/dash.el" ( :compile nil))
                 "magnars/s.el"
                 "jwiegley/emacs-async"
                 "cask/shut-up"]))
(hoarder:register "Sliim/helm-github-stars"
  '(:tag ["helm" "github"]))
(hoarder:register "ralesi/helm-pt"
  '(:tag ["helm" "pt"]))
(hoarder:register "abo-abo/swiper"
  '(:tag ["isearch"]
    ;; :dependency ["abo-abo/ivy"] ; not yet created
    :desc "Isearch with an overview. Oh, man! "
    :dependency ["abo-abo/hydra"]))
(hoarder:register "abo-abo/swiper-helm"
  '(:tag ["helm" "search"]))
(hoarder:register "emacs-helm/helm-emms"
  '(:tag ["helm" "emms"]))
(hoarder:register "cute-jumper/ace-jump-helm-line"
  '(:dependency ["abo-abo/ace-window"]))
(hoarder:register "shosti/helm-unicode"
  '(:tag ["helm" "unicode"]))
(hoarder:register "jupl/helm-gitignore"
  '(:tag ["helm" "git" "gitignore"]))
(hoarder:register "xuchunyang/helm-commandlinefu")
(hoarder:register "vapniks/helm-helm-commands")
(hoarder:register "emacs-jp/helm-migemo"
  '(:tag ["migemo" "japanese"]))
(hoarder:register "EphramPerdition/helm-fuzzier"
  '(:tag "fuzzy_matching"))
(hoarder:register "PythonNut/helm-flx"
  '(:tag "fuzzy_matching"
    :dependency ["lewang/flx"]))
(hoarder:register "syohex/emacs-helm-japanese-weather")
(hoarder:register "syohex/emacs-helm-kaomoji")
;; (hoarder:register "michael-heerdegen/helm-browse"
;;                  '(:tag ["helm"]
;;                    :dependency ["michael-heerdegen/iterators.el"]))

;;;;; evil
;; TODO nede mercurial support
(hoarder:register (expand-file-name "bitbucket.org/lyro/evil"
                                    (locate-user-emacs-file "vendor"))
  '(:build ["gmake doc all"]
    :info "doc"
    :dependency ["emacsmirror/goto-chg"
                 "http://www.dr-qubit.org/git/undo-tree.git"]
    :tag "evil"))
(hoarder:register "cofi/evil-leader"
  '(:tag "evil"))
(hoarder:register "timcharper/evil-surround"
  '(:tag "evil"))
(hoarder:register "redguardtoo/evil-nerd-commenter"
  '(:tag "evil"))
(hoarder:register "redguardtoo/evil-matchit"
  '(:tag "evil"))
(hoarder:register "Dewdrops/evil-exchange"
  '(:tag "evil"))
(hoarder:register "edwtjo/evil-org-mode"
  '(:tag "evil"))
(hoarder:register "bling/evil-visualstar"
  '(:tag "evil"))
(hoarder:register "tarao/evil-plugins"
  '(:tag "evil"))
(hoarder:register "tarleb/evil-rebellion"
  '(:tag "evil"))
(hoarder:register "AshleyMoni/evil-sneak"
  '(:tag "evil"))
;;(hoarder:register "juanjux/evil-search-highlight-persist"
;;                 '(:tag "evil"
;;                   :dependency ["emacsmirror/highlight"]))
(hoarder:register "sunesimonsen/evil-walk-on-the-edge"
  '(:tag "evil"))
(hoarder:register "bling/evil-jumper"
  '(:tag "evil"))
(hoarder:register "roman/evil-paredit"
  '(:tag "evil"))
(hoarder:register "Dewdrops/evil-extra-operator"
  '(:tag "evil"))
(hoarder:register "cofi/evil-indent-textobject"
  '(:tag "evil"))
(hoarder:register "linktohack/evil-space"
  '(:tag "evil"))
;; (hoarder:register "jschaf/evil-smartparens"
;;                  '(:tag "evil"))
(hoarder:register "expez/evil-smartparens"
  '(:tag ["evil" "smartparens"]))
(hoarder:register "nadavspi/evil-linewise"
  '(:dependency ["emacsmirror/move-text"]
    :tag "evil"))
(hoarder:register "TheBB/evil-paragraph-textobject"
  '(:tag "evil"))
(hoarder:register "syl20bnr/evil-lisp-state"
  '(:dependency ["Fuco1/smartparens"
                 "justbur/emacs-bind-map"]
    :compile nil
    :tag "evil"))
(hoarder:register "syl20bnr/evil-escape"
  '(:tag "evil"
    :dependency ["emacsmirror/key-chord"]))
(hoarder:register "gridaphobe/evil-god-state"
  '(:tag "evil"
    :dependency ["chrisdone/god-mode"]))
(hoarder:register "tarleb/evil-scout")
(hoarder:register "PythonNut/evil-easymotion"
  '(:tag "evil"
    :dependency ["abo-abo/avy"
                 "nicferrier/emacs-noflet"]))
(hoarder:register "hlissner/evil-snipe"
  '(:tag "evil"
    :dependency [( "https://gitorious.org/evil/evil.git"
                  (:build ["gmake doc all"]
                          :info "doc"
                          :dependency ["emacsmirror/goto-chg"
                                       "http://www.dr-qubit.org/git/undo-tree.git"]
                          :tag "evil"))]))
(hoarder:register "linktohack/evil-commentary"
  '(:tag "evil"))
(hoarder:register "syl20bnr/evil-tutor"
  '(:tag ["evil" "tutorial"]))
(hoarder:register "roman/evil-visual-mark-mode"
  '(:tag ["evil"]))
(hoarder:register "bcarrell/evil-lispy"
  '(:tag ["evil" "lispy"]
    :dependency [("abo-abo/lispy"
                  (:dependency ["sviridov/undercover.el"]))]))
(hoarder:register "linktohack/evil-rsi")
(hoarder:register "luxbock/evil-cleverparens"
  '(:dependency ["rejeep/drag-stuff.el"
                 "http://mumble.net/~campbell/git/paredit.git"
                 "Fuco1/smartparens"]))
;; (hoarder:register "lotabout/evil-mc"
;;                   '(:tag ["evil" "multiple-cursor"]))
(hoarder:register "gabesoft/evil-mc"
  '(:tag ["evil" "multiple-cursor"]))
(hoarder:register "willghatch/emacs-on-parens"
  '(:tag ["evil" "smartparens"]
    :dependency ["Fuco1/smartparens"
                 "magnars/dash.el"]))
(hoarder:register "syl20bnr/evil-iedit-multiple-cursors"
  '(:tag ["evil" "multiple-cursors"]))
(hoarder:register "vyp/evil-quick-scope"
  '(:tag ["evil"]))
(hoarder:register "blorbx/evil-quickscope"
  '(:tag ["evil"]))
(hoarder:register "louy2/evil-avy"
  '(:tag ["evil" "avy"]))
(hoarder:register "noctuid/evil-textobj-anyblock"
  '(:tag ["evil" "textobj"]))
(hoarder:register "syl20bnr/evil-iedit-state"
  '(:tag ["evil" "iedit"]
    :dependency ["tsdh/iedit"]))
(hoarder:register "justbur/emacs-bind-map"
  '(:tag ["evil" "key_binding"]))

;;;;;  general packages
(hoarder:register "magnars/s.el")
(hoarder:register "jonathanchu/emacs-powerline")
(hoarder:register "raugturi/powerline-evil"
  '(:tag ["evil" "mode-line"]))
(hoarder:register "milkypostman/powerline"
  '(:tag ["mode-line"]))
(hoarder:register "unic0rn/powerline"
  '(:tag ["mode-line"]))
(hoarder:register "TeMPOraL/nyan-mode")
(hoarder:register "daimrod/highlight-sexp")
(hoarder:register "m2ym/undohist-el")
;; (hoarder:register "m2ym/emux-el")
(hoarder:register "moriyamahiroshi/seijiseikana-el")
(hoarder:register "kenoss/debug-print")
;; (hoarder:register "emacsmirror/mew")
(hoarder:register "kazu-yamamoto/Mew")
(hoarder:register "ober/zone-matrix")
(hoarder:register "wwwjfy/emacs-fish"
  '(:tag "fish"))
(hoarder:register "jramnani/fish-mode"
  '(:tag "fish"))
(hoarder:register "d12frosted/fish-mode"
  '(:tag "fish"))
(hoarder:register "thierryvolpiatto/emacs-bmk-ext")
(hoarder:register "kawabata/aozora-view")
(hoarder:register "tomoya/fuzzyjump.el")
(hoarder:register "omouse/emacs-sos")
(hoarder:register "davexunit/yon-chan")
(hoarder:register "git://git.sv.gnu.org/emms.git"
  '(:name "emms" :load-path "lisp"
    :build ["gmake lisp docs emms-print-metadata"]
    :tag "emms"))
(hoarder:register "fgallina/emms-info-mediainfo"
  '(:tag "emms"))
(hoarder:register "osener/emms-soundcloud"
  '(:tag ["emms" "soundcloud"]))
(hoarder:register "vapniks/emms-mark-ext"
  '(:tag ["emms"]
    :desc "Extra functions for tagging tracks in emms mode in emacs. "))
(hoarder:register "dochang/emms-player-mpv"
  '(:tag ["emms" "mpv"]))
(hoarder:register "momomo5717/emms-player-mpv-volume"
  '(:tag ["emms" "mpv"]))
(hoarder:register "alezost/emms-status.el"
  '(:tag ["emms"]))
(hoarder:register "r0man/soundklaus.el"
  '(:dependency [("magnars/dash.el" ( :compile nil))
                 "magnars/s.el"
                 "kiwanami/emacs-deferred"]
    :tag "soundcloud"))

(hoarder:register "magit/git-modes"
  '(:tag "git"))
(hoarder:register "magit/magit"
  '(:build ["gmake clean lisp docs"]
    :info "Documentation"
    :load-path ["lisp"]
    :dependency [("magnars/dash.el" ( :compile nil))
                 ("jwiegley/emacs-async")]
    :tag "git"))
(hoarder:register "magit/orgit"
  '(:tag ["git" "org" "magit"]))
(hoarder:register "mickesv/magit-overview"
  '(:tag ["magit"]))
(hoarder:register "magit/magit-filenotify"
  '(:tag ["magit"]))
(hoarder:register "dholm/magit-idle-breadcrumbs"
  '(:tag ["magit"]))
;; (hoarder:register "magit/evil-magit"
;;                   '(:tag ["magit"]))
(hoarder:register "justbur/evil-magit"
  '(:tag ["evil" "magit"]))
(hoarder:register "YoungFrog/git-overview"
  '(:tag ["git" "org"]))
(hoarder:register "company-mode/company-mode"
  '(:tag "company"))
(hoarder:register "proofit404/company-edbi"
  '(:tag "company"
    :dependency ["company-mode/company-mode"]))
(hoarder:register "vspinu/company-math"
  '(:tag "company"
    :dependency ["company-mode/company-mode"
                 "vspinu/symbols.el"]))
(hoarder:register "iquiw/company-restclient"
  '(:tag "company"
    :dependency ["company-mode/company-mode"
                 ("for-GET/know-your-http-well"
                  (:load-path "emacs"))]))
(hoarder:register "dunn/company-emoji"
  '(:tag ["company" "emoji"]
    :dependency ["company-mode/company-mode"]))
(hoarder:register "expez/company-quickhelp"
  '(:tag ["company"]
    :dependency ["pitkali/pos-tip"]))
(hoarder:register "company-mode/company-statistics"
  '(:tag ["company" "auto_completion"]
    :dependency ["company-mode/company-mode"]))
(hoarder:register "syohex/emacs-git-gutter"
  '(:tag "git"))
(hoarder:register "syohex/emacs-git-gutter-fringe"
  '(:tag ["git"]
    :dependency ["syohex/emacs-git-gutter"
                 "nschum/fringe-helper.el"]))
(hoarder:register "nonsequitur/git-gutter-fringe-plus"
  '(:tag ["git"]
    :dependency ["nonsequitur/git-gutter-plus"
                 "nschum/fringe-helper.el"]))
(hoarder:register "syohex/emacs-rebuildfm"
  '(:tag "radio"))
(hoarder:register "syohex/emacs-anzu" '(:compile nil))
(hoarder:register "syohex/emacs-evil-anzu"
  '(:tag ["evil" "anzu"]
    :dependency [("syohex/emacs-anzu" (:compile nil))
                 ( "https://gitorious.org/evil/evil.git"
                  (:build ["gmake doc all"]
                          :info "doc"
                          :dependency ["emacsmirror/goto-chg"
                                       "http://www.dr-qubit.org/git/undo-tree.git"]
                          :tag "evil"))]))
(hoarder:register "Fuco1/smartparens"
  '(:compile nil :dependency [("magnars/dash.el" ( :compile nil))]))
(hoarder:register "magnars/expand-region.el")
(hoarder:register "magnars/multiple-cursors.el")
(hoarder:register "knu/mc-extras.el"
  '(:tag ["multiple-cursors"]))
(hoarder:register "haskell/haskell-mode"
  '(:tag "haskell"
    :compile nil
    :build ["gmake clean all"]))
(hoarder:register "nilcons/hi2"
  '(:tag "haskell"))
(hoarder:register "kazu-yamamoto/ghc-mod"
  '(:tag ["ghc" "haskell"]
    :load-path "elisp"))
(hoarder:register "Bruce-Connor/paradox"
  '(:dependency ["magnars/dash.el"
                 "jwiegley/emacs-async"
                 "Malabarba/spinner.el"
                 "abo-abo/hydra"]))
(hoarder:register "Bruce-Connor/aggressive-indent-mode"
  '(:dependency ["Bruce-Connor/names"]))
(hoarder:register "Bruce-Connor/rich-minority")
(hoarder:register "steckerhalter/google-el")
(hoarder:register "daemianmack/magit-cheatsheet"
  '(:tag "magit"))
(hoarder:register "re5et/itail")
(hoarder:register "syohex/emacs-quickrun")
(hoarder:register "fxbois/web-mode" '(:compile nil))
(hoarder:register "emacsmirror/auto-highlight-symbol")
(hoarder:register "nschum/highlight-symbol.el")
(hoarder:register "emacsmirror/rainbow-mode")
(hoarder:register "skeeto/elfeed"
  '(:tag "rss"))
(hoarder:register "remyhonig/elfeed-org"
  '(:dependency ["skeeto/elfeed"]
    :tag ["org" "rss"]))
(hoarder:register "zk-phi/spray")
(hoarder:register "dominikh/go-mode.el")
(hoarder:register "immerrr/lua-mode")
(hoarder:register "daic-h/emacs-rotate")
(hoarder:register "pidu/git-timemachine")
(hoarder:register "k-talo/smooth-scroll.el")
(hoarder:register "m2ym/yascroll-el")
(hoarder:register "emacs-jp/migemo")
(hoarder:register "taksatou/flappymacs")
(hoarder:register "gongo/yamada-el")
(hoarder:register "jiyoo/flyparens")
(hoarder:register "flycheck/flycheck"
  '(:dependency ["magnars/dash.el"
                 "cask/shut-up"]
    :info "."))
(hoarder:register "flycheck/flycheck-pos-tip"
  '(:dependency ["auto-complete/popup-el"]))
(hoarder:register "purcell/flycheck-package"
  '(:tag ["flycheck"]))
(hoarder:register "zenozeng/css-eldoc")
(hoarder:register "yasuyk/web-beautify")
(hoarder:register "mhayashi1120/Emacs-slideview")
(hoarder:register "mhayashi1120/Emacs-imagex")
(hoarder:register "mhayashi1120/Emacs-image-diredx"
  '(:tag ["dired" "image"]))
(hoarder:register "kiwanami/emacs-window-manager"
  '(:dependency ["kiwanami/emacs-window-layout"]))
(hoarder:register "m2ym/direx-el"
  '(:dependency ["m2ym/popwin-el"]))
(hoarder:register "aki2o/e2wm-direx"
  '(:dependency ["kiwanami/emacs-window-manager"
                 "m2ym/direx-el"]))
(hoarder:register "yu-i9/oniisama")
(hoarder:register "nicferrier/emacs-web"
  '(:dependency ["magnars/dash.el"
                 "magnars/s.el"]))
(hoarder:register "nicferrier/elnode"
  '(:dependency ["nicferrier/emacs-fakir"
                 "nicferrier/emacs-kv"
                 "nicferrier/emacs-db"
                 "nicferrier/emacs-noflet"
                 ]))
(hoarder:register "nicferrier/emacs-web"
  '(:dependency ["nicferrier/elnode"]))
(hoarder:register "syohex/emacs-eew")
(hoarder:register "escherdragon/sunrise-commander"
  '(:compile nil))
;; (hoarder:register "http://git.gnus.org/gnus.git"
;;                  '(:build ["./configure" "gmake"]
;;                    :load-path ["lisp" "contrib"]))
(hoarder:register "dholm/tabbar")
;; (hoarder:register "aki2o/guide-key-tip"
;;                 '(:dependency ["kbkbkbkb1/guide-key"
;;                          "emacsmirror/pos-tip"]))
(hoarder:register "clojure-emacs/clojure-mode"
  '(:tag ["clojure"]))
(hoarder:register "clojure-emacs/cider"
  '(:tag ["clojure"]
    :dependency ["emacsmirror/queue"]))
(hoarder:register "krisajenkins/clojure-cheatsheet"
  '(:tag ["clojure"]
    :dependency ["clojure-emacs/cider"]))
(hoarder:register "andrewmains12/clojurescript-mode"
  '(:tag ["clojure"]))
(hoarder:register "Fanael/rainbow-delimiters")
(hoarder:register "zk-phi/highlight-stages")
(hoarder:register "zk-phi/indent-guide")
(hoarder:register "jschaf/emacs-lorem-ipsum")
(hoarder:register "remyferre/comment-dwim-2")
(hoarder:register "capitaomorte/sly"
  '(:build ["gmake compile contrib-compile"]))
(hoarder:register "capitaomorte/sly-company"
  '(:tag ["common_lisp" "completion" "company" "sly"]))
(hoarder:register "PuercoPop/sly-repl-ansi-color"
  '(:tag ["sly"]))
(hoarder:register "slime/slime"
  '(:tag ["common_lisp"]))
(hoarder:register "hayamiz/twittering-mode"
  '(:tag ["twitter"]))
(hoarder:register "mhayashi1120/Emacs-twittering-stream"
  '(:tag ["twitter"]))
(hoarder:register "zonuexe/twindrill-mode"
  '(:tag ["twitter"]))
(hoarder:register "defunkt/coffee-mode")
(hoarder:register "fbkante/recycle")
(hoarder:register "kawabata/ids-edit")
(hoarder:register "gbalats/autodisass-llvm-bitcode")
(hoarder:register "sachac/artbollocks-mode")
(hoarder:register "alpaker/Fill-Column-Indicator"
  '(:desc "Graphically indicate the fill column"))
(hoarder:register "tungd/color-theme-approximate")
(hoarder:register "http://www.dr-qubit.org/git/undo-tree.git")
(hoarder:register "Bruce-Connor/emacs-google-this")
(hoarder:register "roman/golden-ratio.el")
(hoarder:register "winterTTr/ace-jump-mode" )
(hoarder:register "ieure/nssh-el")
(hoarder:register "mhayashi1120/japanlaw.el")
(hoarder:register "roman/navorski.el"
  '(:dependency ["magnars/s.el"
                 ("magnars/dash.el" ( :compile nil))
                 "emacsmirror/multi-term"]))
(hoarder:register "febuiles/lyricwiki.el")
(hoarder:register "sabof/svg-mode-line-themes"
  '(:dependency ["philjackson/xmlgen"]))
(hoarder:register "naota/navi2ch"
  '(:build ["./configure" "gmake"]))
(hoarder:register "purcell/elisp-slime-nav")
(hoarder:register "gcr/tumblesocks"
  '(:dependency ["psanford/emacs-oauth"
                 "git://jblevins.org/git/markdown-mode.git"
                 "emacsmirror/htmlize"]
    :tag "tumblr"))
(hoarder:register "thomblake/js3-mode"
  '(:tag "javascript"))
(hoarder:register "mooz/js2-mode"
  '(:tag "javascript"))
(hoarder:register "jd/google-maps.el")
(hoarder:register "atykhonov/google-translate")
(hoarder:register "lateau/charmap")
(hoarder:register "bling/pt.el")
(hoarder:register "camdez/goto-last-change.el")
(hoarder:register "dimitri/switch-window")
(hoarder:register "rnkn/olivetti")
;; (hoarder:register "emacsmirror/diminish")
(hoarder:register "myrjola/diminish.el")
(hoarder:register "ShingoFukuyama/emacs-emoji-cheat-sheet"
  '(:tag "emoji"))
(hoarder:register "syl20bnr/emacs-emoji-cheat-sheet-plus"
  '(:tag "emoji"))
(hoarder:register "antonj/Highlight-Indentation-for-Emacs")
(hoarder:register "mcandre/vimrc-mode" '(:tag "vim"))
(hoarder:register "tsdh/iedit")
(hoarder:register "gaudecker/mip-mode")
(hoarder:register "mugijiru/cat-mode")
(hoarder:register "syl20bnr/vi-tilde-fringe"
  '(:tag "vi"))
(hoarder:register "jmickelin/vim-empty-lines-mode"
  '(:tag "vim"
    :desc " Vim-like empty line indicator at end of files for Emacs. "))
(hoarder:register "Fanael/highlight-defined")
(hoarder:register "Bruce-Connor/conkeror-minor-mode")
(hoarder:register "larsmagne/movie.el"
  '(:dependency ["larsmagne/pvr.el"
                 "larsmagne/imdb.el"]
    :desc "http://lars.ingebrigtsen.no/2011/04/12/emacs-movie-browser" ))
;; csid make eww unusable because of dom.el
;; (hoarder:register "larsmagne/csid"
;;                  '(:desc "http://lars.ingebrigtsen.no/2013/09/crowdsourcing-is-dead.html"))
(hoarder:register "gregsexton/httprepl.el"
  '(:tag ["http" "repl"]))
(hoarder:register "nicferrier/emacs-twaddle"
  '(:tag ["twitter"]
    :dependency ["VincentToups/shadchen-el"
                 "nicferrier/emacs-kv"
                 "magnars/dash.el"
                 "nicferrier/emacs-web"
                 "nicferrier/emacs-noflet"
                 "nicferrier/elnode"]))
;; (hoarder:register "https://bitbucket.org/ukaszg/aria2.git"
;;                  '(:tag "aria2" ))
(hoarder:register "m00natic/eww-lnum"
  '(:tag "eww"))
(hoarder:register "yoshiki/yaml-mode")
(hoarder:register "ijp/mbe.el")
(hoarder:register "emacsmirror/info-plus" )
(hoarder:register "kaihaosw/eshell-prompt-extras"
  '(:tag "eshell"))
(hoarder:register "yuutayamada/eshell-better-prompt"
  '(:tag "eshell"))
(hoarder:register "syohex/emacs-eshellutil"
  '(:tag ["eshell"]))
(hoarder:register "syohex/emacs-smeargle"
  '(:tag ["git" "highlight"]))
(hoarder:register "syohex/emacs-git-messenger"
  '(:tag ["git"]
    :dependency ["auto-complete/popup-el"]))
(hoarder:register "abo-abo/ace-link"
  '(:dependency ["winterTTr/ace-jump-mode"
                 "nicferrier/emacs-noflet"]))
(hoarder:register "kenoss/erfi"
  '(:tag ["scheme" "srfi"]))
(hoarder:register "nicferrier/eshell-manual"
  '(:load-path ["dist"]
    :build ["gmake"]
    :info "dist"
    :tag "eshell"))
(hoarder:register "jschaf/esup")
(hoarder:register "vermiculus/sx.el"
  '(:dependency ["git://jblevins.org/git/markdown-mode.git"]))
(hoarder:register "nlamirault/emacs-travis"
  '(:dependency ["magnars/s.el"
                 ("magnars/dash.el" ( :compile nil))
                 ( "lunaryorn/pkg-info.el"
                  (:dependency ["cask/epl"]))
                 "tkf/emacs-request"]
    :tag ["travis"]))
(hoarder:register "aJchemist/linkmap.el")
(hoarder:register "alezost/mana.el"
  '(:tag ["manaplus"]))
(hoarder:register "ichibeikatura/nipposi")
(hoarder:register "clarete/hackernews.el"
  '(:tag ["hackernews"]))
(hoarder:register "c41x/hnr.el"
  '(:tag ["hackernews"]))
(hoarder:register "kkholst/SuperMan"
  '(:tag ["org"]
    :load-path ["lisp"]))
(hoarder:register "jacksonrayhamilton/context-coloring"
  '(:tag ["javascript"]
    :build ["npm install"]))
(hoarder:register "jeremy-compostella/project-manager"
  '(:tag ["project"]))
(hoarder:register "Fuco1/better-jump"
  '(:tag ["ace-jump"]
    :dependency ["ShingoFukuyama/ov.el"]))
(hoarder:register "Fuco1/free-keys")
(hoarder:register "Fuco1/banana.el"
  '(:tag ["monad"]))
(hoarder:register "josteink/csharp-mode"
  '(:tag ["C#"]
    :compile nil))
(hoarder:register "sensorflo/sln-mode")
(hoarder:register "Bruce-Connor/camcorder.el"
  '(:tag ["screencast"]
    :dependency ["Bruce-Connor/names"]))
(hoarder:register "matthewlmcclure/dircmp-mode")
(hoarder:register "agpchil/url-preview.el"
  '(:dependency [("magnars/dash.el" ( :compile nil))]))
(hoarder:register "emacsfodder/kurecolor"
  '(:dependency ["magnars/s.el"]))
(hoarder:register "cmpitg/emnode")
(hoarder:register "wasamasa/shackle"
  '(:compile nil))
(hoarder:register "sabof/stripe-buffer")
(hoarder:register "chrisbarrett/skeletor.el"
  '(:build ["gmake"]))
(hoarder:register "promethial/paxedit"
  '(:dependency ["http://mumble.net/~campbell/git/paredit.git"]))
(hoarder:register "tlh/workgroups.el"
  '(:tag ["window"]))
(hoarder:register "wasamasa/eyebrowse"
  '(:dependency [("magnars/dash.el" ( :compile nil))]))
(hoarder:register "idomagal/Tabula-Rasa"
  '(:tag ["writing" "distraction free"]))
(hoarder:register "capitaomorte/darkroom"
  '(:tag ["writing" "distraction free"]))
(hoarder:register "vspinu/image-transform"
  '(:tag "image"
    :compile nil))
(hoarder:register "gongo/json-reformat"
  '(:tag "json"
    :dependency ["sviridov/undercover.el"]))
(hoarder:register "joshwnj/json-mode"
  '(:tag "json"
    :dependency ["Sterlingg/json-snatcher"
                 "gongo/json-reformat"]))
(hoarder:register "hchbaw/bqlist-lock.el")
(hoarder:register "fgeller/leerzeichen.el"
  '(:tag ["whitespace" "highlight"]))
(hoarder:register "abo-abo/anon"
  '(:tag ["namespace"]))
(hoarder:register "chrisbarrett/emacs-refactor"
  '(:tag ["refactoring"]
    :dependency [("magnars/dash.el" (:compile nil))
                 "rolandwalker/list-utils"
                 "http://mumble.net/~campbell/git/paredit.git"
                 "auto-complete/popup-el"
                 ("bbatsov/projectile"
                  (:dependency ["magnars/s.el"
                                "rejeep/f.el"
                                ("magnars/dash.el" (:compile nil))
                                ("lunaryorn/pkg-info.el"
                                 (:dependency ["cask/epl"]))]))
                 "emacsmirror/redshank"
                 "magnars/s.el"]))
(hoarder:register "rakete/pixel-mode"
  '(:tag ["pixel_art"]))
(hoarder:register "yuttie/initchart")
(hoarder:register "bburns/clipmon")
(hoarder:register "purcell/whitespace-cleanup-mode"
  '(:tag ["whitespace"]))
(hoarder:register "emacsmirror/emoticons")
(hoarder:register "zonuexe/pixiv-novel-mode.el")
(hoarder:register "jhgorrell/ssh-config-mode-el"
  '(:tag "ssh"))
(hoarder:register "dtaht/comics-el"
  '(:tag ["comic"]))
(hoarder:register "kljohann/clang-format.el"
  '(:tag "clang"))
(hoarder:register "saintaardvark/meleme"
  '(:tag ["mode-line"]))
(hoarder:register "10sr/shell-split-string-el"
  '(:tag "shell"))
(hoarder:register "kiwanami/emacs-kovlive"
  '(:dependency ["kiwanami/emacs-deferred"]))
(hoarder:register "ieure/ssh-el"
  '(:tag "ssh"))
(hoarder:register "tarsius/hl-todo"
  '(:tag ["highlight" "font-lock"]))
(hoarder:register "ifree/emacs-code-playground")
(hoarder:register "ikirill/hl-indent"
  '(:tag ["highlight" "indentation"]))
(hoarder:register "AeroFengBlade/typewriter-mode")
(hoarder:register "ahyatt/emacs-websocket"
  '(:tag ["websocket"]))
(hoarder:register "syohex/emacs-realtime-markdown-viewer"
  '(:tag "markdown"))
(hoarder:register "jscheid/kite")
(hoarder:register "wasamasa/form-feed")
(hoarder:register "emacsmirror/aumix-mode"
  '(:tag ["aumix" "audio"]))
(hoarder:register "kuanyui/writing-utils.el"
  '(:tag ["writing"]))
(hoarder:register "joodland/bm"
  '(:tag ["bookmark"]))
(hoarder:register "mhayashi1120/Emacs-image-archive"
  '(:tag ["image" "archive"]))
(hoarder:register "zk-phi/download-region"
  '(:tag ["download"]
    :desc "simple in-buffer download manager for Emacs"))
(hoarder:register "knu/dired-fdclone.el"
  '(:tag ["dired" "fclone"]))
(hoarder:register "Fuco1/dired-hacks")
(hoarder:register "syohex/emacs-literate-coffee-mode"
  '(:dependency ["defunkt/coffee-mode"]
    :tag ["coffeescript"]))
(hoarder:register "tarsius/elx"
  '(:desc "Extract information from Emacs Lisp libraries"))
(hoarder:register "thisirs/state"
  '(:tag ["workspace"]
    :desc "Quick navigation between workspaces in emacs"))
(hoarder:register "lunaryorn/fancy-battery.el"
  '(:tag ["appearance" "mode-line"]))
(hoarder:register "csrhodes/iplayer-el"
  '(:tag ["bbc"]
    :desc "Emacs interface to the BBC's iPlayer (uses get_iplayer)"))
(hoarder:register "sigma/marshal.el"
  '(:tag ["eieio"]
    :desc " eieio extension for automatic (un)marshalling"))
(hoarder:register "zk-phi/phi-grep"
  '(:tag ["grep"]
    :desc "Interactively-editable recursive grep implementation in elisp"))
(hoarder:register "tarsius/packed"
  '(:tag ["package"]
    :desc "package manager agnostic Emacs Lisp package utilities"))
(hoarder:register "ainame/smart-newline.el"
  '( :site "http://ainame.hateblo.jp/entry/2013/12/08/162032"))
(hoarder:register "xuchunyang/one.el"
  '(:desc "Read several news sources within Emacs"))
(hoarder:register "rakete/pixel-mode"
  '(:desc "Make pixel art in emacs buffers."
    :tag ["pixel_art"]))
(hoarder:register "bmag/emacs-purpose"
  '(:tag ["workspace"]))
(hoarder:register "ajsquared/env-var-import"
  '(:desc "Import shell environment variables in GUI Emacs "))
(hoarder:register "emacsmirror/ob-speak"
  '(:tag ["org" "espeak" "org-babel"]
    :desc "espeak speech synthesis for org-babel blocks"))
(hoarder:register "vapniks/syslog-mode"
  '(:tag ["log"]
    :dependency ["vapniks/hide-lines"]
    :desc "Emacs major-mode for viewing log files "))
(hoarder:register "chrisbarrett/skeletor.el"
  '(:desc "Powerful project skeletons for Emacs"
    :dependency ["sviridov/undercover.el"]))
(hoarder:register "steckerhalter/emacs-fasd"
  '(:tag ["fasd"]
    :dependency ["d11wtq/grizzl"]
    :desc "An Emacs extension to integrate Fasd"))
(hoarder:register "steckerhalter/ipretty"
  '(:desc "Interactive Emacs Lisp pretty-printing "))
(hoarder:register "tarao/bundle-el"
  '(:tag ["el-get" "package_manager"]))
(hoarder:register "Bruce-Connor/fancy-narrow"
  '(:tag ["narrowing"]))
(hoarder:register "DalekBaldwin/highlight-backquotes-mode"
  '(:tag ["highlight"]))
(hoarder:register "vibhavp/emacs-xkcd"
  '(:tag ["xkcd" "comic"]
    :desc "Implementation of an xkcd (http://xkcd.com/) reader for Emacs."))
(hoarder:register "emacsmirror/bytecomp-simplify"
  '(:tag ["bytecomp"]
    :desc "byte compile warnings for simplifications"))
(hoarder:register "Lindydancer/lisp-extra-font-lock"
  '(:tag ["highlight"]))
(hoarder:register "xuchunyang/youdao-dictionary.el"
  '(:tag ["chinese"]
    :dependency ["auto-complete/popup-el"
                 "xuchunyang/chinese-word-at-point.el"]))
(hoarder:register "xuchunyang/google-translate-chinese.el"
  '(:tag ["chinese" "translation"]
    :dependency ["auto-complete/popup-el"
                 "xuchunyang/chinese-word-at-point.el"]))
(hoarder:register "rolandwalker/unicode-fonts"
  '(:tag ["font" "unicode"]))
(hoarder:register "sanryuu/emacs-bijin-tokei")
(hoarder:register "Benaiah/seethru"
  '(:tag ["appearance" "transparency"]
    :desc "seethru.el - easily change Emacs transparency "))
(hoarder:register "russell/elisp-slime-expand"
  '(:tag ["emacs_lisp" "macro"]))
(hoarder:register "tam17aki/summarye")
(hoarder:register "emacsmirror/top-mode"
  '(:tag ["top"]))
(hoarder:register "dbrock/bongo"
  '(:tag ["music" "bongo"]))
(hoarder:register "syohex/emacs-eww-hatebu"
  '(:tag ["eww" "hatena_bookmark"]
    :desc "Hatena bookmark count in mode-line"))
(hoarder:register "nlamirault/dionysos"
  '(:tag ["music"]
    :desc "A music player for Emacs "))
(hoarder:register "thisirs/vc-check-status"
  '(:tag ["vcs" "git"]))
(hoarder:register "syohex/emacs-gitignore"
  '(:tag ["git" "gitignore"]))
(hoarder:register "fgallina/region-bindings-mode"
  '(:tag ["region"]))
(hoarder:register "zk-phi/jaword"
  '(:tag ["japanese" "movement"]
    :dependency [("myuhe/tinysegmenter.el"
                  (:tag ["japanese"]))]))
(hoarder:register "xahlee/xah-elisp-mode"
  '(:tag ["emacs-lisp"]))
(hoarder:register "asok/peep-dired"
  '(:tag ["dired"]))
(hoarder:register "jixiuf/dired-filetype-face"
  '(:tag ["dired"]))
(hoarder:register "aaronbieber/sunshine.el"
  '(:tag ["weather" "forecast"]))
(hoarder:register "Dewdrops/visual-ascii-mode"
  '(:tag ["ascii"]))
(hoarder:register "nex3/perspective-el"
  '(:tag ["workspace"]))
(hoarder:register "niku/realtime-preview.el"
  '(:tag ["html" "preview" "markdown"]))
(hoarder:register "zk-phi/symon"
  '(:tag ["system" "monitor"]))
(hoarder:register "wanderlust/wanderlust"
  '(:tag ["mail"]
    :build ["gmake"]
    :dependency ["wanderlust/flim"
                 "wanderlust/semi"
                 "wanderlust/apel"]))
(hoarder:register "syohex/emacs-itunes-bgm"
  '(:tag ["music" "itunes"]))
(hoarder:register "andyetitmoves/libmpdee"
  '(:tag ["mpd" "music"]))
(hoarder:register "osanai3/eshell-tree"
  '(:tag ["eshell"]))
(hoarder:register "nobrowser/dig-browser"
  '(:tag ["dig" "dns"]))
(hoarder:register "hagleitn/unicode-emoticons"
  '(:tag ["unicode" "emoticon"]))
(hoarder:register "ryuslash/kaarvok"
  '(:tag ["project" "template"]))
(hoarder:register "bmag/emacs-purpose"
  '(:tag ["window" "layout"]))
(hoarder:register "git://git.savannah.gnu.org/tramp.git"
  '(:tag ["tramp" "ssh"]
    :build ["autoconf" "./configure" "gmake"]
    :load-path ["lisp"]
    :info "info"))
(hoarder:register "ataka/emacs-wget"
  '(:tag ["wget"]))
(hoarder:register "rmuslimov/browse-at-remote"
  '(:tag ["github" "bitbucket" "git"]
    :dependency ["magnars/s.el"
                 "rejeep/f.el"]))
(hoarder:register "chillaranand/real-auto-save"
  '(:tag ["autosave"]))
(hoarder:register "kentaro/auto-save-buffers-enhanced")
(hoarder:register "m2ym/compilation-highlight-el")
(hoarder:register "ongaeshi/auto-shell-command"
  '(:dependency ["kiwanami/emacs-deferred"]
    :desc "Run the shell command **asynchronously** that you specified when you save the file."))
(hoarder:register "chumpage/chumpy-windows"
  '(:tag ["window" "layout"]))
(hoarder:register "kljohann/mpv.el"
  '(:dependency ["Bruce-Connor/names"
                 ( "git://orgmode.org/org-mode.git"
                  (:load-path ["lisp" "contrib/lisp"]
                              :compile nil
                              :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
                              :info "doc"
                              :tag "org"))]))
(hoarder:register "danielsz/Palimpsest")
(hoarder:register "rolandwalker/ignoramus")
(hoarder:register "anler/centered-window-mode"
  '(:tag ["writing"]))
(hoarder:register "milkypostman/hl-sentence"
  '(:tag ["writing" "reading" "highlight"]))
(hoarder:register "joostkremers/writeroom-mode"
  '(:tag ["writing"]
    :dependency ["joostkremers/visual-fill-column"]))
(hoarder:register "gongo/emacs-ikku"
  '(:tag ["haiku" "mecab" "japanese"]
    :dependency ["magnars/dash.el"
                 "sviridov/undercover.el"]))
(hoarder:register "ThibautVerron/echo-sth.el")
(hoarder:register "10sr/git-command-el"
  '(:tag ["git"]))
(hoarder:register "purcell/default-text-scale"
  '(:tag ["font"]))
(hoarder:register "theBlackDragon/fvwm-mode"
  '(:tag ["fvwm"]))
(hoarder:register "tjim/nevermore"
  '(:tag ["mail" "notmuch"]
    :dependency ["emacsmirror/peg"]))
(hoarder:register "syohex/emacs-import-popwin"
  '(:tag ["popwin"]))
(hoarder:register "johanclaesson/picpocket"
  '(:tag ["image_viewer"]))
(hoarder:register "kakakaya/random-splash-image"
  '(:tag ["splash"]))
(hoarder:register "fgeller/highlight-thing.el"
  '(:tag ["highlight"]))
(hoarder:register "baohaojun/bbyac"
  '(:tag ["completion"]
    :dependency ["browse-kill-ring/browse-kill-ring"]))
(hoarder:register "jorgenschaefer/emacs-buttercup"
  '(:tag ["testing"]))
(hoarder:register "dgutov/diff-hl"
  '(:tag ["git"]))
(hoarder:register "Bruce-Connor/elisp-bug-hunter")
(hoarder:register "lokedhs/em-translate"
  '(:tag ["google_translate"]
    :dependency ["emacsmirror/http-post-simple"]))
(hoarder:register "toroidal-code/cycle-themes.el"
  '(:tag ["theme"]))
(hoarder:register "uk-ar/smart-region"
  '(:tag ["region" "mark"]
    :dependency ["magnars/expand-region.el"
                 "magnars/multiple-cursors.el"]))
(hoarder:register "sellout/emacs-unimode"
  '(:tag ["unicode" "mode-line"]))
(hoarder:register "tuhdo/semantic-refactor"
  '(:tag ["refactoring" "format"]))
(hoarder:register "momomo5717/emms-player-mpv-jp-radio-settings"
  '(:tag ["radio" "emms" "mpv"]))
(hoarder:register "momomo5717/emms-player-simple-mpv"
  '(:tag ["emms" "mpv"]))
(hoarder:register  "wasamasa/firestarter")
(hoarder:register "myTerminal/theme-looper"
  '(:tag ["theme"]))
(hoarder:register "djcb/sauron")
;; (hoarder:register "nschum/highlight-parentheses.el")
(hoarder:register "tsdh/highlight-parentheses.el")
(hoarder:register "jordonbiondo/column-enforce-mode")
(hoarder:register "wasamasa/svg-2048"
  '(:dependency ["tali713/esxml"]))
(hoarder:register "abo-abo/avy")
(hoarder:register "marcowahl/emacsshot"
  '(:tag ["screenshot"]))
(hoarder:register "n8willis/fontfile-modes"
  '(:tag ["font"]))
(hoarder:register "atheriel/splash-buffer.el"
  '(:tag ["splash"]))
(hoarder:register "rejeep/jq.el"
  '(:tag ["json" "jq"]))
(hoarder:register "Fuco1/autobookmarks"
  '(:dependency ["magnars/dash.el"
                 "emacsmirror/bookmark-plus"]
    :tag ["recentf" "bookmark"]))
(hoarder:register "larstvei/Focus"
  '(:tag ["highlight" "narrowing"]))
(hoarder:register "tthieman/soundcloud.el"
  '(:tag ["music" "soundcloud"]
    :dependency ["kiwanami/emacs-deferred"
                 "rolandwalker/string-utils"
                 "tkf/emacs-request"]))
(hoarder:register "emacsmirror/longlines-jp")
(hoarder:register "zonuexe/emoji-fontset.el"
  '(:tag ["font" "emoji" "unicode"]))
(hoarder:register "purcell/exec-path-from-shell")
(hoarder:register "myuhe/imgur.el"
  '(:tag ["imgur" "anything"]))
(hoarder:register "gongo/emacs-gimei"
  '(:tag ["japanese"]))
(hoarder:register "emacs-pe/ssh-modes"
  '(:tag ["ssh"]))
(hoarder:register "sensorflo/adoc-mode"
  '(:tag ["asciidoc"]
    :dependency ["sensorflo/markup-faces"]))
(hoarder:register "syohex/emacs-fontawesome"
  '(:tag ["font" "fontawesome" "icon"]))
(hoarder:register "zweifisch/ob-http"
  '(:tag ["org" "http"]))
(hoarder:register "bastibe/annotate.el"
  '(:tag ["annotation" "note" "memo" "text-property"]))
(hoarder:register "emacsmirror/csv-mode"
  '(:tag ["csv"]))
(hoarder:register "nicferrier/creole-mode")
(hoarder:register "thierryvolpiatto/psession"
  '(:tag ["history" "session"]))
(hoarder:register "justbur/emacs-which-key"
  '(:tag ["guide-key"]
    :dependency ["magnars/s.el"
                 "m2ym/popwin-el"]))
(hoarder:register "gongo/shimapan.el")
(hoarder:register "lewang/ws-butler"
  '(:tag ["whitespace" "cleanup"]))
(hoarder:register "Fuco1/letcheck"
  '(:tag ["convinience" "syntax_check"]))
(hoarder:register "k-talo/volatile-highlights.el"
  '(:tag ["highlight" "feedback" "undo" "paste"]))
(hoarder:register "KeenS/cssfmt.el"
  '(:tag ["css"]))
(hoarder:register "mutbuerger/not-from-scratch"
  '(:tag ["scratch"]))
(hoarder:register "Levenson/dictionary"
  '(:tag ["dictionary" "english"]))
(hoarder:register "leoliu/sokoban"
  '(:tag ["game" "sokoban"]))
(hoarder:register "stevenremot/roguel-ike"
  '(:tag ["game" "rogue"]))
(hoarder:register "emacsattic/elite"
  '(:tag ["elite" "game"]))
(hoarder:register "eschulte/shen-mode"
  '(:tag ["shen" "language" "pattern_match"]))
(hoarder:register "wasamasa/retris"
  '(:tag ["game" "tetris"]))
(hoarder:register "dbordak/telephone-line"
  '(:tag ["powerline" "mode-line"]))
(hoarder:register "neomantic/helm-rubygems-org"
  '(:tag ["ruby" "rubygems" "helm"]))
(hoarder:register "ruediger/weather-metno-el"
  '(:tag ["weather"]))
(hoarder:register "myuhe/quick-preview.el"
  '(:tag ["preview" "sushi" "quick-look"]))
(hoarder:register "zonuexe/vim-filetype.el"
  '(:tag ["vim" "filetype"]))
(hoarder:register "ryuslash/git-auto-commit-mode"
  '(:tag ["git" "auto_commit"]))
(hoarder:register "dnaumov/midje-mode"
  '(:tag ["clojure" "test"]))
(hoarder:register "cadadr/forecast.el"
  '(:tag ["weather" "forecast"]))
(hoarder:register "emacsmirror/cparen"
  '(:tag ["scheme"]))
(hoarder:register "steventlamb/yatt.el"
  '(:tag ["tea" "timer"]))
(hoarder:register "joelmccracken/elisp-sandbox"
  '(:tag ["emacs_lisp"]
    :desc  "Evaluate EmacsLisp expressions in a sandbox"))
(hoarder:register "liblit/flycheck-status-emoji"
  '(:tag ["flycheck" "test" "emoji"]
    :desc "Summary: Show flycheck status using cute, compact emoji"))
(hoarder:register "kbauer/subemacs"
  '(:tag ["emacs_lisp"]
    :desc "Evaluating expressions in a fresh Emacs subprocess"))
(hoarder:register "gabesoft/emc"
  '(:tag ["evil" "multiple-cursor"]))
(hoarder:register "Malabarba/Nameless")
(hoarder:register "xuchunyang/eshell-did-you-mean"
  '(:tag ["eshell"]))
(hoarder:register "tonini/alchemist.el"
  '(:tag ["elixir"]
    :dependency ["elixir-lang/emacs-elixir"
                 "magnars/dash.el"
                 "company-mode/company-mode"]))
(hoarder:register "elixir-lang/emacs-elixir"
  '(:tag ["elixir" "erlang"]))
(hoarder:register "gromnitsky/wordnut"
  '(:tag ["wordnet" "language" "english"]))
(hoarder:register "erlang/otp"
  '(:tag ["erlang" "otp"]
    :load-path "lib/tools/emacs"))
(hoarder:register "emacsmirror/sml-mode"
  '(:tag ["language" "Standard ML"]))
(hoarder:register "osener/github-browse-file"
  '(:tag ["git" "github"]))
(hoarder:register "mrkkrp/cyphejor"
  '(:tag ["diminish" "mode-line"]))
(hoarder:register "NicolasPetton/stream"
  '(:tag ["stream" "data"]))
(hoarder:register "dimitri/el-get"
  '(:tag ["el-get" "package"]))
(hoarder:register "eludom/org-babel-git-utils"
  '(:tag ["org" "babel" "git"]))
(hoarder:register "Malabarba/beacon")
(hoarder:register "knl/name-this-color.el"
  '(:tag ["colour"]))
(hoarder:register "Lindydancer/font-lock-studio"
  '(:tag ["font-lock" "highlight" "syntax"]))
(hoarder:register "michael-heerdegen/on-screen.el")
(hoarder:register "mutbuerger/company-org-headings"
  '(:tag ["company" "org" "completion"]))
(hoarder:register "samisalkosuo/elite-for-emacs"
  '(:tag ["game" "elite"]))
(hoarder:register "iqbalansari/emacs-emoji"
  '(:tag ["emoji"]))
(hoarder:register "death/reddit-mode"
  '(:tag ["reddit"]))
(hoarder:register "iqbalansari/emacs-emojify"
  '(:tag ["emoji"]))
(hoarder:register "wasamasa/zone-nyan"
  '(:tag ["nyancat" "zone" "eshell"]))
(hoarder:register "ilya-babanov/emacs-bpr"
  '(:tag ["process"]))
(hoarder:register "jwiegley/emacs-pl"
  '(:tag ["haskell" "parser"]))
(hoarder:register "jwiegley/alert"
  '(:tag ["notification" "growl"]
    :dependency ["aki2o/log4e"]))
(hoarder:register "iquiw/hyai"
  '(:tag ["haskell" "indentation"]))
(hoarder:register "xuchunyang/github-notifier.el"
  '(:tag ["github" "mode-line"]))
(hoarder:register "xuchunyang/region-state.el"
  '(:tag ["region"]))
(hoarder:register "xuchunyang/eshell-z"
  '(:tag ["eshell" "z"]))
(hoarder:register "tom-tan/esh-buf-stack"
  '(:tag ["eshell" "zsh"]))
(hoarder:register "Simplify/flycheck-css-colorguard"
  '(:tag ["flycheck" "css" "colorguard"
          "syntax_checking"]))
(hoarder:register "febuiles/tumble"
  '(:tag ["tumblr"]))
;;(hoarder:register "emacsmirror/highlight-tail"
;;  '(:tag ["highlight"]))
(hoarder:register "rbanffy/selectric-mode"
  '(:tag ["sound" "typewriter"]))
(hoarder:register "nicferrier/emacs-proc-net"
  '(:tag ["network" "process"]))
(hoarder:register "auto-complete/auto-complete"
  '(:tag ["completion"]
    :dependency ["auto-complete/fuzzy-el"
                 "auto-complete/popup-el"]))
(hoarder:register "syohex/emacs-ac-capf"
  '(:tag ["completion" "auto-complete"]))
(hoarder:register "syohex/emacs-ac-emoji"
  '(:tag ["completion" "auto-complete" "emoji"]))
(hoarder:register "myuhe/ac-skk.el"
  '(:tag ["completion" "auto-complete" "skk"]
    :dependency ["myuhe/tinysegmenter.el"]))
(hoarder:register "aki2o/org-ac"
  '(:tag ["completion" "auto-complete" "org-mode"]
    :dependency ["aki2o/auto-complete-pcmp"
                 "aki2o/log4e"
                 "aki2o/yaxception"]))
(hoarder:register "mrBliss/highlight-leading-spaces"
  '(:tag ["highlight" "whitespace" "indent"]))
(hoarder:register "johanvts/emacs-fireplace"
  '(:tag ["animation"]))
(hoarder:register "alezost/dim.el")
(hoarder:register "atomontage/xterm-color"
  '(:tag ["color" "xterm" "ansi" "escape_sequence"]))
(hoarder:register "noctuid/link-hint.el"
  '(:tag ["avy" "ace_jump" "link" "hint"]))
(hoarder:register "pierre-lecocq/bonjourmadame")
(hoarder:register "thierryvolpiatto/zop-to-char")
(hoarder:register "kawabata/zone-rainbow")
(hoarder:register "parkeristyping/party-mode")
(hoarder:register "mhayashi1120/Emacs-erefactor"
  '(:tag ["emacs-lisp" "lint" "elint" "refactoring"]))
(hoarder:register "jcollard/elm-mode"
  '(:tag ["elm" "language" "haskell"]))
(hoarder:register "EricCrosson/unkillable-scratch")


;; (hoarder:register "papaeye/emacs-jscs"
;;                   '(:tag ["language" "javascript" "jscs" "format"]
;;                     :dependency (("papaeye/go-mode.el"
;;                                (:tag ["langfmt"])))))

;; (hoarder:register "politza/pdf-tools"
;;                  '(:tag ["pdf"]))
;; (hoarder:register "http://git.chise.org/git/elisp/flim.git"
;;                  '(:tag ["flim" "luna"]))
;; (hoarder:register "capitaomorte/yasnippet")

;;;;; org
(hoarder:register "git://orgmode.org/org-mode.git"
  '(:load-path ["lisp" "contrib/lisp"]
    :compile nil
    :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
    :info "doc"
    :tag "org"))
(hoarder:register "tj64/org-hlc")

(hoarder:register "tj64/outorg" '(:compile nil
                                  :tag ["org" "outline"]))
(hoarder:register "tj64/outshine" '(:compile nil
                                    :tag ["org" "outline"]
                                    :dependency ["tj64/outorg"]))
;; (hoarder:register "jleechpe/outorg-export")
(hoarder:register "tj64/navi"
  '(:tag ["org" "outline"]))

(hoarder:register "tj64/outline-magic"
  '(:tag ["org" "outline"]))
(hoarder:register "omouse/org-doing"
  '(:tag "org"))
(hoarder:register "Fuco1/org-pretty-table"
  '(:compile nil :tag "org"))
(hoarder:register "rlister/org-present"
  '(:dependency [("git://orgmode.org/org-mode.git"
                  (:load-path ["lisp" "contrib/lisp"]
                              :compile nil
                              :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
                              :info "doc"
                              :tag "org"))]))
(hoarder:register "kawabata/ox-pandoc"
  '(:dependency ["Wilfred/ht.el"
                 "magnars/dash.el"]
    :tag ["org" "pandoc"]))
(hoarder:register "bastibe/org-journal"
  '(:tag ["org"]))
(hoarder:register "calvinwyoung/org-autolist"
  '(:tag ["org"]))
(hoarder:register "krisajenkins/ob-browser"
  '(:tag ["org" "org-babel" "html" "phantomjs"]
    :desc "Render HTML inside Emacs' org-mode"))
(hoarder:register "thisirs/org-context"
  '(:tag ["org" "org-agenda" "org-capture"]
    :desc "Contextual agenda and capture for Org-mode"))
(hoarder:register "woudshoo/html-2-org"
  '(:tag ["org" "html"]
    :desc "Attempts to undo the html export of org"))
(hoarder:register "abo-abo/org-download"
  '(:tag ["org"]
    :dependency ["jwiegley/emacs-async"]))
(hoarder:register "brettviren/org-pub"
  '(:tag ["org" "web" "html"]))
(hoarder:register "tj64/org-dp"
  '(:tag ["org"]))
(hoarder:register "p-m/org-notify"
  '(:tag ["org"]))
(hoarder:register "vapniks/org-gather"
  '(:tag ["org"]))
(hoarder:register "markus1189/org-pdfview"
  '(:tag ["org" "pdf"]))
(hoarder:register "HKey/omboo"
  '(:tag ["org" "bookmark"]
    :desc "Org-mode as BOOkmark"))
(hoarder:register "rexim/org-cliplink"
  '(:tag ["org" "clipboard"]))
(hoarder:register "tarsius/orglink"
  '(:tag ["org"]))
(hoarder:register "snosov1/toc-org"
  '(:tag ["org" "toc"]))
(hoarder:register "mattduck/org-query"
  '(:tag ["org" "agenda"]))
(hoarder:register "alphapapa/org-protocol-capture-html"
  '(:tag ["org" "org-capture" "html"]))

;; (hoarder:register "https://bitbucket.org/eeeickythump/org-player"
;;                  '(:tag ["org" "bongo" "music"]
;;                    :dependency ["dbrock/bongo"]
;;                    :type hg))

;;;;; themes
(hoarder:register "owainlewis/emacs-color-themes")
(hoarder:register "kuanyui/moe-theme.el")
(hoarder:register-theme "caisah/seti-theme")
(hoarder:register-theme "j0ni/phoenix-dark-pink")
(hoarder:register-theme "Fanael/stekene-theme")
(hoarder:register-theme "sabof/hyperplane-theme")
(hoarder:register-theme "niflheim-theme/emacs" '(:name "niflheim-theme"))
(hoarder:register-theme "emacs-jp/replace-colorthemes")
(hoarder:register-theme "djcb/dream-theme")
(hoarder:register-theme "FrankRuben/cuatroporocho-theme" '(:compile nil))
(hoarder:register-theme "neomantic/Emacs-Sunburst-Color-Theme")
(hoarder:register-theme "ranmocy/amelie-theme")
(hoarder:register-theme "yuttie/steady-theme-emacs")
(hoarder:register-theme "rozh/grandpunk-theme")
(hoarder:register-theme "nhunzaker/emacs-laravel-plus-theme")
(hoarder:register-theme "nishikawasasaki/ns-milk-theme")
(hoarder:register-theme "tiborsimko/ostrich-theme-el")
(hoarder:register-theme "michaelparenteau/parenteau-theme")
(hoarder:register-theme "gchp/flatland-emacs")
(hoarder:register-theme "mswift42/busybee-theme")
(hoarder:register-theme "byels/emacs-cherry-blossom-theme")
(hoarder:register-theme "startling/firebelly")
(hoarder:register-theme "Greduan/emacs-theme-gruvbox")
(hoarder:register-theme "donderom/jazz-theme")
(hoarder:register-theme "andre-richter/emacs-lush-theme")
(hoarder:register-theme "Lokaltog/distinguished-theme")
(hoarder:register-theme "mswift42/warm-night-theme")
(hoarder:register-theme "jasonm23/emacs-bubbleberry-theme")
(hoarder:register-theme "n3mo/cyberpunk-theme.el")
(hoarder:register-theme "Fanael/colorsarenice-theme")
(hoarder:register-theme "kodx/TangoDark")
(hoarder:register-theme "wasamasa/gotham-theme")
(hoarder:register-theme "neil477/base16-emacs")
(hoarder:register-theme "oneKelvinSmith/monokai-emacs")
;; (hoarder:register-theme "hbin/molokai-theme")
(hoarder:register-theme "hos/molokai-emacs")
(hoarder:register-theme "jordonbiondo/ample-theme")
(hoarder:register-theme "mjwall/ample-zen")
(hoarder:register-theme "bruce/emacs-spacegray-theme")
;; (hoarder:register-theme "nhunzaker/spacegray-emacs")
(hoarder:register-theme "juba/color-theme-tangotango")
(hoarder:register-theme "ccann/badger-theme")
(hoarder:register-theme "xzerocode/hipster-theme")
(hoarder:register-theme "xzerocode/aurora-theme")
(hoarder:register-theme "fommil/darcula-theme-emacs")
(hoarder:register-theme "emacsfodder/emacs-waher-theme")
(hoarder:register-theme "emacsfodder/emacs-purple-haze-theme")
(hoarder:register-theme "emacsfodder/emacs-clues-theme")
(hoarder:register-theme "emacsfodder/emacs-soothe-theme")
(hoarder:register-theme  "emacsfodder/emacs-slime-theme" )
(hoarder:register-theme  "emacsfodder/emacs-peacock-theme" )
(hoarder:register-theme  "emacsfodder/emacs-mustard-theme" )
(hoarder:register-theme  "emacsfodder/emacs-mellow-theme" )
(hoarder:register-theme  "emacsfodder/emacs-lavender-theme" )
(hoarder:register-theme  "emacsfodder/emacs-firecode-theme" )
(hoarder:register-theme  "emacsfodder/emacs-dark-krystal-theme" )
(hoarder:register-theme  "emacsfodder/emacs-colonoscopy-theme" )
(hoarder:register-theme  "emacsfodder/emacs-boron-theme" )
(hoarder:register-theme  "emacsfodder/emacs-bliss-theme" )
(hoarder:register-theme  "emacsfodder/emacs-flatland-black-theme" )
(hoarder:register-theme "emacsfodder/emacs-mbo70s-theme")
(hoarder:register-theme "uwabami/darkpastel-theme")
(hoarder:register-theme "dev-plvlml/zenburn-care")
(hoarder:register-theme "idleberg/Hopscotch"
  '(:load-path "Emacs"))
;; (hoarder:register-theme "pronobis/material-linux-theme"
;;                        '(:load-path "out"))
(hoarder:register-theme "jd/naquadah-theme")
(hoarder:register-theme "rexim/gruber-darker-theme")
(hoarder:register-theme "developernotes/twilight-theme")
(hoarder:register-theme "steckerhalter/grandshell-theme")
(hoarder:register-theme "CQQL/xresources-theme")
(hoarder:register-theme "apnsngr/iceberg-emacs")
(hoarder:register-theme "4lex1v/sirthias-theme")
(hoarder:register-theme "sellout/emacs-color-theme-solarized")
(hoarder:register-theme "Trevoke/color-theme-mejelly-light")
(hoarder:register-theme "aurelienbottazini/tronesque"
  '(:load-path "themes"))
(hoarder:register-theme "edran/hc-zenburn-emacs")
(hoarder:register-theme "Soren-Nordstrom/motoko-theme")
(hoarder:register-theme "rashack/solarized-grey")
(hoarder:register-theme "vurmux/crazyfruits-color-theme")
(hoarder:register-theme "purcell/color-theme-sanityinc-tomorrow")
(hoarder:register-theme "purcell/color-theme-sanityinc-solarized")
(hoarder:register-theme "bbatsov/solarized-emacs")
(hoarder:register-theme "matteobanerjee/orpheus-theme")
(hoarder:register-theme "yveszoundi/emacs-rimero-theme")
(hoarder:register-theme "holomorph/emacs-zenburn")
(hoarder:register-theme "darrik/zenesque-theme")
(hoarder:register-theme "Corsair/emacs-flatui-theme")
(hoarder:register-theme "stafu/noctilux-theme")
(hoarder:register-theme "yveszoundi/emacs-rimero-theme")
(hoarder:register-theme "darrik/erosiond-theme")
(hoarder:register-theme "zk-phi/lenlen-theme"
  '(:dependency ["sellout/emacs-color-theme-solarized"]))
(hoarder:register-theme "emacsfodder/emacs-theme-darktooth")
(hoarder:register-theme "melisgl/color-theme-mgl")
(hoarder:register-theme "BrianHicks/emacs-themes")
(hoarder:register-theme "mrsipan/sipan-theme")
(hoarder:register-theme "cmack/emacs-planet-theme")
(hoarder:register-theme "cpaulik/emacs-material-theme")
(hoarder:register-theme "eglaysher/dark-forest-theme")
(hoarder:register-theme "waymondo/apropospriate-theme")
(hoarder:register-theme "john2x/plan9-theme.el")
(hoarder:register-theme "TheQZ/emerald-emacs")
(hoarder:register-theme "ZehCnaS34/zonokai-emacs")
(hoarder:register-theme "whitlockjc/atom-dark-theme-emacs")
(hoarder:register-theme "zovt/pretty-emacs")
(hoarder:register-theme "toroidal-code/monokai-extended-theme.el")
(hoarder:register-theme "mattly/emacs-farmhouse-theme")
(hoarder:register-theme "evenhold/nerv-theme")
(hoarder:register-theme "mjhanninen/liquorice.el"
  '(:load-path "."))
(hoarder:register-theme "cryon/subatomic")
(hoarder:register-theme "Gastove/rhombus")
(hoarder:register-theme "Fanael/colorsarenice-theme")
(hoarder:register-theme "aalpern/emacs-color-theme-green-phosphor")
(hoarder:register-theme "Alexander-Miller/morning-star-theme")
(hoarder:register-theme "nhunzaker/emacs-ectoplasm-theme")
(hoarder:register-theme "PGGB/emacs-bluedrake-theme")
(hoarder:register-theme "kostafey/organic-green-theme")
(hoarder:register-theme "nashamri/spacemacs-theme")
(hoarder:register-theme "vyp/redbelly")
(hoarder:register-theme "NicolasPetton/zerodark-theme")
(hoarder:register-theme "credmp/arjen-grey")
(hoarder:register-theme "warreq/xres-theme"
  '(:tag ["xresources"]))
(hoarder:register-theme "jonathanchu/atom-one-dark-theme")
(hoarder:register-theme "vjohansen/dark-nature-theme")
(hoarder:register-theme "zenmacs/leuven-solarized")
(hoarder:register-theme "chriskempson/tomorrow-theme"
  '(:load-path "GNU Emacs"))
(hoarder:register-theme "mattly/emacs-farmhouse-theme")
(hoarder:register-theme "edliaw/bubblegum-theme")
(hoarder:register-theme "jonathanchu/atom-one-dark-theme")
(hoarder:register-theme "yuttie/hydrangea-theme")
(hoarder:register-theme "bmastenbrook/termbright-theme-el")
(hoarder:register-theme "zenorocha/dracula-theme"
  '(:load-path "emacs"))
(hoarder:register-theme "rdallasgray/graphene-meta-theme")
(hoarder:register-theme "waymondo/apropospriate-theme")
(hoarder:register-theme "https://gitlab.com/franksn/majapahit-theme.git")
(hoarder:register-theme "jmdeldin/underwater-theme.el")
(hoarder:register-theme "ysz/hhazure")
(hoarder:register-theme "bkruczyk/badwolf-emacs")
(hoarder:register-theme "fourier/idea-darkula-theme")
(hoarder:register-theme "uemurax/japanese-theme")
(hoarder:register-theme "siovan/emacs24-inkpot")
(hoarder:register-theme "mswift42/reykjavik-theme")
(hoarder:register-theme "fourier/borland-blue-theme")
(hoarder:register-theme "hubisan/lorisan-theme")
(hoarder:register-theme "hodumi/hodumi-theme")

;;;;; local packages
(cl-labels ((add-project-root (path &optional option)
              (hoarder:register (thread-last (getenv "HUONE")
                                  (expand-file-name "ateljee")
                                  (expand-file-name path))
                option)))
  (add-project-root  "emacs-flatline")
  (add-project-root "helm-ypv" '(:tag "helm"))
  (add-project-root "company-scheme" '(:tag ["company" "scheme"]))
  (add-project-root "emacs-scheme-keywords" '(:tag "scheme"))
  (add-project-root "emacs-lehtifile-mode")
  (add-project-root "helm-alku" '(:tag ["helm"]))
  (add-project-root "emacs-navi2ch-file-mode" '(:tag "navi2ch"))
  ;; (add-project-root "emacs-eshell-switch" '(:tag "eshell"))
  (add-project-root "emacs-mesh" '(:tag "eshell"))
  (add-project-root "emacs-eshell-alias" '(:tag "eshell"))
  (add-project-root "helm-project-buffer" '(:tag "helm"))
  (add-project-root "emacs-eshellar" '(:tag ["eshell" "shellar"]))
  (add-project-root "emacs-hoarder" '(:load-path nil
                                      :tag ["package"]))
  (add-project-root "helm-features" '(:tag ["emacs-lisp"]))
  (add-project-root "helm-eww-bookmark" '(:tag ["helm" "eww"]))
  (add-project-root "helm-eww-history" '(:tag ["helm" "eww"]))
  (add-project-root "helm-eww-search-engine" '(:tag ["helm" "eww"]))
  (add-project-root "helm-eshell-jump" '(:tag ["helm" "eshell"]))
  (add-project-root "emacs-glof" '(:tag ["plist" "utility"]))
  (add-project-root "emacs-fridge" )
  (add-project-root "emacs-pcst-api")
  (add-project-root "emacs-tupper")
  (add-project-root "emacs-napron")
  (add-project-root "eshell-lista"))

;;;;;; skk
(hoarder:register "skk-dev/ddskk"
  '(:build ["gmake clean elc info"]
    :info "doc"
    :load-path ["." "experimental"]))
(hoarder:fetch "skk-dev/skktools"
  '(:build ["./configure" "gmake clean" "gmake"]))
(hoarder:fetch "tkita/SKK-JISYO"
  '(:tag ["skk" "skk-jisyo"]))

;; (cond
;;   ((file-directory-p (muki:user-emacs-directory "hoarder/ddskk"))
;;    (hoarder:register-local (muki:user-emacs-directory "hoarder/ddskk")
;;                           '(:build ["gmake elc info"]
;;                             :info "info")))
;;   ((file-directory-p "/usr/local/share/emacs/24.3/site-lisp/skk")
;;    (hoarder:register-local "/usr/local/share/emacs/24.3/site-lisp/skk")))

;; (hoarder:register "~/.stumpwm.d/modules/util/swm-emacs")

;; (hoarder:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))

;;;;; not library
(hoarder:fetch "purcell/emacs.d")
(hoarder:fetch "redguardtoo/mastering-emacs-in-one-year-guide")
(hoarder:fetch "git://git.savannah.nongnu.org/emacs-tiny-tools.git")
(hoarder:fetch "bbatsov/emacs-lisp-style-guide")
(hoarder:fetch "danielsz/.emacs.d")
(hoarder:fetch "davvil/.emacs.d")
(hoarder:fetch "hico-horiuchi/dotemacs")
(hoarder:fetch "juanjux/emacs-dotfiles")
(hoarder:fetch "redguardtoo/emacs.d")
(hoarder:fetch "sachac/.emacs.d")
(hoarder:fetch "sachac/sharing"
  '(:tag ["org"]))
(hoarder:fetch "sachac/sketched-books"
  '(:tag ["org"]))
(hoarder:fetch "serras/emacs-haskell-tutorial")
(hoarder:fetch "supermomonga/dot-emacs")
(hoarder:fetch "thierryvolpiatto/emacs-tv-config")
(hoarder:fetch "xiaohanyu/oh-my-emacs")
(hoarder:fetch "bling/emacs-evil-bootstrap")
(hoarder:fetch "capdevc/dotfiles-cc")
(hoarder:fetch "siancu/evilmode-pack"
  '(:recursive nil))
(hoarder:fetch "emacs-tw/awesome-emacs")
(hoarder:fetch "syl20bnr/spacemacs"
  '(:recursive nil
    :branch "develop"))
(hoarder:fetch "bbatsov/prelude")
(hoarder:fetch "bling/dotemacs")
(hoarder:fetch "cofi/dotfiles"
  '(:recursive nil))
(hoarder:fetch "tarao/dotfiles"
  '(:recursive nil))
(hoarder:fetch "fukamachi/emacs-config")
(hoarder:fetch "mikio/dotfiles")
(hoarder:fetch "yukihr/dotfiles"
  '(:recursive nil))
(hoarder:fetch "handlename/dot-emacs")
(hoarder:fetch "seven1m/.emacs.d")
(hoarder:fetch "gongo/elfactory"
  '(:recursive nil))
(hoarder:fetch "rdallasgray/graphene"
  '(:recursive nil))
(hoarder:fetch "mgill25/emacs")
(hoarder:fetch "nikki93/.emacs.d")
(hoarder:fetch "davvil/.emacs.d")
(hoarder:fetch "sunesimonsen/evil-config")
(hoarder:fetch "jcf/emacs.d")
(hoarder:fetch "jcf/previous-emacs.d")
(hoarder:fetch "nathantypanski/emacs.d")
(hoarder:fetch "lukaszkorecki/cult-leader"
  '(:recursive nil))
(hoarder:fetch "ahmadseleem/ViMacs"
  '(:tag ["evil" "dotifles"]))
(hoarder:fetch "febuiles/dotemacs")
(hoarder:fetch "git://orgmode.org/worg.git")
(hoarder:fetch "roman/emacs.d")
(hoarder:fetch "iconpin/dotemacs")
(hoarder:fetch "jpace121/evil-ed")
(hoarder:fetch "sunesimonsen/evil-config")
(hoarder:fetch "gbarta/evil-my-shims")
(hoarder:fetch "novoid/Memacs")
(hoarder:fetch "novoid/dot-emacs"
  '(:tag ["org"]))
(hoarder:fetch "terhechte/emacs.d")
(hoarder:fetch "echosa/emacs.d")
(hoarder:fetch "wataken44/dot.emacs.d2")
(hoarder:fetch "scottjad/dotfiles")
(hoarder:fetch "alexander-yakushev/.emacs.d")
(hoarder:fetch "LukeSwart/.emacs.d")
(hoarder:fetch "romanoaugusto88/.emacs.d")
(hoarder:fetch "jirkamarsik/sonic-screwdriver"
  '(:recursive nil))
(hoarder:fetch "defunkt/emacs"
  '(:recursive nil))
(hoarder:fetch "rejeep/emacs")
(hoarder:fetch "dragonwasrobot/dot-emacs")
(hoarder:fetch "jhamrick/emacs")
(hoarder:fetch "joedicastro/dotfiles")
(hoarder:fetch "emacs-tw/awesome-emacs")
(hoarder:fetch "11111000000/emacs-d")
(hoarder:fetch "Shougo/neobundle.vim"
  '(:tag ["vim" "plugin_manager"]))
(hoarder:fetch "Shougo/vimshell.vim"
  '(:tag ["vim" "shell"]))
(hoarder:fetch "sunaku/vim-unbundle"
  '(:tag ["vim" "plugin_manager"]))
(hoarder:fetch "kamichidu/vim-hariti"
  '(:tag ["vim" "plugin_manager"]))
(hoarder:fetch "gmarik/Vundle.vim"
  '(:tag "vim"))
(hoarder:fetch "guns/vim-sexp"
  '(:tag "vim"))
(hoarder:fetch "tpope/vim-sexp-mappings-for-regular-people"
  '(:tag "vim"))
(hoarder:fetch "kovisoft/paredit"
  '(:tag ["vim" "paredit"]))
(hoarder:fetch "goldfeld/vim-seek"
  '(:tag ["vim"]))
(hoarder:fetch "justinmk/vim-sneak"
  '(:tag ["vim"]))
(hoarder:fetch "miripiruni/vimi"
  '(:tag ["vim"]))
(hoarder:fetch "junegunn/vim-plug"
  '(:tag ["vim"]))
(hoarder:fetch "bling/vim-airline"
  '(:tag ["vim" "statusline"]))
(hoarder:fetch "itchyny/lightline.vim"
  '(:tag["vim" "statusline"]))
(hoarder:fetch "yuratomo/w3m.vim"
  '(:tag ["vim" "browser" "web"]))
(hoarder:fetch "kovan/dopemacs")
(hoarder:fetch "AshleyMoni/dotfiles"
  '(:tag ["evil" "dotfiles"]))
(hoarder:fetch "EricGebhart/emacs-setup"
  '(:tag ["evil" "dotfiles"]))
(hoarder:fetch "nadavspi/dotfiles"
  '(:tag ["evil" "dotfiles"]
    :recursive nil))
(hoarder:fetch "gridaphobe/dotfiles"
  '(:tag ["evil" "dotifles"]))
(hoarder:fetch "takaishi/.emacs.d"
  '(:tag "dotfiles"))
(hoarder:fetch "nanasess/dot.emacs")
(hoarder:fetch "technomancy/better-defaults")
(hoarder:fetch "chrismccord/dot_emacs"
  '(:tag ["dotfiles" "evil"]))
(hoarder:fetch "thomasf/dotfiles-thomasf-emacs"
  '(:tag ["dotfiles" "evil"]))
(hoarder:fetch "xcwen/site-lisp"
  '(:tag ["evil"]))
(hoarder:fetch "yangchenyun/emacs-prelude"
  '(:tag ["dotfiles" "evil"]))

(hoarder:fetch "stumpwm/stumpwm"
  '(:tag ["common_lisp" "stumpwm"]))
(hoarder:fetch "stumpwm/stumpwm-contrib"
  '(:tag ["common_lisp" "stumpwm"]))
(hoarder:fetch "stumpwm/stumpwm.wiki"
  '(:tag ["common_lisp" "stumpwm"]))
(hoarder:fetch "deepfire/cl-org-mode"
  '(:tag ["common_lisp" "org"]))
(hoarder:fetch "Ramarren/cl-parser-combinators"
  '(:tag ["common_lisp" "parser"]))
(hoarder:fetch "https://gitlab.common-lisp.net/alexandria/alexandria.git"
  '(:tag ["common_lisp"]))
(hoarder:fetch "robert-strandh/SICL"
  '(:tag ["common_lisp"]))
(hoarder:fetch "robert-strandh/Second-Climacs"
  '(:tag ["common_lisp" "climacs" "clim"]))
(hoarder:fetch "robert-strandh/CLIMatis"
  '(:tag ["common_lisp" "climacs" "clim"]))
(hoarder:fetch "edicl/cl-unicode"
  '(:tag ["common_lisp" "unicode"]))
(hoarder:fetch "edicl/cl-fad"
  '(:tag ["common_lisp"]))

(hoarder:fetch "gabriel-laddel/masamune")
(hoarder:fetch "Fanael/init.el"
  '(:tag "dotfiles"))
(hoarder:fetch "deftsp/.emacs.d"
  '(:tag ["dotfiles" "evil"]))
(hoarder:fetch "zhen-qin/.emacs.d"
  '(:tag ["dotfiles" "evil"]))
(hoarder:fetch "LeifAndersen/Emacs")
(hoarder:fetch "uwabami/emacs-config"
  '(:recursive nil))
(hoarder:fetch "farseer90718/dotemacs")
(hoarder:fetch "bixuanzju/emacs.d")
(hoarder:fetch "mahinshaw/emacsd"
  '(:tag ["evil"]))
(hoarder:fetch "bosko/boem")
(hoarder:fetch "jceb/vim-orgmode"
  '(:tag ["vim" "org"]))
;; (hoarder:fetch "borntorock/UI-toolkit-using-orgmode"
;;               '(:tag ["org"]))
(hoarder:fetch "bodil/emacs.d")
(hoarder:fetch "jixiuf/emacs_conf"
  '(:tag ["evil"]))
(hoarder:fetch "m00natic/dot-emacs")
(hoarder:fetch "holguinj/evil-clojure-emacs"
  '(:tag ["evil" "clojure"]))
(hoarder:fetch "rolandwalker/emacs-travis"
  '(:tag ["travis"]))
(hoarder:fetch "wcsmith/dotemacs"
  '(:tag ["evil"]))
(hoarder:fetch "takaxp/emacs.d")
(hoarder:fetch "senny/cabbage"
  '(:recursive nil))

(hoarder:fetch "avendael/dotemacs"
  '(:tag ["evil"]))
(hoarder:fetch "VincentToups/emacs-utils")
(hoarder:fetch "bamos/dotfiles")
(hoarder:fetch "Fuco1/.emacs.d")
(hoarder:fetch "nlamirault/scame")
(hoarder:fetch "dtan4/dot.emacs.d")
(hoarder:fetch "jimm/elisp")
(hoarder:fetch "magnars/.emacs.d"
  '(:recursive nil))
(hoarder:fetch "steventlamb/lamb-horned-beast")
(hoarder:fetch "Bruce-Connor/emacs-online-documentation")
(hoarder:fetch "emacsimize/org-admin"
  '(:tag ["org" "server"]))
(hoarder:fetch "garaud/foggycowinn")
(hoarder:fetch "ardumont/org"
  '(:tag ["org"]))
(hoarder:fetch "TheBB/dotfiles"
  '(:tag ["evil" "org"]
    :desc "https://github.com/TheBB/dotfiles/blob/master/emacs/init.el#L841-975"
    :recursive nil))
(hoarder:fetch "grettke/home"
  '(:tag ["org"]))
(hoarder:fetch "lunaryorn/.emacs.d"
  '(:tag ["smartparens"]))
(hoarder:fetch "fgallina/dotemacs")
(hoarder:fetch "ghoseb/dotemacs")
(hoarder:fetch "meteor1113/dotemacs")
(hoarder:fetch "bzg/dotemacs")
(hoarder:fetch "CestDiego/spacemacs_conf")
(hoarder:fetch "waymondo/hemacs")
(hoarder:fetch "davidvilla/emacs-pills")
(hoarder:fetch "cdlm/vitamined-mode-line")
(hoarder:fetch "wasamasa/dotemacs")
(hoarder:fetch "hlissner/emacs.d")
(hoarder:fetch "fniessen/orgmk"
  '(:tag ["org"]))
(hoarder:fetch "fniessen/org-macros"
  '(:tag ["org"]))
(hoarder:fetch "fniessen/refcard-org-babel"
  '(:tag ["org"]))
(hoarder:fetch "https://gitlab.com/egh/org-cook.git"
  '(:tag ["org" "cooking"]))
(hoarder:fetch "https://gitlab.com/egh/org-brew.git"
  '(:tag ["org" "brewing"]))
(hoarder:fetch "krisajenkins/EvilBegins"
  '(:tag ["evil"]))
(hoarder:fetch "bzg/org-mode-rr"
  '(:tag ["org" "reproducible_research"]))
(hoarder:fetch "jkitchin/jmax"
  '(:tag ["org"]
    :recursive nil))
(hoarder:fetch "ihodes/emacs.org"
  '(:tag ["org"]))
(hoarder:fetch "tsu-nera/dotfiles"
  '(:tag ["org"]))
(hoarder:fetch "roman/birdseye.el"
  '(:tag ["configuration"]))
(hoarder:fetch "tonini/owl.el"
  '(:tag ["documentation"]))
(hoarder:fetch "JarrodCTaylor/monster"
  '(:tag ["evil"]))
(hoarder:fetch "git://git.code.sf.net/p/cedet/git"
  '(:name "cedet"
    :tag ["eieio" "cedet"]))
(hoarder:fetch "scymtym/rudel"
  '(:tag ["eieio"]))
(hoarder:fetch "scymtym/moped"
  '(:tag ["clos" "eieio"]))
(hoarder:fetch "scymtym/zencoding")
(hoarder:fetch "kiwanami/emacs-elroutine"
  '(:tag ["process"]))
(hoarder:fetch "holtzermann17/metaca"
  '(:tag ["automata"]))
(hoarder:fetch "Prismatic/plumbing"
  '(:tag "clojure"))
(hoarder:fetch "jkitchin/org-ref"
  '(:tag ["org" "bibtex"]))
(hoarder:fetch "emacsmirror/eoops"
  '(:tag ["oop"]))
(hoarder:fetch "WildCarrot/OrgThings"
  '(:tag ["org"]))
(hoarder:fetch "kiwanami/emacs-widget-mvc"
  '(:tag ["widget" "gui"]))
(hoarder:fetch "vapniks/org-dotemacs"
  '(:tag ["org" "configuration"]))
;; (hoarder:fetch "ellerh/xref")
(hoarder:fetch "kelvinh/org-page"
  '(:tag ["org"]))
(hoarder:fetch "abedra/emacs.d")
(hoarder:fetch "emacsmirror/xclip"
  '(:tag "clipboard"))
;;(hoarder:fetch "emacsmirror/uni-confusables"
;;              '(:tag "unicode"))
(hoarder:fetch "funcool/cats"
  '(:tag ["clojure" "monad"]))
(hoarder:fetch "jonnay/emagicians-starter-kit"
  '(:tag ["org" "configuration"]))
(hoarder:fetch "julfy/scopid")
(hoarder:fetch "holomorph/transmission"
  '(:tag ["transmisson"]))
(hoarder:fetch "tromey/emacs-module"
  '(:tag ["module"]))
(hoarder:fetch "vikasrawal/orgpaper"
  '(:tag ["org"]))
(hoarder:fetch "tuhdo/emacs-c-ide-demo")
(hoarder:fetch "tkf/emacs-ipython-notebook"
  '(:tag ["python"]
    :recursive nil))
(hoarder:fetch "ryzzn/sydi-site"
  '(:tag ["org" "html"]))
(hoarder:fetch "tonini/emacs.d")
(hoarder:fetch "Lindydancer/e2ansi"
  '(:tag ["terminal" "escape_sequence"]
    :desc "Syntax highlighting support for terminals, powered by Emacs"))
(hoarder:fetch "mlf176f2/EmacsMate")
(hoarder:fetch "https://gitlab.com/emacs-stuff/fasd-shell.git"
  '(:tag ["fasd" "shell" "ido"]
    :desc "Use ido completion for the fasd utility in an emacs shell."))
(hoarder:fetch "coldnew/eshell-autojump"
  '(:tag ["eshell" "autojump"]))
(hoarder:fetch "impaktor/unison-mode"
  '(:tag ["unison"]))
(hoarder:fetch "Sodaware/beeminder.el"
  '(:tag ["beeminder" "org"]))
(hoarder:fetch "skwp/dotfiles"
  '(:tag ["tmux" "vim" "zsh"]))
(hoarder:fetch "git://git.savannah.gnu.org/guix.git"
  '(:tag ["guix" "package_manager"]
    :site "http://www.gnu.org/software/guix/"
    :desc "This is Guix! Purely functional package manager for GNU, and distribution of the GNU system."))
(hoarder:fetch "yuratomo/w3m.vim"
  '(:tag ["vim" "w3m"]))

(hoarder:fetch "flexibeast/ewmctrl"
  '(:tag ["wmctrl"]))
(hoarder:fetch "abo-abo/org-fu"
  '(:tag ["org"]))
(hoarder:fetch "tumashu/chinese-fonts-setup"
  '(:tag ["chinese" "font"]))
(hoarder:fetch "aoksh/weblauncher"
  '(:tag ["web" "bookmark"]))
;; repository not working
;; (hoarder:fetch "git://git01.fort.kickass.systems/fsem.git"
;;               '(:tag ["org"]
;;                 :site "http://doc.rix.si/org/fsem.html"))
(hoarder:fetch "emacsmirror/windows"
  '(:tag ["window_management"]
    :desc "Window manager for GNU Emacs."))
(hoarder:fetch "emacsmirror/mpg123"
  '(:tag ["mpg123"]))
(hoarder:fetch "thartman83/org-filer"
  '(:tag ["org"]))
(hoarder:fetch "chrisdone/elisp-guide"
  '(:tag ["elisp" "programming" "guide"]))
(hoarder:fetch "baohaojun/system-config"
  '(:tag ["chinese" "font"]))
(hoarder:fetch "emacsmirror/swbuff-x"
  '(:tag ["buffer"]))
(hoarder:fetch "alezost/emacs-utils"
  '(:tag ["utility"]))
(hoarder:fetch "defaultxr/tracker.el"
  '(:tag ["osc" "music" "tracker"]))
(hoarder:fetch "steckerhalter/steckemacs.el"
  '(:tag ["configuration" "quelpa"]))
(hoarder:fetch "DamienCassou/unify-opening"
  '(:desc "Emacs package to make everything use the same mechanism to open files"))
(hoarder:fetch "steckerhalter/steckemacs"
  '(:tag ["org" "org-babel"]))
(hoarder:fetch "atykhonov/dtc.el")
(hoarder:fetch "hillgreen012/xinix"
  '(:tag ["configuration"]))
(hoarder:fetch "nsaeki/dotemacs")
(hoarder:fetch "lambdasakura/emacs")
(hoarder:fetch "julienchastang/dotemacs"
  '(:tag ["org"]))
(hoarder:fetch "howardabrams/dot-files"
  '(:tag ["org" "emacs" "configuration"]))
(hoarder:fetch "howardabrams/demo-it"
  '(:tag ["org" "presentation"]))
(hoarder:fetch "ikame/dotfiles"
  '(:tag ["org" "conkeror"]))
(hoarder:fetch "kuanyui/.emacs.d")
(hoarder:fetch "emacsmirror/disptime")
(hoarder:fetch "xahlee/xah_emacs_init")
(hoarder:fetch "lisp/de.setf.utility"
  '(:tag ["common_lisp"]))
(hoarder:fetch "tarao/el-get-cli"
  '(:tag ["el-get" "cli"]))
(hoarder:fetch "coldasparagus/face-schemes"
  '(:tag ["face" "font"]))
(hoarder:fetch "kiwanami/emacs-anything-books"
  '(:tag ["anything" "book"]))
(hoarder:fetch "sbcl/specializable"
  '(:tag ["common_lisp" "clos"]))
(hoarder:fetch "jave/xwidget-aux"
  '(:tag ["xwidget"]))
(hoarder:fetch "tomoyuki28jp/stumpwm"
  '(:tag ["stumpwm"]))
(hoarder:fetch "joelagnel/stumpwm-goodies"
  '(:tag ["stumpwm"]))
(hoarder:fetch "eggcaker/pelm"
  '(:tag ["org"]))
(hoarder:fetch "bodil/ohai-emacs")
(hoarder:fetch "jwiegley/dot-emacs")
(hoarder:fetch "expez/.emacs.d")
(hoarder:fetch "fjyuu/dotfiles")
(hoarder:fetch "wasamasa/xbm-life")
(hoarder:fetch "bodil/microkanrens"
  '(:tag ["logic" "kanren"]))
(hoarder:fetch "emacs-pe/cookiecutter-emacs"
  '(:tag ["cookiecutter" "template"]))
(hoarder:fetch "edrx/eev"
  '(:site "http://angg.twu.net/#eev"))
(hoarder:fetch "laynor/smotitah"
  '(:tag ["configuration"]))
(hoarder:fetch "snosov1/dot-emacs")
(hoarder:fetch "pierre-lecocq/emacs.d")
(hoarder:fetch "meteor1113/dotemacs")
(hoarder:fetch "jeffgran/elscreen-bg"
  '(:desc "defadvice"))
(hoarder:fetch "Idorobots/mode-line-stats"
  '(:tag ["mode-line"]))
(hoarder:fetch "dz/dotfiles")
(hoarder:fetch "git://gist.github.com/5264829.git"
  '(:tag ["emms" "sabof" "gist"]))
(hoarder:fetch "NightBlues/deploy-framework"
  '(:tag ["deploy"]
    :dependency ["sviridov/undercover.el"]))
(hoarder:fetch "https://bitbucket.org/hoangtu/.emacs.d.git")
(hoarder:fetch "wiedzmin/stumpwm-config"
  '(:tag ["stumpwm"]))
(hoarder:fetch "abo-abo/oremacs"
  '(:tag ["configuration" "org" "lispy" "hydra"]))
(hoarder:fetch "inlinestyle/lifted.el")
(hoarder:fetch "luxbock/spacemacs-luxbock"
  '(:tag ["spacemacs" "evil" "evil-cleverparens"]))
(hoarder:fetch "emacsmirror/minibuffer-line"
  '(:tag ["minibuffer" "timer"]))
(hoarder:fetch "uwabami/el-get-deb-package"
  '(:tag ["el-get" "debian"]))
(hoarder:fetch "dfeich/org-babel-examples"
  '(:tag ["org" "org-babel"]))
(hoarder:fetch "renard/o-blog"
  '(:tag ["org" "blog"]))
(hoarder:fetch "tuhdo/tuhdo.github.io"
  '(:tag ["org" "emacs-tutor"]))
(hoarder:fetch "olewhalehunter/kommissar"
  '(:tag ["common_lisp" "browser" "mozrepl"]))
(hoarder:fetch "caiorss/Emacs-Elisp-Programming"
  '(:tag ["elisp" "guilde" "programming"]))
(hoarder:fetch "weavejester/medley"
  '(:tag ["clojure" "map" "utility"]))
(hoarder:fetch "bbatsov/clojure-style-guide"
  '(:tag ["clojure" "style_guide"]))
(hoarder:fetch "flatland/useful"
  '(:tag ["clojure" "utility"]))
(hoarder:fetch "prismatic/plumbing"
  '(:tag ["clojure" "utility"]))
(hoarder:fetch "marick/suchwow"
  '(:tag ["clojure" "utility"]))
(hoarder:fetch "aphyr/merkle"
  '(:tag ["clojure" "map" "tree"]))
(hoarder:fetch "zweifisch/enlive"
  '(:tag ["html" "dom" "xpath"]))
(hoarder:fetch "hyPiRion/fairbrook"
  '(:tag ["clojure" "map" "utility"]))
(hoarder:fetch "mthom/shen-minikanren"
  '(:tag ["shen" "logic" "kanren"]))
(hoarder:fetch "dakrone/cheshire"
  '(:tag ["clojure" "json"]))
(hoarder:fetch "razum2um/awesome-clojure"
  '(:tag ["awesome_list" "clojure"]))
(hoarder:fetch "pogin503/emacs-test-sample"
  '(:tag ["test" "ert" "development" "elisp"]))
(hoarder:fetch "boxed/instar"
  '(:tag ["clojure" "map" "utility"]))
(hoarder:fetch "hick/emacs-chinese"
  '(:tag ["chinese"]))
(hoarder:fetch "elimik31/geohashing_el"
  '(:tag ["geohashing"]))
(hoarder:fetch "nathanmarz/specter"
  '(:tag ["clojure" "map" "utility"]))
(hoarder:fetch "mattduck/generic-css"
  '(:tag ["css" "html" "org"]))
(hoarder:fetch "capitaomorte/holy"
  '(:tag ["sly" "common_lisp" "emacs" "configuration" "stumpwm"]))
(hoarder:fetch "emacsmirror/shop"
  '(:tag ["todo" "shop_list"]))
(hoarder:fetch "eschulte/org-scraps"
  '(:tag ["org" "snippets"]
    :site "http://eschulte.github.com/org-scraps/"
    :desc "Collection of Org-mode snippets"))
(hoarder:fetch "ptaoussanis/encore"
  '(:tag ["clojure" "utility"]))
(hoarder:fetch "jneen/variants-slides"
  '(:tag ["clojure" "variants" "elixir"]))
(hoarder:fetch "supermomonga/darui.io"
  '(:tag ["elnode" "blog" "org" "web" "docker"]))
(hoarder:fetch "ctford/traversy"
  '(:tag ["clojure"]))
(hoarder:fetch "tallesl/Rich-Hickey-fanclub"
  '(:tag ["clojure" "video" "youtube" "rich hickey"]))
(hoarder:fetch "https://gitlab.com/com-informatimago/com-informatimago.git"
  '(:tag ["common-lisp"]))
(hoarder:fetch "git://git.savannah.gnu.org/emacs/elpa.git"
  '(:tag ["elpa" "gnu" "emacs"]))
(hoarder:fetch "clojure/data.zip"
  '(:tag ["clojure" "zipper"]))
(hoarder:fetch "clojure/data.xml"
  '(:tag ["clojure" "xml"]))
(hoarder:fetch "webpro/awesome-dotfiles"
  '(:tag ["awesome-list" "dotfiles"]))
(hoarder:fetch "maitria/packthread"
  '(:tag ["clojure" "threading"]))
(hoarder:fetch "zkat/sheeple"
  '(:tag ["common_lisp" "oop" "clos"]
    :desc "[[https://vimeo.com/7242003&sa=U&ved=0ahUKEwjPjLn82ejJAhUKXRQKHffmDAk4ChC3AggfMAM&usg=AFQjCNERuNfycIl8dKGz0e8t_abMO48R2A]]"))
;; (hoarder:fetch "https://gist.github.com/david-christiansen/2ba5e03910666ae27203")

;; (hoarder:fetch "https://bitbucket.org/tarballs_are_good/lisp-random.git"
;; '(:tag ["common_lisp"]
;; :type hg))


;;; init-hoarder-registers.el ends here
;;
