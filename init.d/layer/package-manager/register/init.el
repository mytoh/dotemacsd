;;; init-hoarder-registers -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(setq max-lisp-eval-depth 8000)

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
(hoarder:register "Fuco1/sallet"
  '(:tag ["helm"]
    :dependency ["lewang/flx"
                 ("magnars/dash.el" ( :compile nil))
                 "magnars/s.el"
                 "jwiegley/emacs-async"
                 "cask/shut-up"
                 "lewang/flx"
                 "jwiegley/emacs-async"
                 "ShingoFukuyama/ov.el"]))
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
(hoarder:register "emacs-helm/helm-describe-modes")
(hoarder:register "alphapapa/helm-org-rifle"
  '(:tag ["org" "helm"]))
(hoarder:register "masutaka/emacs-helm-qiita")
;; (hoarder:register "michael-heerdegen/helm-browse"
;;                  '(:tag ["helm"]
;;                    :dependency ["michael-heerdegen/iterators.el"]))

;;;;; evil
(hoarder:register "https://bitbucket.org/lyro/evil"
  '(:build ["gmake clean doc all"]
    :info "doc"
    :dependency ["emacsmirror/goto-chg"
                 "http://www.dr-qubit.org/git/undo-tree.git"]
    :tag "evil"
    :type :hg))
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
  '(:tag "evil"))
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
(hoarder:register "justbur/pure-evil"
  '(:tag ["evil" "key_binding"]))
(hoarder:register "hlissner/evil-multiedit"
  '(:tag ["evil" "multiple-cursors"]
    :dependency ["tsdh/iedit"]))
(hoarder:register "KNX32542/syndicate"
  '(:tag ["evil" "org"]))
(hoarder:register "edwtjo/evil-org-mode"
  '(:tag "evil"))




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
                 "jwiegley/emacs-async"
                 "magit/with-editor"]
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
    :dependency [("syohex/emacs-anzu" (:compile nil))]))
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
(hoarder:register "Malabarba/aggressive-indent-mode")
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
(hoarder:fetch "rzl24ozi/cmigemo-module"
  '(:tag ["emacs" "migemo" "module"]))
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
(hoarder:register "hiddenlotus/eshell-prompt-extras"
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
;; (hoarder:register "emacsmirror/ob-speak"
;;   '(:tag ["org" "espeak" "org-babel"]
;;     :desc "espeak speech synthesis for org-babel blocks"))
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
(hoarder:register "thieman/soundcloud.el"
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
(hoarder:register "emacsattic/cparen"
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
;; (hoarder:register "erlang/otp"
;;   '(:tag ["erlang" "otp"]
;;     :load-path "lib/tools/emacs"))
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
(hoarder:register "ryuslash/mode-icons")
(hoarder:register "mrkkrp/char-menu"
  '(:tag ["unicode"]
    :dependency ["mrkkrp/avy-menu"]))
(hoarder:register "bbatsov/super-save"
  '(:tag ["auto-save"]))
(hoarder:register "kuanyui/tldr.el"
  '(:tag ["tldr" "man" "document"]))
(hoarder:register "tj64/ert-buffer-report"
  '(:tag ["ert" "org-mode"]))

(hoarder:register "capitaomorte/yasnippet"
  '(:tag ["snippet"]
    :recursive t))
(hoarder:register "mineo/yatemplate"
  '(:tag ["yasnippet" "template" "autoinsert"]
    :dependency ["capitaomorte/yasnippet"]))
(hoarder:register "legoscia/cabledolphin"
  '(:tag ["wireshark" "packet" "network"]))
(hoarder:register "syohex/emacs-ac-shell"
  '(:tag ["auto-complete" "shell"]))
(hoarder:register "idris-hackers/idris-mode"
  '(:tag ["haskell" "idris"]
    :dependency ["david-christiansen/prop-menu-el"]))
(hoarder:register "xuchunyang/eshell-git-prompt"
  '(:tag ["eshell" "prompt" "git"]))
(hoarder:register "noctuid/general.el"
  '(:tag ["keybinding" "evil"]))
(hoarder:register "zonuexe/aa-edit-mode"
  '(:tag ["ascii_art" ]))
(hoarder:register "ryuslash/eshell-fringe-status"
  '(:tag ["eshell"]))
(hoarder:register "emacsmirror/mic-paren"
  '(:tag ["parentheses"]))
(hoarder:register "skyer9/ac-kill-ring"
  '(:tag ["auto-complete" "kill-ring"]))
(hoarder:register "ocaml/tuareg"
  '(:tag ["ocaml"]))
(hoarder:register "NixOS/nix"
  '(:load-path "misc/emacs"))
(hoarder:register "ralesi/ranger.el")
(hoarder:register "https://bitbucket.org/inigoserna/per-buffer-theme.el"
  '(:type :hg))
(hoarder:register "tehom/elisp-depend"
  '(:tag ["emacs-lisp"]))
(hoarder:register "konzeptual/tea-time")
(hoarder:register "LouisKottmann/zygospore.el")
(hoarder:register "apg/unipoint"
  '(:tag ["math" "unicode"]))
(hoarder:register "hitode909/emacs-highlight-unique-symbol"
  '(:tag ["highlight" "symbol"]))
(hoarder:register "ananthakumaran/monky"
  '(:tag ["hg" "mercurial" "magit"]))
(hoarder:register "sabof/magic-buffer")
(hoarder:register "sabof/edit-color-stamp"
  '(:build ["cd qt_color_picker"
            "qmake-qt4 qt_color_picker.pro"
            "gmake"]
    :dependency ["sabof/es-lib"]))
(hoarder:register "cestdiego/c-c-combo.el"
  '(:tag ["sound"]))
(hoarder:register "abo-abo/hydra")
(hoarder:register "mrkkrp/para"
  '(:tag ["paredit" "smartparens"]))
(hoarder:register "ikazuhiro/emoji-display"
  '(:tag ["emoji"]))
(hoarder:register "NicolasPetton/seq.el")
(hoarder:register "mbunkus/simple-rtm"
  '(:tag ["org" "remember_the_milk"]
    :load-path "lisp"))
(hoarder:register "rolandwalker/hardhat")
(hoarder:register "aaron-em/niceify-info.el"
  '(:tag ["info"]))
(hoarder:register "ALSchwalm/power-mode.el")
(hoarder:register "https://gitlab.com/RobertCochran/neato-graph-bar.git"
  '(:tag ["cpu" "memory" "monitor"]))
(hoarder:register "https://gitlab.com/tarsius/epkg.git"
  '(:tag ["emacsmirro" "package" "archive"]
    :dependency ["https://gitlab.com/tarsius/closql.git"
                 "skeeto/emacsql"
                 "skeeto/elisp-finalize"]))
(hoarder:register "akrito/acme-mouse"
  '(:tag ["plan9" "acme"]))
(hoarder:register "afainer/arview"
  '(:tag ["archive" ]))
(hoarder:register "thomp/datclip"
  '(:tag ["clipboard" "x11" "xclip"]))
(hoarder:register "chrisbarrett/ert-modeline"
  '(tag ["ert" "test" "modeline"]))
(hoarder:register "lujun9972/uimage"
  '(:tag ["image" "link" "display"]))
(hoarder:register "Malabarba/validate.el"
  '(:tag ["schema" "validation"]))
(hoarder:register "hl-anything/hl-anything-emacs"
  '(:tag ["highlight"]))
(hoarder:register "Kungsgeten/yankpad"
  '(:tag ["snippet" "yasnippet" "org"]))
(hoarder:register "hatschipuh/helm-better-defaults"
  '(:tag ["helm" "configuration"]))
(hoarder:register "yuya373/emacs-dwm"
  '(:tag ["dwm" "window_management"]))
(hoarder:register "lujun9972/verify-url")
(hoarder:register "lujun9972/el-start-menu")
(hoarder:register "gizmomogwai/org-kanban"
  '(:tag ["org-mode" "kanban" "pomodoro"]))
(hoarder:register "hinrik/perl6-mode"
  '(:tag ["perl6"]))
(hoarder:register "Malabarba/emacs-google-this"
  '(:tag ["google" "search"]))
;; (hoarder:register "papaeye/emacs-jscs"
;;                   '(:tag ["language" "javascript" "jscs" "format"]
;;                     :dependency (("papaeye/go-mode.el"
;;                                (:tag ["langfmt"])))))

(hoarder:register "politza/pdf-tools"
  '(:tag ["pdf"]))
;; (hoarder:register "http://git.chise.org/git/elisp/flim.git"
;;                  '(:tag ["flim" "luna"]))


;;;;; org
(hoarder:register "git://orgmode.org/org-mode.git"
  '(:load-path ["lisp" "contrib/lisp"]
    :compile nil
    :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
    :info "doc"
    :tag "org"))
(hoarder:register "tj64/org-hlc")

(hoarder:register "tj64/outorg" '(:compile nil
                            :branch "trunk"
                            :tag ["org" "outline"]))
(hoarder:register "tj64/outshine" '(:compile nil
                              :branch "trunk"
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
(hoarder:register "linktohack/org-breadcrumbs"
  '(:tag ["org"]))

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
(hoarder:register-theme "Soren-Nordstrom/motoko-night")
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
  '(:load-path ["." "themes"]))
(hoarder:register-theme "cryon/subatomic")
(hoarder:register-theme "Gastove/rhombus")
(hoarder:register-theme "Fanael/colorsarenice-theme")
(hoarder:register-theme "aalpern/emacs-color-theme-green-phosphor")
(hoarder:register-theme "Alexander-Miller/morning-star-theme")
(hoarder:register-theme "nhunzaker/emacs-ectoplasm-theme")
(hoarder:register-theme "PGGB/emacs-bluedrake-theme")
(hoarder:register-theme "kostafey/organic-green-theme")
(hoarder:register-theme "nashamri/spacemacs-theme")
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
(hoarder:register-theme "uemurax/japanese-theme"
  '(:build ["gmake ELC"]))
(hoarder:register-theme "siovan/emacs24-inkpot")
(hoarder:register-theme "mswift42/reykjavik-theme")
(hoarder:register-theme "fourier/borland-blue-theme")
(hoarder:register-theme "hubisan/lorisan-theme")
(hoarder:register-theme "hodumi/hodumi-theme")
(hoarder:register-theme "mswift42/hamburg-theme")
(hoarder:register-theme "TheSuspiciousWombat/suscolors-emacs")
(hoarder:register-theme "franksn/omtose-phellack-theme")
(hoarder:register-theme "rost/emacs-lesser-theme")
(hoarder:register-theme "d125q/gruvbox-dark-emacs")
(hoarder:register-theme "rogermolas/boracay-dark.el")
(hoarder:register-theme "mswift42/silkworm-theme")
(hoarder:register-theme "mswift42/foggy-night-theme")
(hoarder:register-theme "shaunvxc/dark-mint-theme")
(hoarder:register-theme "jimeh/twilight-anti-bright-theme")
(hoarder:register-theme "ryuslash/yoshi-theme")
(hoarder:register-theme "jefflasslett/positive-reinforcement-theme")
(hoarder:register-theme "wasamasa/punpun-theme")
(hoarder:register-theme "MetroWind/emacs-deviant-theme")
(hoarder:register-theme "sainathadapa/emacs-hybrid-material")
(hoarder:register-theme "ranmocy/amelie-theme")
(hoarder:register-theme "marktran/color-theme-ujelly")
(hoarder:register-theme "caisah/liso-theme")
(hoarder:register-theme "ksjogo/labburn-theme")
(hoarder:register-theme "kootenpv/emacs-kooten-theme")
(hoarder:register-theme "mswift42/obsidian-theme")
(hoarder:register-theme "j0ni/phoenix-dark-mono")
(hoarder:register-theme "nanzhong/nine27-theme")
(hoarder:register-theme "onurtemizkan/paganini")
;;;;; local packages
(cl-labels ((add-project-root (path &optional option)
              (cl-letf ((proj-path (thread-last (getenv "HUONE")
                                     (expand-file-name "ateljee")
                                     (expand-file-name path))))
                (when (file-exists-p proj-path)
                  (hoarder:register proj-path option)))))
  (add-project-root  "emacs-flatline")
  (add-project-root "helm-yplistener" '(:tag "helm"
                                        :load-path ["lisp"]))
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
  (add-project-root "eshell-lista")
  (add-project-root "emacs-colle" '(:load-path ["lisp"]))
  (add-project-root "emacs-sis"))

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
;; (hoarder:fetch "jpace121/evil-ed")
(hoarder:fetch "sunesimonsen/evil-config")
(hoarder:fetch "gbarta/evil-my-shims")
(hoarder:fetch "novoid/Memacs")
(hoarder:fetch "novoid/dot-emacs"
  '(:tag ["org"]))
;; (hoarder:fetch "terhechte/emacs.d")
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
  '(:tag ["common_lisp" "stumpwm"]
    :load-path "util/swm-emacs"))
(hoarder:fetch "stumpwm/stumpwm.wiki"
  '(:tag ["common_lisp" "stumpwm"]))
(hoarder:fetch "deepfire/cl-org-mode"
  '(:tag ["common_lisp" "org"]))
(hoarder:fetch "Ramarren/cl-parser-combinators"
  '(:tag ["common_lisp" "parser"]))
(hoarder:fetch "https://gitlab.common-lisp.net/alexandria/alexandria.git"
  '(:tag ["common_lisp"]
    :depth nil))
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
;; (hoarder:fetch "grettke/home"
;;   '(:tag ["org"]))
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
(hoarder:fetch "fniessen/orgmk"
  '(:tag ["org"]))
(hoarder:fetch "fniessen/org-macros"
  '(:tag ["org"]))
(hoarder:fetch "fniessen/refcard-org-babel"
  '(:tag ["org"]))
(hoarder:fetch "https://gitlab.com/egh/org-cook.git"
  '(:tag ["org" "cooking"]
    :depth nil))
(hoarder:fetch "https://gitlab.com/egh/org-brew.git"
  '(:tag ["org" "brewing"]
    :depth nil))
(hoarder:fetch "krisajenkins/EvilBegins"
  '(:tag ["evil"]))
(hoarder:fetch "bzg/org-mode-rr"
  '(:tag ["org" "reproducible_research"]))
;; (hoarder:fetch "jkitchin/jmax"
;;   '(:tag ["org"]
;;     :recursive nil))
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
;; (hoarder:fetch "http://git.randomsample.de/cedet.git") 
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
    :desc "Use ido completion for the fasd utility in an emacs shell."
    :depth nil))
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
;; (hoarder:fetch "baohaojun/system-config"
;;   '(:tag ["chinese" "font"]))
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
  '(:tag ["common-lisp"]
    :depth nil))
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
(hoarder:fetch "Shinmera/.emacs"
  '(:tag ["dotemacs" "emacs" "common_lisp"]))
(hoarder:fetch "SiCKRAGETV/SiCKRAGE"
  '(:tag ["nzb" "torrent"]))
(hoarder:fetch "hlissner/emacs.d"
  '(:tag ["emacs" "dotfiles" "evil"]))
(hoarder:fetch "sferik/active_emoji"
  '(:tag ["ruby" "emoji"]))
(hoarder:fetch "https://git.fleshless.org/frozenbar"
  '(:type :git
    :tag ["lemonbar" "statusbar"]))
(hoarder:fetch "noctuid/dotfiles"
  '(:tag ["dotfiles" "emacs"]))
(hoarder:fetch "gstk/siji"
  '(:tag ["font" "icon" "bitmap" "dwm"]))
(hoarder:fetch "phallus/fonts"
  '(:tag ["font" "icon"]))
(hoarder:fetch "Abhishaker17/Awesome-APIs"
  '(:tag ["awesome" "list" "api"]))
(hoarder:fetch "https://gitgud.io/Nagru/Manga-Organizer.git")
(hoarder:fetch "xyl0n/iris"
  '(:tag ["gtk" "theme"]))
(hoarder:fetch "lxde/pcmanfm-qt"
  '(:tag ["desktop" "qt" "lxde"]))
(hoarder:fetch "http://git.suckless.org/farbfeld"
  '(:tag ["image" "format"]
    :type :git))
(hoarder:fetch "git://git.2f30.org/lel.git"
  '(:tag ["image" "viewer" "farbfeld"]))
(hoarder:fetch "FLIF-hub/FLIF"
  '(:tag ["image" "format"]))
(hoarder:fetch "parro-it/awesome-micro-npm-packages"
  '(:tag ["node" "npm" "awesome-list"]))
(hoarder:fetch "pyllyukko/user.js"
  '(:tag ["firefox" "javascript" "security"]))
(hoarder:fetch "dylanaraps/neofetch"
  '(:tag ["screenfetch"]))
(hoarder:fetch "TheReverend403/rice-stuff"
  '(:tag ["rice" "desktop"]))
(hoarder:fetch "uncomplicate/fluokitten"
  '(:tag ["clojure" "haskell" "monad" "category"]))
(hoarder:fetch "purnam/brahmin"
  '(:tag ["clojure" "haskell" "monad" "category"]))
(hoarder:fetch "eosrei/emojione-color-font"
  '(:tag ["font" "emoji" "emojione"]))
(hoarder:fetch "ramda/ramda"
  '(:tag ["javascript"]))
(hoarder:fetch "janestreet/core_kernel"
  '(:tag ["ocaml"]))
(hoarder:fetch "ocaml-batteries-team/batteries-included"
  '(:tag ["ocaml"]))
(hoarder:fetch "fukamachi/qlot"
  '(:tag ["common_lisp" "bundlr"]))
(hoarder:fetch "fantasyland/fantasy-land"
  '(:tag ["monad" "javascript"]))
(hoarder:fetch "fantasyland/fantasy-birds"
  '(:tag ["combinator" "javascript"]))
(hoarder:fetch "maio/smagit"
  '(:tag ["magit" "git"]))
(hoarder:fetch "http://git.tukaani.org/xz.git"
  '(:tag ["archive" "xz" "lzma"]
    :depth nil))
(hoarder:fetch "brabadu/awesome-fonts"
  '(:tag ["font"]))
;; (hoarder:fetch "chrissimpkins/codeface"
;;   '(:tag ["font"]))
(hoarder:fetch "Tecate/bitmap-fonts"
  '(:tag ["font"]))
(hoarder:fetch "roberoonska/dotfiles"
  '(:tag ["dotfiles" "colorscript" ]))
(hoarder:fetch "geommer/yabar"
  '(:tag ["bar" "wm" "desktop"]))
(hoarder:fetch "Anachron/i3blocks"
  '(:tag ["i3" "wm" "bar" "desktop"]))
(hoarder:fetch "deviantfero/wpgtk"
  '(:tag ["gtk" "colorscheme"]))
(hoarder:fetch "gstk/color-scripts")
(hoarder:fetch "Floens/uchan"
  '(:tag ["4chan" "chan" "bbs"]))
(hoarder:fetch "get-iplayer/get_iplayer"
  '(:tag ["radio" "bbc"]))
(hoarder:fetch "fanglingsu/vimb"
  '(:tag ["web" "browser" "vim" "webkit"]))
(hoarder:fetch "storax/emaci"
  '(:tag ["CI" "continuous integration"]))
(hoarder:fetch "mizzy/specinfra"
  '(:tag ["itamae" "configuration" "provisioning" "chef" "puppet" "ssh" "freebsd"]))
(hoarder:fetch "capistrano/sshkit"
  '(:tag ["ssh"]))
(hoarder:fetch "caffo/org-minimal-html-theme"
  '(:tag ["org-mode" "html"]))
(hoarder:fetch "DaveDavenport/rofi"
  '(:tag ["desktop" "utility" "dmenu"]))
(hoarder:fetch "jloughry/Unicode"
  '(:tag ["font" "unicode" "power_symbol" "iec"]))
(hoarder:fetch "ripienaar/free-for-dev"
  '(:tag ["devops" "SaaS" "PaaS" "IaaS"]))
(hoarder:fetch "rizo/awesome-ocaml"
  '(:tag ["ocaml" "awesome_list"]))
(hoarder:fetch "melling/ComputerLanguages"
  '(:tag ["notes" "languages" "haskell" "ocaml"]))
(hoarder:fetch "sugano-nu/tofu"
  '(:tag ["game"]))
(hoarder:fetch "ImageMagick/ImageMagick"
  '(:tag ["image" "graphic" "conversion"]))
(hoarder:fetch "sjsyrek/maryamyriameliamurphies.js"
  '(:tag ["javascript" "monad" "haskell"]))
(hoarder:fetch "cgrand/xforms"
  '(:tag ["clojure" "transducer" ]))
(hoarder:fetch "DrBoolean/pointfree-fantasy"
  '(:tag ["fantasy-land" "javascript" "combinator"]))
(hoarder:fetch "ggreer/the_silver_searcher"
  '(:tag ["ag" "grep" "ack"]))
(hoarder:fetch "googlei18n/noto-emoji"
  '(:tag ["font" "emoji"]))
(hoarder:fetch "mietek/charity-language"
  '(:tag ["charity" "language" "paramorphism" ]))
(hoarder:fetch "libressl-portable/portable"
  '(:tag ["openssl" ]))
(hoarder:fetch "rg3/youtube-dl"
  '(:tag ["youtube"]))
(hoarder:fetch "phillipberndt/pqiv"
  '(:tag ["image" "viewer"]))
(hoarder:fetch "taglib/taglib")
(hoarder:fetch "https://gitlab.com/KNX32542/dotfiles.git"
  '(:tag ["gitlab" "evil" "org" "emacs" "syndicate" "org-babel"]
    :depth nil))
(hoarder:fetch "jart/hiptext"
  '(:tag ["image" "text" "sixel"]))
(hoarder:fetch "toddmotto/public-apis"
  '(:tag ["api" "public" "data"]))
(hoarder:fetch "chriskite/anemone"
  '(:tag ["ruby" "crawler" "scraping"]))
(hoarder:fetch "MihailJP/Inconsolata-LGC"
  '(:tag ["font"]))
(hoarder:fetch "jodrell/unbound-block-hosts"
  '(:tag ["unbound" "dns" "hosts" "adblock"]))
(hoarder:fetch "StevenBlack/hosts"
  '(:tag ["unbound" "dns" "hosts" "adblock"]))
(hoarder:fetch "lodash/lodash"
  '(:tag ["javascript"]))
(hoarder:fetch "l3ib/nitrogen")
(hoarder:fetch "jjk-jacky/donnatella")
(hoarder:fetch "https://git.lysator.liu.se/nettle/nettle.git"
  '(:tag ["gnutls" "crypto" "security"]))
(hoarder:fetch "emacs-mirror/emacs"
  '(:branch "master"))
(hoarder:fetch "kentaro/cinnamon")
(hoarder:fetch "aharris88/awesome-cli-apps")
(hoarder:fetch "zythum/mama2"
  '(:tag ["bilibili" "youku"]))
(hoarder:fetch "yangyangwithgnu/hardseed"
  '(:tag ["porn" ]))
(hoarder:fetch "akameco/pixiv.js"
  '(:tag ["javascript" "pixiv"]))
(hoarder:fetch "akameco/npm-pixiv"
  '(:tag ["javascript" "pixiv" "npm"]))
(hoarder:fetch "vdemedes/gifi"
  '(:tag ["javascript" "gif" "npm" "image"]))
(hoarder:fetch "https://bitbucket.org/arakiken/mlterm"
  '(:type :hg
    :tag ["terminal"]))
(hoarder:fetch "pcbsd/lumina"
  '(:tag ["freebsd" "pcbsd" "fluxbox" "de"]
    :branch "qt4/0.7.2"))
(hoarder:fetch "git://git.fluxbox.org/fluxbox.git"
  '(:tag ["WM" "desktop"]))
(hoarder:fetch "RareAMV/WeebIRC"
  '(:tag ["irc" "anime"]))
(hoarder:fetch "git://git.sv.gnu.org/coreutils.git"
  '(:tag ["gnu" "coreutils"]))
(hoarder:fetch "git://git.samba.org/rsync.git"
  '(:depth nil))
(hoarder:fetch "seebi/dircolors-solarized"
  '(:tag ["solarized" "dircolors" "ls" "colorscheme"]))
(hoarder:fetch "novoid/org-mode-workshop"
  '(:tag ["orgmode"]))
(hoarder:fetch "minetest/minetest"
  '(:tag ["game" "minecraft"]))
(hoarder:fetch  "glennrp/libpng"
  '(:tag ["png" "graphic"]))
(hoarder:fetch "gapan/xdgmenumaker"
  '(:tag ["desktop" "xdg" "fluxbox"]))
(hoarder:fetch "txt2tags/txt2tags"
  '(:tag ["man" "python"]))
(hoarder:fetch "scheme-requests-for-implementation/srfi-133"
  '(:tag ["srfi" "vector" "scheme"]))
(hoarder:fetch "stathissideris/dali"
  '(:tag ["svg" "clojure" "xml" "hiccup"]))
(hoarder:fetch "sbocq/predicat"
  '(:tag ["clojure" "validation" "schema"]))
(hoarder:fetch "mgi/wm"
  '(:tag ["desktop" "wm" "common-lisp"]))
(hoarder:fetch "akroshko/emacs-otdb"
  '(:tag ["org"]))
(hoarder:fetch "seven332/EhViewer")
(hoarder:fetch "txus/kleisli"
  '(:tag ["category" "kleisli" "ruby" "ruby"]))
(hoarder:fetch "sdiehl/protolude"
  '(:tag ["haskell" "prelude"]
    :site "http://www.stephendiehl.com/posts/protolude.html"))
(hoarder:fetch "MrS0m30n3/youtube-dl-gui")
(hoarder:fetch "cask/cask")
(hoarder:fetch "git://g.blicky.net/ncdc.git"
  '(:tag ["DC" "download"]))
(hoarder:fetch "ThomasMeier/falcon"
  '(:tag ["clojure" "dom" "html" ]))
(hoarder:fetch "davidsantiago/hickory"
  '(:tag ["clojure" "dom" "html" "hiccup"]))
(hoarder:fetch "mattduck/splitscreen"
  '(:tag ["tmux" "vim" "emacs"]))
(hoarder:fetch "anubiann00b/AnimeDownloader"
  '(:tag ["anime" "download" "pyhton"]))
(hoarder:fetch "Juniper/libxo"
  '(:tag ["printf"]))
(hoarder:fetch "cloojure/tupelo"
  '(:tag ["clojure" "utility"]))
(hoarder:fetch "m-khvoinitsky/dark-background-light-text-extension"
  '(:tag ["firefox" "theme" "addon" "css"]))
(hoarder:fetch "yjh0502/comic"
  '(:tag ["image" "viewer" "comic" "archive"]))
(hoarder:fetch "lucy/af"
  '(:tag ["ag" "grep"]))
(hoarder:fetch "tsudoko/pixivrss"
  '(:tag ["pixiv" "rss"]))
(hoarder:fetch "Hamuko/nyaamagnet"
  '(:tag ["torrent" "magnet_link"]))
(hoarder:fetch "Fuuzetsu/h-booru"
  '(:tag ["haskell" "booru" "downloader"]))
(hoarder:fetch "Fuuzetsu/heee-lisp"
  '(:tag ["haskell" "monad" "emacs"]))
(hoarder:fetch "ivoarch/conkeror-theme-zenburn"
  '(:tag ["conkeror"]))
(hoarder:fetch "lotz84/haskell"
  '(:tag ["hasell" "reference"]))
(hoarder:fetch "note103/dirmove"
  '(:tag ["cd" "cli" "peco" "sentaku"]))
;; (hoarder:fetch "https://gitlab.com/MovingBlocks/Terasology.git"
;;   '(:tag ["minecraft" "java" "voxel" "game"]
;;     :depth nil))
(hoarder:fetch "https://gitlab.com/procps-ng/procps.git"
  '(:tag ["linux" "procfs"]
    :depth nil))
(hoarder:fetch "ruricolist/spinneret"
  '(:tag ["common-lisp" "html" "html5"]))
(hoarder:fetch "nebukazar/OneeChan"
  '(:tag ["4chan" "css" "firefox" "addon"]))
(hoarder:fetch "Cloudef/monsterwm"
  '(:tag ["wm" "x11"]))
(hoarder:fetch "LemonBoy/bar"
  '(:tag ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "moetunes/Some_sorta_bar"
  '(:tag ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "moetunes/bipolarbar"
  '(:tag ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "c00kiemon5ter/mopag"
  '(:tag ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "ahushh/Monaba"
  '(:tag ["imageboard" "haskell" "yesod" "kusaba"]))
(hoarder:fetch "driftyco/ionicons"
  '(:tag ["icon" "font"]))
(hoarder:fetch "https://gitla.in/ovibos/quicksilver.git"
  '(:tag ["imageboard" "haskell"]))
(hoarder:fetch "gwkkwg/cl-containers"
  '(:tag ["common_lisp" "data_structure"]))
(hoarder:fetch "dustinspecker/awesome-eslint"
  '(:tag ["javascript" "eslint"]))
(hoarder:fetch "stoeffel/awesome-fp-js"
  '(:tag ["javascript" "functional" "immutable"]))
(hoarder:fetch "redrifle/FreeView"
  '(:tag ["image" "viewer"]))
(hoarder:fetch "https://git.xiph.org/flac.git"
  '(:tag ["audio"]
    :depth nil))
(hoarder:fetch "https://git.xiph.org/opus.git"
  '(:tag ["audio"]
    :depth nil))
(hoarder:fetch "https://git.xiph.org/opus-tools.git"
  '(:tag ["audio" "opus"]
    :depth nil))
(hoarder:fetch "bbidulock/icewm"
  '(:tag ["wm" "desktop" "x11"]))
(hoarder:fetch "clowwindy/Awesome-Networking"
  '(:tag ["awesome_list" "network"]))
(hoarder:fetch "zenozeng/Free-Chinese-Fonts"
  '(:tag ["font" "chinese"]))
(hoarder:fetch "vurtun/nuklear"
  '(:tag ["gui" "toolkit"]))
(hoarder:fetch "hayderctee/masalla-icon-theme"
  '(:tag ["icon" "theme" "x11" "desktop"]))
(hoarder:fetch "xenlism/wildfire"
  '(:tag ["icon" "theme" "x11" "desktop"]))
(hoarder:fetch "xenlism/Storm"
  '(:tag ["icon" "theme" "x11" "desktop"]))
(hoarder:fetch "baurigae/polar-night"
  '(:tag ["gtk" "theme" "x11" "desktop"]))
(hoarder:fetch "anexation/menda-icon-themes"
  '(:tag ["icon" "theme" "x11" "desktop"]))
(hoarder:fetch "DrBoolean/RecursionTalk"
  '(:tag ["javascript" "fold"]))
(hoarder:fetch "mpv-android/mpv-android"
  '(:ag ["mpv" "android"]))
(hoarder:fetch "dulleh/akhyou"
  '(:tag ["anime" "android"]))
(hoarder:fetch "gwkkwg/metabang-bind"
  '(:tag ["common-lisp" "macro" "let" "binding"]))
(hoarder:fetch "https://gitla.in/nano/Craft.git"
  '(:tag ["minecraft"]))
(hoarder:fetch "morishitter/stylefmt"
  '(:tag ["css" "formatter" "web"]))
(hoarder:fetch "alphapapa/reddit-emacs-css"
  '(:tag ["css" "reddit"]))
(hoarder:fetch "jrockway/dotfiles"
  '(:tag ["perl"]))
(hoarder:fetch "ertugrulcetin/kezban"
  '(:tag ["clojure"]))
(hoarder:fetch "pi-hole/pi-hole"
  '(:tag ["raspberrypi" "adblock"]))
(hoarder:fetch "emcrisostomo/fswatch"
  '(:tag ["freebsd" "inotify"]))
(hoarder:fetch "emcrisostomo/FreeBSD-Ports"
  '(:tag ["freebsd" "fswatch"]))
(hoarder:fetch "dmatveev/libinotify-kqueue"
  '(:tag ["freebsd" "inotify" "kqueue"]))
(hoarder:fetch "faelys/filewatcherd"
  '(:tag ["freebsd" "inotify"]))
(hoarder:fetch "ogham/exa"
  '(:tag ["rust" "ls" "cli"]))
(hoarder:fetch "AurelienLourot/uncommitted"
  '(:tag ["git" "pythhon"]))
(hoarder:fetch "iCHAIT/awesome-subreddits"
  '(:tag ["awesome_list" "reddit"]))
(hoarder:fetch "feross/webtorrent-desktop"
  '(:tag ["webtorrent" "torrent"]))
(hoarder:fetch "sindresorhus/refined-github"
  '(:tag ["github" "chrome" "css"]))
(hoarder:fetch "https://gitlab.com/NTPSec/ntpsec.git"
  '(:tag ["ntp"]))
(hoarder:fetch "git://erdgeist.org/opentracker") 
(hoarder:fetch "git://git.2f30.org/colors") 
(hoarder:fetch "git://git.dolezel.info/fatrat.git") 
(hoarder:fetch "git://git.gnome.org/byzanz") 
(hoarder:fetch "git://git.gnupg.org/gnupg.git") 
(hoarder:fetch "git://git.kernel.org/pub/scm/editors/uemacs/uemacs.git") 
(hoarder:fetch "git://git.musicpd.org/master/mpd.git") 
;; (hoarder:fetch "git://git.savannah.gnu.org/emacs") 
(hoarder:fetch "git://git.savannah.gnu.org/screen.git") 
(hoarder:fetch "git://git.savannah.gnu.org/stow.git") 
(hoarder:fetch "git://git.savannah.nongnu.org/gzochi.git") 
(hoarder:fetch "git://git.savannah.nongnu.org/ranger.git") 
(hoarder:fetch "git://git.sourceforge.jp/gitroot/ninix-aya/master.git") 
(hoarder:fetch "git://git.suckless.org/sprop") 
(hoarder:fetch "git://git.suckless.org/st") 
(hoarder:fetch "git://git.suckless.org/sup") 
(hoarder:fetch "git://git.suckless.org/surf") 
(hoarder:fetch "git://git.sv.gnu.org/erbot.git") 
(hoarder:fetch "git://git.sv.gnu.org/guile.git") 
(hoarder:fetch "git://git.sv.gnu.org/librejs.git") 
(hoarder:fetch "git://git.sv.gnu.org/smalltalk.git") 
(hoarder:fetch "http://neetco.de/chibi/sshchan"
  '(:type :git)) 
(hoarder:fetch "cjdelisle/cjdns") 
(hoarder:fetch "symbolset/ss-emoji-beta") 
(hoarder:fetch "https://notabug.org/koz.ross/awesome-c.git") 
;; (hoarder:fetch "https://notabug.org/koz.ross/awesome-cl.git") 
(hoarder:fetch "CodyReichert/awesome-cl")
(hoarder:fetch "https://notabug.org/wubthecaptain/deathwatch-pomf.git") 
(hoarder:fetch "git://repo.or.cz/abduco.git") 
(hoarder:fetch "git://repo.or.cz/conkeror.git") 
(hoarder:fetch "git://repo.or.cz/dvtm.git") 
(hoarder:fetch "json-porn-api/demo"
  '(:tag ["json" "porn" "api"]))
(hoarder:fetch "kana/vim-submode"
  '(:tag ["vim"]))
(hoarder:fetch "jedisct1/dnscrypt-proxy"
  '(:tag ["dns" "dnscrypt" "dnssec"])) 
(hoarder:fetch "Cofyc/dnscrypt-wrapper"
  '(:tag ["dns" "dnscrypt" "dnssec"]))
(hoarder:fetch "DaveDavenport/rofi-themes"
  '(:tag ["rofi"])) 
(hoarder:fetch "Jehops/swm-freebsd-battery-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-cpu-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-mem-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-net-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-volume-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-zfs-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-hostname-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-maildir-modeline"
  '(:tag ["stumpwm" "freebsd"])) 
(hoarder:fetch "MirBSD/mksh") 
(hoarder:fetch "NitruxSA/flattr-icons") 
(hoarder:fetch "NitruxSA/plasma-next-icons") 
(hoarder:fetch "derf/feh") 
(hoarder:fetch "fabianalexisinostroza/Antu") 
(hoarder:fetch "fish-shell/fish-shell") 
(hoarder:fetch "git/git") 
(hoarder:fetch "horst3180/Arc-theme") 
(hoarder:fetch "horst3180/ceti-2-theme") 
(hoarder:fetch "horst3180/ceti-theme") 
(hoarder:fetch "idris-lang/Idris-dev") 
(hoarder:fetch "jgm/pandoc") 
(hoarder:fetch "mbunkus/mkvtoolnix"
  '(:recursive t)) 
(hoarder:fetch "neovim/neovim") 
(hoarder:fetch "neovim/python-client") 
(hoarder:fetch "numixproject/numix-icon-theme-circle") 
(hoarder:fetch "ozonos/ozon-gtk-theme") 
(hoarder:fetch "sixsixfive/Glare") 
(hoarder:fetch "skroll/privoxy-adblock"
  '(:tag ["privoxy" "adblock"])) 
(hoarder:fetch "Andrwe/privoxy-blocklist"
  '(:tag ["privoxy" "adblock"]))
(hoarder:fetch "snmsts/roswell") 
(hoarder:fetch "solus-project/evopop-gtk-theme") 
(hoarder:fetch "solus-project/evopop-icon-theme") 
(hoarder:fetch "stumpwm/stumpwm") 
(hoarder:fetch "stumpwm/stumpwm-contrib") 
(hoarder:fetch "whatyouhide/gotham-contrib"
  '(:tag ["colorscheme"])) 
(hoarder:fetch "zovt/papier-gtk-theme") 


(hoarder:fetch "2xT/kaistapaa"
  '(:download nil)) 
(hoarder:fetch "3ofcoins/jetpack"
  '(:download nil)) 
(hoarder:fetch "86me/pentadactyl-scripts"
  '(:download nil)) 
(hoarder:fetch "Ahed91/Mlterm-Color-Schames"
  '(:download nil)) 
(hoarder:fetch "AnidevFR/NyaaAPI"
  '(:download nil)) 
(hoarder:fetch "Argon-/mpv-stats"
  '(:download nil)) 
(hoarder:fetch "Cloudef/dmenu-pango-imlib"
  '(:download nil)) 
(hoarder:fetch "Cloudef/dotFiles"
  '(:download nil)) 
(hoarder:fetch "Cloudef/dotfiles-ng"
  '(:download nil)) 
(hoarder:fetch "Cloudef/monsterwm-xcb"
  '(:download nil)) 
(hoarder:fetch "Cloudef/sxiv"
  '(:download nil)) 
(hoarder:fetch "Cloudef/xcmenu"
  '(:download nil)) 
(hoarder:fetch "DaisukeAramaki/Dotfiles"
  '(:download nil)) 

(hoarder:fetch "EZ3CHI3L/Eternity"
  '(:download nil)) 
(hoarder:fetch "FFmpeg/FFmpeg"
  '(:download nil)) 
(hoarder:fetch "FLIF-hub/FLIF"
  '(:download nil)) 
(hoarder:fetch "FooSoft/homemaker"
  '(:download nil)) 
(hoarder:fetch "Fvwm-Nightshade/Fvwm-Nightshade"
  '(:download nil)) 
(hoarder:fetch "GGLucas/vimperator-buftabs"
  '(:download nil)) 
(hoarder:fetch "Gabriel439/Haskell-Turtle-Library"
  '(:download nil)) 
(hoarder:fetch "Griever/userChromeJS"
  '(:download nil)) 
(hoarder:fetch "HelloZeroNet/ZeroNet"
  '(:download nil)) 
(hoarder:fetch "Hiroyuki-Nagata/XrossBoard"
  '(:download nil)) 
(hoarder:fetch "Hund/Userstyles"
  '(:download nil)) 
(hoarder:fetch "IgnorantGuru/spacefm"
  '(:download nil)) 
(hoarder:fetch "ImageMagick/ImageMagick"
  '(:download nil)) 
(hoarder:fetch "ItzBlitz98/torrentflix"
  '(:download nil)) 
(hoarder:fetch "KeenS/CIM"
  '(:download nil)) 
(hoarder:fetch "Kickball/awesome-selfhosted"
  '(:download nil)) 
(hoarder:fetch "LemonBoy/bar"
  '(:download nil)) 
(hoarder:fetch "MLton/mlton"
  '(:download nil)) 
(hoarder:fetch "MagikBSD/please"
  '(:download nil)) 
(hoarder:fetch "Masterminds/glide"
  '(:download nil)) 
(hoarder:fetch "MidnightCommander/mc.git"
  '(:download nil)) 
(hoarder:fetch "Nandaka/DanbooruDownloader"
  '(:download nil)) 
(hoarder:fetch "Nenuphar/Dyod"
  '(:download nil)) 
(hoarder:fetch "NoahBuscher/Flatron"
  '(:download nil)) 
(hoarder:fetch "OpenBazaar/OpenBazaar"
  '(:download nil)) 
(hoarder:fetch "Pewpews/happypanda"
  '(:download nil)) 
(hoarder:fetch "PopcornTimeCE/popcorntimece"
  '(:download nil)) 
(hoarder:fetch "Rabrennie/anything.js"
  '(:download nil)) 
(hoarder:fetch "Ranks/emojione"
  '(:download nil)) 
(hoarder:fetch "Raynes/fs"
  '(:download nil)) 
(hoarder:fetch "RubenRocha/ricey"
  '(:download nil)) 
(hoarder:fetch "Russell91/sshrc"
  '(:download nil)) 
(hoarder:fetch "RuudBurger/CouchPotatoServer"
  '(:download nil)) 
(hoarder:fetch "Shinryuu/dotfiles"
  '(:download nil)) 
(hoarder:fetch "Shougo/dein.vim"
  '(:download nil)) 
(hoarder:fetch "Shougo/vimshell.vim"
  '(:download nil)) 
(hoarder:fetch "Slevinski/signwriting_2010_fonts"
  '(:download nil)) 
(hoarder:fetch "Stephen304/bitcannon"
  '(:download nil)) 
(hoarder:fetch "Swordfish90/cool-retro-term"
  '(:download nil)) 
(hoarder:fetch "TBRSS/serapeum"
  '(:download nil)) 
(hoarder:fetch "Tecate/bitmap-fonts"
  '(:download nil)) 
(hoarder:fetch "TheMozg/awk-raycaster"
  '(:download nil)) 
(hoarder:fetch "UniversalMediaServer/UniversalMediaServer"
  '(:download nil)) 
(hoarder:fetch "aajanki/yle-dl"
  '(:download nil)) 
(hoarder:fetch "adobe-fonts/source-han-code-jp"
  '(:download nil)) 
(hoarder:fetch "adobe-type-tools/afdko"
  '(:download nil)) 
(hoarder:fetch "agda/agda"
  '(:download nil)) 
(hoarder:fetch "agtorre/gocolorize"
  '(:download nil)) 
(hoarder:fetch "ahodesuka/ahoviewer"
  '(:download nil)) 
(hoarder:fetch "ainame/mediakit"
  '(:download nil)) 
(hoarder:fetch "alebcay/awesome-shell"
  '(:download nil)) 
(hoarder:fetch "alezost/stumpwmrc"
  '(:download nil)) 
(hoarder:fetch "alice0775/userChrome.js"
  '(:download nil)) 
(hoarder:fetch "aliceml/aliceml"
  '(:download nil)) 
(hoarder:fetch "allanjude/uclcmd"
  '(:download nil)) 
(hoarder:fetch "alphapapa/bucket"
  '(:download nil)) 
(hoarder:fetch "altercation/solarized"
  '(:download nil)) 
(hoarder:fetch "andsens/homeshick"
  '(:download nil)) 
(hoarder:fetch "andyfitz/overpass"
  '(:download nil)) 
(hoarder:fetch "aredridel/es-shell"
  '(:download nil)) 
(hoarder:fetch "asciimoo/searx"
  '(:download nil)) 
(hoarder:fetch "asdfman/linux-shimeji"
  '(:download nil)) 
(hoarder:fetch "ashinn/chibi-scheme"
  '(:download nil)) 
(hoarder:fetch "atextor/icat"
  '(:download nil)) 
(hoarder:fetch "aziz/tmuxinator"
  '(:download nil)) 
(hoarder:fetch "azu/awesome-commit-english"
  '(:download nil)) 
(hoarder:fetch "b4b4r07/zplug"
  '(:download nil)) 
(hoarder:fetch "badele/gitcheck"
  '(:download nil)) 
(hoarder:fetch "bamos/dotfiles"
  '(:download nil)) 
(hoarder:fetch "baskerville/bspwm"
  '(:download nil)) 
(hoarder:fetch "baskerville/diana"
  '(:download nil)) 
(hoarder:fetch "baskerville/sutils"
  '(:download nil)) 
(hoarder:fetch "baskerville/sxhkd"
  '(:download nil)) 
(hoarder:fetch "baskerville/xtitle.git"
  '(:download nil)) 
(hoarder:fetch "benjaminoakes/maid"
  '(:download nil)) 
(hoarder:fetch "benlinton/bash-slugify"
  '(:download nil)) 
(hoarder:fetch "bibanon/bibanon"
  '(:download nil)) 
(hoarder:fetch "blakemcbride/POS"
  '(:download nil)) 
(hoarder:fetch "bmizerany/roundup"
  '(:download nil)) 
(hoarder:fetch "bookdraft/QPeerCastYP"
  '(:download nil)) 
(hoarder:fetch "boot-clj/boot"
  '(:download nil)) 
(hoarder:fetch "brpocock/shelltoys"
  '(:download nil)) 
(hoarder:fetch "brushdemon/gen-update"
  '(:download nil)) 
(hoarder:fetch "btpd/btpd"
  '(:download nil)) 
(hoarder:fetch "bucaran/awesome-fish"
  '(:download nil)) 
(hoarder:fetch "bucaran/flash"
  '(:download nil)) 
(hoarder:fetch "bucaran/hulk"
  '(:download nil)) 
(hoarder:fetch "buntine/Fractals"
  '(:download nil)) 
(hoarder:fetch "burningtree/awesome-json"
  '(:download nil)) 
(hoarder:fetch "butterproject/butter"
  '(:download nil)) 
(hoarder:fetch "caarlos0/antibody"
  '(:download nil)) 
(hoarder:fetch "caleb-/evilvte"
  '(:download nil)) 
(hoarder:fetch "carnager/teiler"
  '(:download nil)) 
(hoarder:fetch "cavalle/steak"
  '(:download nil)) 
(hoarder:fetch "chirauraNoSakusha/chiraura"
  '(:download nil)) 
(hoarder:fetch "chjj/compton"
  '(:download nil)) 
(hoarder:fetch "chrisdone/ghci-ng"
  '(:download nil)) 
(hoarder:fetch "chrissimpkins/Hack"
  '(:download nil)) 
(hoarder:fetch "chrissimpkins/codeface"
  '(:download nil)) 
(hoarder:fetch "chujoii/battery-scheme"
  '(:download nil)) 
(hoarder:fetch "chujoii/xattr-tag"
  '(:download nil)) 
(hoarder:fetch "cjb/gittorrent"
  '(:download nil)) 
(hoarder:fetch "cjxgm/libcrude"
  '(:download nil)) 
(hoarder:fetch "ckolivas/lrzip"
  '(:download nil)) 
(hoarder:fetch "cldwalker/boson"
  '(:download nil)) 
(hoarder:fetch "cldwalker/boson-more"
  '(:download nil)) 
(hoarder:fetch "clibs/clib"
  '(:download nil)) 
(hoarder:fetch "clojure/clojure"
  '(:download nil)) 
(hoarder:fetch "clojure/clojure-contrib"
  '(:download nil)) 
(hoarder:fetch "clojure/core.logic"
  '(:download nil)) 
(hoarder:fetch "clvv/fasd"
  '(:download nil)) 
(hoarder:fetch "cmdrkotori/mplaylist"
  '(:download nil)) 
(hoarder:fetch "cmus/cmus"
  '(:download nil)) 
(hoarder:fetch "coderholic/pyradio"
  '(:download nil)) 
(hoarder:fetch "colinf/om-chat-base"
  '(:download nil)) 
(hoarder:fetch "conformal/xombrero"
  '(:download nil)) 
(hoarder:fetch "copiousfreetime/launchy"
  '(:download nil)) 
(hoarder:fetch "cssnext/cssnext"
  '(:download nil)) 
(hoarder:fetch "ctrlcctrlv/8chan"
  '(:download nil)) 
(hoarder:fetch "dcolascione/ppgrep"
  '(:download nil)) 
(hoarder:fetch "ded/valentine"
  '(:download nil)) 
(hoarder:fetch "defunkt/hub"
  '(:download nil)) 
(hoarder:fetch "denilsonsa/prettyping"
  '(:download nil)) 
(hoarder:fetch "deterenkelt/watchsh"
  '(:download nil)) 
(hoarder:fetch "dfkt/firefox-tweaks"
  '(:download nil)) 
(hoarder:fetch "digego/extempore"
  '(:download nil)) 
(hoarder:fetch "doomzhou/.fvwm"
  '(:download nil)) 
(hoarder:fetch "dss-project/stumpmacs"
  '(:download nil)) 
(hoarder:fetch "eXeC64/imv"
  '(:download nil)) 
(hoarder:fetch "eijah/demoncrypt"
  '(:download nil)) 
(hoarder:fetch "elm-lang/core"
  '(:download nil)) 
(hoarder:fetch "emgram769/lighthouse"
  '(:download nil)) 
(hoarder:fetch "emrehan/clojurescript-awesome"
  '(:download nil)) 
(hoarder:fetch "enaqx/awesome-react"
  '(:download nil)) 
(hoarder:fetch "erikw/tmux-powerline"
  '(:download nil)) 
(hoarder:fetch "esodax/fishystuff"
  '(:download nil)) 
(hoarder:fetch "faizilham/nyaaupdater"
  '(:download nil)) 
(hoarder:fetch "fantasyland/fantasy-land"
  '(:download nil)) 
(hoarder:fetch "fdv/platypus"
  '(:download nil)) 
(hoarder:fetch "fenrus75/powertop"
  '(:download nil)) 
(hoarder:fetch "feross/awesome-mad-science"
  '(:download nil)) 
(hoarder:fetch "fish-bundles/root-bundle-fish-bundle"
  '(:download nil)) 
(hoarder:fetch "fisherman/fisherman"
  '(:download nil)) 
(hoarder:fetch "fitzgen/wu.js"
  '(:download nil)) 
(hoarder:fetch "fizzed/font-mfizz"
  '(:download nil)) 
(hoarder:fetch "fniessen/org-html-themes"
  '(:download nil)) 
(hoarder:fetch "fniessen/orgmk"
  '(:download nil)) 
(hoarder:fetch "francesco-bracchi/sake"
  '(:download nil)) 
(hoarder:fetch "frytvm/XS"
  '(:download nil)) 
(hoarder:fetch "fukamachi/clack"
  '(:download nil)) 
(hoarder:fetch "g-gundam/yotsubAPI"
  '(:download nil)) 
(hoarder:fetch "gentoo-science/eselect"
  '(:download nil)) 
(hoarder:fetch "ghc/ghc"
  '(:download nil)) 
(hoarder:fetch "github/octicons"
  '(:download nil)) 
(hoarder:fetch "gka/chroma.js"
  '(:download nil)) 
(hoarder:fetch "gmarik/vimfiles"
  '(:download nil)) 
(hoarder:fetch "gongo/elfactory"
  '(:download nil)) 
(hoarder:fetch "google/roboto"
  '(:download nil)) 
(hoarder:fetch "gotbletu/dotfiles"
  '(:download nil)) 
(hoarder:fetch "graudeejs/dot.fvwm"
  '(:download nil)) 
(hoarder:fetch "greghendershott/rackjure"
  '(:download nil)) 
(hoarder:fetch "guipdutra/awesome-geek-podcasts"
  '(:download nil)) 
(hoarder:fetch "gustavnikolaj/keepass-dmenu"
  '(:download nil)) 
(hoarder:fetch "hchbaw/auto-fu.zsh"
  '(:download nil)) 
(hoarder:fetch "heyalexej/awesome-images"
  '(:download nil)) 
(hoarder:fetch "hishamhm/htop"
  '(:download nil)) 
(hoarder:fetch "holman/dotfiles"
  '(:download nil)) 
(hoarder:fetch "huyz/less.vim"
  '(:download nil)) 
(hoarder:fetch "hydride0/yamazaki"
  '(:download nil)) 
(hoarder:fetch "hydrusnetwork/hydrus"
  '(:download nil)) 
(hoarder:fetch "ianstormtaylor/to-slug-case"
  '(:download nil)) 
(hoarder:fetch "install-logos/ricedb"
  '(:download nil)) 
(hoarder:fetch "isohuntto/openbay"
  '(:download nil)) 
(hoarder:fetch "itchyny/lightline.vim"
  '(:download nil)) 
(hoarder:fetch "ivmai/bdwgc"
  '(:download nil)) 
(hoarder:fetch "ivmai/libatomic_ops"
  '(:download nil)) 
(hoarder:fetch "jamesob/desk"
  '(:download nil)) 
(hoarder:fetch "jarofghosts/just-pluck"
  '(:download nil)) 
(hoarder:fetch "jashkenas/underscore"
  '(:download nil)) 
(hoarder:fetch "jasonhemann/microKanren"
  '(:download nil)) 
(hoarder:fetch "jbernard/dotfiles"
  '(:download nil)) 
(hoarder:fetch "jduey/applicative"
  '(:download nil)) 

(hoarder:fetch "jhawthorn/meh"
  '(:download nil)) 
(hoarder:fetch "jnv/lists"
  '(:download nil)) 
(hoarder:fetch "jodrell/unbound-block-hosts"
  '(:download nil)) 
(hoarder:fetch "joelagnel/stumpwm-goodies"
  '(:download nil)) 
(hoarder:fetch "joeyespo/grip"
  '(:download nil)) 
(hoarder:fetch "jonls/redshift"
  '(:download nil)) 
(hoarder:fetch "jstolarek/why-dependent-types-matter"
  '(:download nil)) 
(hoarder:fetch "justintv/Twitch-API"
  '(:download nil)) 
(hoarder:fetch "kahua/Kahua"
  '(:download nil)) 
(hoarder:fetch "kahun/awesome-sysadmin"
  '(:download nil)) 
(hoarder:fetch "kazesawa/kazesawa"
  '(:download nil)) 
(hoarder:fetch "kazu-yamamoto/ghc-mod"
  '(:download nil)) 
(hoarder:fetch "keplerproject/luarocks"
  '(:download nil)) 
(hoarder:fetch "kfish/xsel"
  '(:download nil)) 
(hoarder:fetch "kfl/mosml"
  '(:download nil)) 
(hoarder:fetch "kidd/org-protocol-github-lines"
  '(:download nil)) 
(hoarder:fetch "kidd/radios"
  '(:download nil)) 
(hoarder:fetch "kirikx/bds"
  '(:download nil)) 
(hoarder:fetch "knopwob/dunst"
  '(:download nil)) 
(hoarder:fetch "koron/chalice"
  '(:download nil)) 
(hoarder:fetch "koron/cmigemo.git"
  '(:download nil)) 
(hoarder:fetch "kovisoft/paredit"
  '(:download nil)) 
(hoarder:fetch "kragniz/python-pixiv"
  '(:download nil)) 
(hoarder:fetch "krakenjs/confit"
  '(:download nil)) 
(hoarder:fetch "kuanyui/dotfiles"
  '(:download nil)) 
(hoarder:fetch "kumacoinproject/kumacoin"
  '(:download nil)) 
(hoarder:fetch "kumaryu/peercaststation"
  '(:download nil)) 
(hoarder:fetch "kyleterry/awesome-radio"
  '(:download nil)) 
(hoarder:fetch "lastpass/lastpass-cli"
  '(:download nil)) 
(hoarder:fetch "laurikari/tre"
  '(:download nil)) 
(hoarder:fetch "leafo/moonscript"
  '(:download nil)) 
(hoarder:fetch "letsgetrandy/DICSS"
  '(:download nil)) 
(hoarder:fetch "libav/libav"
  '(:download nil)) 
(hoarder:fetch "lzap/dancepill"
  '(:download nil)) 
(hoarder:fetch "mWater/minimongo"
  '(:download nil)) 
(hoarder:fetch "madmalik/monoOne"
  '(:download nil)) 
(hoarder:fetch "mafintosh/peerflix"
  '(:download nil)) 
(hoarder:fetch "majestrate/nntpchan"
  '(:download nil)) 
(hoarder:fetch "manateelazycat/mrkeyboard"
  '(:download nil)) 
(hoarder:fetch "martanne/abduco"
  '(:download nil)) 
(hoarder:fetch "martanne/dvtm"
  '(:download nil)) 
(hoarder:fetch "martinp26/motix"
  '(:download nil)) 
(hoarder:fetch "mason-larobina/luakit"
  '(:download nil)) 
(hoarder:fetch "masroore/opentracker"
  '(:download nil)) 
(hoarder:fetch "maxogden/art-of-node"
  '(:download nil)) 
(hoarder:fetch "mbadolato/iTerm2-Color-Schemes"
  '(:download nil)) 
(hoarder:fetch "mcandre/modulinos"
  '(:download nil)) 
(hoarder:fetch "mcna/closer-mop"
  '(:download nil)) 
(hoarder:fetch "mcrapet/plowshare"
  '(:download nil)) 
(hoarder:fetch "melaniecebula/cat-ascii-faces"
  '(:download nil)) 
(hoarder:fetch "mietek/bashmenot"
  '(:download nil)) 
(hoarder:fetch "mietek/halcyon"
  '(:download nil)) 
(hoarder:fetch "minimaxir/big-list-of-naughty-strings"
  '(:download nil)) 
(hoarder:fetch "mirror/x265"
  '(:download nil)) 
(hoarder:fetch "mitchellh/cli"
  '(:download nil)) 
(hoarder:fetch "mitchellh/colorstring"
  '(:download nil)) 
(hoarder:fetch "mitmproxy/mitmproxy"
  '(:download nil)) 
(hoarder:fetch "miyagawa/cpanminus"
  '(:download nil)) 
(hoarder:fetch "mo-ya/tmux-agent"
  '(:download nil)) 
(hoarder:fetch "mobile-shell/mosh"
  '(:download nil)) 
(hoarder:fetch "monacoinproject/monacoin"
  '(:download nil)) 
(hoarder:fetch "mooz/percol"
  '(:download nil)) 
(hoarder:fetch "motemen/ghq"
  '(:download nil)) 
(hoarder:fetch "moul/awesome-ssh"
  '(:download nil)) 
(hoarder:fetch "mps-youtube/mps-youtube"
  '(:download nil)) 
(hoarder:fetch "mps-youtube/pafy"
  '(:download nil)) 
(hoarder:fetch "mpv-player/mpv"
  '(:download nil)) 
(hoarder:fetch "mrowa44/emojify"
  '(:download nil)) 
(hoarder:fetch "msiemens/tinydb"
  '(:download nil)) 
(hoarder:fetch "muennich/sxiv"
  '(:download nil)) 
(hoarder:fetch "myimouto/myimouto"
  '(:download nil)) 
(hoarder:fetch "n-yuji/keyboard-font"
  '(:download nil)) 
(hoarder:fetch "nezumisama/mpvmenu"
  '(:download nil)) 
(hoarder:fetch "ninjaaron/bitocra"
  '(:download nil)) 
(hoarder:fetch "nixxquality/WebMConverter"
  '(:download nil)) 
(hoarder:fetch "npm/npm"
  '(:download nil)) 
(hoarder:fetch "nrgmilk/freebsd-desktop-jp"
  '(:download nil)) 
(hoarder:fetch "ocaml/ocaml"
  '(:download nil)) 
(hoarder:fetch "oh-my-fish/oh-my-fish"
  '(:download nil)) 
(hoarder:fetch "ok100/lyvi"
  '(:download nil)) 
(hoarder:fetch "okuoku/mosh"
  '(:download nil)) 
(hoarder:fetch "okuoku/r7rs-bridge"
  '(:download nil)) 
(hoarder:fetch "omcljs/om"
  '(:download nil)) 
(hoarder:fetch "onodera-punpun/dotfiles"
  '(:download nil)) 
(hoarder:fetch "openssh/openssh-portable"
  '(:download nil)) 
(hoarder:fetch "pallet/thread-expr"
  '(:download nil)) 
(hoarder:fetch "pannon/iocage"
  '(:download nil)) 
(hoarder:fetch "parro-it/awesome-microlibs"
  '(:download nil)) 
(hoarder:fetch "pasky/speedread"
  '(:download nil)) 
(hoarder:fetch "paulsmith/getting-started-llvm-c-api"
  '(:download nil)) 
(hoarder:fetch "pavoljuhas/smart-change-directory"
  '(:download nil)) 
(hoarder:fetch "phallus/fonts"
  '(:download nil)) 
(hoarder:fetch "pindexis/marker"
  '(:download nil)) 
(hoarder:fetch "pituz/webm-thread"
  '(:download nil)) 
(hoarder:fetch "pkgng/pkgng"
  '(:download nil)) 
(hoarder:fetch "plonk/bbiff"
  '(:download nil)) 
(hoarder:fetch "plonk/psapi"
  '(:download nil)) 
(hoarder:fetch "polyml/polyml"
  '(:download nil)) 
(hoarder:fetch "progre/pecastarter5"
  '(:download nil)) 
(hoarder:fetch "psyrendust/alf"
  '(:download nil)) 
(hoarder:fetch "puffnfresh/daggy"
  '(:download nil)) 
(hoarder:fetch "pyload/pyload"
  '(:download nil)) 
(hoarder:fetch "rakshasa/rtorrent"
  '(:download nil)) 
(hoarder:fetch "ramda/ramda"
  '(:download nil)) 
(hoarder:fetch "rbanffy/3270font"
  '(:download nil)) 
(hoarder:fetch "rbenv/ruby-build"
  '(:download nil)) 
(hoarder:fetch "retroj/conkeror"
  '(:download nil)) 
(hoarder:fetch "rjosph/fluxbox-config"
  '(:download nil)) 
(hoarder:fetch "robert-strandh/SICL"
  '(:download nil)) 
(hoarder:fetch "robfig/config"
  '(:download nil)) 
(hoarder:fetch "robfig/pathtree"
  '(:download nil)) 
(hoarder:fetch "robm/dzen"
  '(:download nil)) 
(hoarder:fetch "romeovs/creep"
  '(:download nil)) 
(hoarder:fetch "rossy2401/img2xterm"
  '(:download nil)) 
(hoarder:fetch "rplevy/swiss-arrows"
  '(:download nil)) 
(hoarder:fetch "rupa/v"
  '(:download nil)) 
(hoarder:fetch "rupa/z"
  '(:download nil)) 
(hoarder:fetch "saironiq/shellscripts"
  '(:download nil)) 
(hoarder:fetch "saitoha/libsixel"
  '(:download nil)) 
(hoarder:fetch "samirahmed/fu"
  '(:download nil)) 
(hoarder:fetch "sanzo12/myanimelist"
  '(:download nil)) 
(hoarder:fetch "sashavasko/afterstep-devel"
  '(:download nil)) 
(hoarder:fetch "sbcl/sbcl"
  '(:download nil)) 
(hoarder:fetch "sboli/twmn"
  '(:download nil)) 
(hoarder:fetch "scottjad/cons"
  '(:download nil)) 
(hoarder:fetch "scottjad/dotfiles"
  '(:download nil)) 
(hoarder:fetch "sdegutis/mjolnir"
  '(:download nil)) 
(hoarder:fetch "sdhand/n30f"
  '(:download nil)) 
(hoarder:fetch "seattlerb/hoe"
  '(:download nil)) 
(hoarder:fetch "seebi/tmux-colors-solarized"
  '(:download nil)) 
(hoarder:fetch "seven332/EhViewer"
  '(:download nil)) 
(hoarder:fetch "sgrove/tehila"
  '(:download nil)) 
(hoarder:fetch "sgymtic/sl"
  '(:download nil)) 
(hoarder:fetch "shaldengeki/python-mal"
  '(:download nil)) 
(hoarder:fetch "shellfire-dev/shellfire"
  '(:download nil)) 
(hoarder:fetch "shingetsu/saku"
  '(:download nil)) 
(hoarder:fetch "shingetsu/saku-ex"
  '(:download nil)) 
(hoarder:fetch "shirok/Gauche"
  '(:download nil)) 
(hoarder:fetch "shutterstock/List-of-Dirty-Naughty-Obscene-and-Otherwise-Bad-Words"
  '(:download nil)) 
(hoarder:fetch "sickill/git-dude"
  '(:download nil)) 
(hoarder:fetch "silentbicycle/ff"
  '(:download nil)) 
(hoarder:fetch "simonwhitaker/gibo"
  '(:download nil)) 
(hoarder:fetch "sindresorhus/awesome-nodejs"
  '(:download nil)) 
(hoarder:fetch "sindresorhus/awesome-npm"
  '(:download nil)) 
(hoarder:fetch "sjl/z-fish"
  '(:download nil)) 
(hoarder:fetch "soimort/you-get"
  '(:download nil)) 
(hoarder:fetch "sorin-ionescu/prezto"
  '(:download nil)) 
(hoarder:fetch "stevemao/awesome-git-addons"
  '(:download nil)) 
(hoarder:fetch "streadway/simpleuuid"
  '(:download nil)) 
(hoarder:fetch "stumpwm/paulownia"
  '(:download nil)) 
(hoarder:fetch "stumpwm/stumpwm.wiki"
  '(:download nil)) 
(hoarder:fetch "swannodette/mori"
  '(:download nil)) 
(hoarder:fetch "syl20bnr/oh-my-fish-theme-syl20bnr"
  '(:download nil)) 
(hoarder:fetch "syohex/byzanz-window"
  '(:download nil)) 
(hoarder:fetch "t9md/vim-ezbar"
  '(:download nil)) 
(hoarder:fetch "takeoutweight/bidirectional"
  '(:download nil)) 
(hoarder:fetch "tarjoilija/zgen"
  '(:download nil)) 
(hoarder:fetch "tastejs/awesome-app-ideas"
  '(:download nil)) 
(hoarder:fetch "tatsuhiro-t/aria2"
  '(:download nil)) 
(hoarder:fetch "tchoulihan/torrenttunes-client"
  '(:download nil)) 
(hoarder:fetch "technicalpickles/homesick"
  '(:download nil)) 
(hoarder:fetch "tekknolagi/carp"
  '(:download nil)) 
(hoarder:fetch "tizoc/chibi-shen"
  '(:download nil)) 
(hoarder:fetch "tj/git-extras"
  '(:download nil)) 
(hoarder:fetch "tkengo/highway"
  '(:download nil)) 
(hoarder:fetch "tlatsas/xcolors"
  '(:download nil)) 
(hoarder:fetch "tmbinc/bgrep"
  '(:download nil)) 
(hoarder:fetch "tmux-plugins/tmux-resurrect"
  '(:download nil)) 
(hoarder:fetch "tmux-plugins/tpm"
  '(:download nil)) 
(hoarder:fetch "tmux/tmux"
  '(:download nil)) 
(hoarder:fetch "tolitius/mount"
  '(:download nil)) 
(hoarder:fetch "tommy351/warehouse"
  '(:download nil)) 
(hoarder:fetch "tomokuni/Myrica"
  '(:download nil)) 
(hoarder:fetch "tonsky/rum"
  '(:download nil)) 
(hoarder:fetch "toolpunk/dmenu-ee"
  '(:download nil)) 
(hoarder:fetch "toromoti/chocomint.sh"
  '(:download nil)) 
(hoarder:fetch "trapd00r/configs"
  '(:download nil)) 
(hoarder:fetch "trapd00r/ls--"
  '(:download nil)) 
(hoarder:fetch "trapd00r/utils"
  '(:download nil)) 
(hoarder:fetch "trapd00r/zsh-syntax-highlighting-filetypes"
  '(:download nil)) 
(hoarder:fetch "travitch/taffybar"
  '(:download nil)) 
(hoarder:fetch "trizen/youtube-viewer"
  '(:download nil)) 
(hoarder:fetch "tuvistavie/fundle"
  '(:download nil)) 
(hoarder:fetch "tyru/dotto"
  '(:download nil)) 
(hoarder:fetch "ultravideo/kvazaar"
  '(:download nil)) 
(hoarder:fetch "underdash/underdash"
  '(:download nil)) 
(hoarder:fetch "unixorn/awesome-zsh-plugins"
  '(:download nil)) 
(hoarder:fetch "unot/WebRadioRecorder"
  '(:download nil)) 
(hoarder:fetch "uobikiemukot/sdump"
  '(:download nil)) 
(hoarder:fetch "uobikiemukot/yaft"
  '(:download nil)) 
(hoarder:fetch "valvallow/lifegame"
  '(:download nil)) 
(hoarder:fetch "variadico/noti"
  '(:download nil)) 
(hoarder:fetch "victorhaggqvist/xboomx"
  '(:download nil)) 
(hoarder:fetch "videolan/x265"
  '(:download nil)) 
(hoarder:fetch "vikasrawal/orgpaper"
  '(:download nil)) 
(hoarder:fetch "vstakhov/libucl"
  '(:download nil)) 
(hoarder:fetch "weavejester/medley"
  '(:download nil)) 
(hoarder:fetch "webyrd/miniKanren"
  '(:download nil)) 
(hoarder:fetch "windelicato/dotfiles"
  '(:download nil)) 
(hoarder:fetch "windymelt/p2p2ch"
  '(:download nil)) 
(hoarder:fetch "wooorm/alex"
  '(:download nil)) 
(hoarder:fetch "xero/dotfiles"
  '(:download nil)) 
(hoarder:fetch "xmonad/xmonad-contrib"
  '(:download nil)) 
(hoarder:fetch "xorg62/wmfs"
  '(:download nil)) 
(hoarder:fetch "xyl0n/iris-light"
  '(:download nil)) 
(hoarder:fetch "xylosper/bomi"
  '(:download nil)) 
(hoarder:fetch "yascentur/RictyDiminished"
  '(:download nil)) 
(hoarder:fetch "yayugu/net-radio-archive"
  '(:download nil)) 
(hoarder:fetch "zcaudate/hara"
  '(:download nil)) 
(hoarder:fetch "zero808/ya4cid"
  '(:download nil)) 
(hoarder:fetch "zmalltalker/fish-nuggets"
  '(:download nil)) 
(hoarder:fetch "zone117x/Jackett"
  '(:download nil)) 
(hoarder:fetch "zoppo/plugins"
  '(:download nil)) 
(hoarder:fetch "zoppo/zoppo"
  '(:download nil)) 
(hoarder:fetch "zsh-users/zsh-completions"
  '(:download nil)) 
(hoarder:fetch "zsh-users/zsh-syntax-highlighting"
  '(:download nil)) 
(hoarder:fetch "zsoltf/lsr"
  '(:download nil)) 
(hoarder:fetch "zy/zy-fvwm"
  '(:download nil)) 
(hoarder:fetch "zzggbb/colorblocks"
  '(:download nil)) 
(hoarder:fetch "shiroyuki/Yotsuba"
  '(:tag ["python" "xml"]))
(hoarder:fetch "sindresorhus/cows"
  '(:tag ["ascii_art" "cows"]))
(hoarder:fetch "machakann/vim-colorscheme-tatami"
  '(:tag ["vim" "colorscheme" "theme"]))
(hoarder:fetch "syncthing/syncthing"
  '(:tag ["p2p" "file_sharing"]))
(hoarder:fetch "sugitak/appdo"
  '(:desc "http://qiita.com/sugitak/items/7503f4c0b99fce29293e"))
(hoarder:fetch "tomerfiliba/plumbum"
  '(:tag ["shell" "python"]))
(hoarder:fetch "freebsd/freebsd-wifi-build"
  '(:tag ["freebsd" "onionΩ"]))
(hoarder:fetch "freebsd/freebsd-wifi-build.wiki"
  '(:tag ["freebsd" "onionΩ"]))
(hoarder:fetch "MagikBSD/please"
  '(:tag ["sudo" "pam"]))
(hoarder:fetch "yacy/yacy_search_server"
  '(:tag ["search_engine" ]))
(hoarder:fetch "spolu/dwm.vim"
  '(:tag ["vim" "dwm"]))
(hoarder:fetch "nghttp2/nghttp2")
(hoarder:fetch "belluzj/fantasque-sans"
  '(:tag ["font"]))
(hoarder:fetch "Tlaster/OneEchan"
  '(:tag ["anime" "android"]))
(hoarder:fetch "rizo/awesome-ocaml"
  '(:tag ["ocaml"]))
(hoarder:fetch "StylishThemes/GitHub-Dark"
  '(:tag ["firefox" "css" "github"]))
(hoarder:fetch "git://git.code.sf.net/p/cdesktopenv/code"
  '(:tag ["cde" "desktop" "x11"]
    :desc ["https://sourceforge.net/p/cdesktopenv/wiki/FreeBSDBuild/"]))
(hoarder:fetch "xbmc/xbmc")
(hoarder:fetch "exdownloader/exDownloader"
  '(:tag ["download" "ehen" "doujin"]))
(hoarder:fetch "ugexe/zef"
  '(:tag ["perl6" "package_manager"]))
(hoarder:fetch "Mononofu/P2P-DNS"
  '(:tag ["p2p" "dns"]))
(hoarder:fetch "dirruk1/gnome-breeze"
  '(:tag ["theme" "gtk" "x11"]))
(hoarder:fetch "Cloudef/macopix-fork")
(hoarder:fetch "nixers-projects/podcast"
  '(:tag ["unix" "nixers" "podcast"]
    :desc "https://nixers.net/showthread.php?tid=1656"))
(hoarder:fetch "git://arcetera.moe/bin.git"
  '(:desc "https://www.reddit.com/r/unixporn/comments/4h5aai/cwm_lacking/"
    :tag ["OpenBSD"]))
(hoarder:fetch "git://arcetera.moe/etc.git"
  '(:desc "https://www.reddit.com/r/unixporn/comments/4h5aai/cwm_lacking/"
    :tag ["OpenBSD"]))
(hoarder:fetch "IonicaBizau/scrape-it"
  '(:tag ["javascript" "scraping"]))
(hoarder:fetch "looterz/grimd"
  '(:tag ["dns" "proxy" "advertisements"]))
(hoarder:fetch "racaljk/hosts"
  '(:tag ["dns" "hosts"]))
(hoarder:fetch "kciter/awesome-style-guide"
  '(:tag ["style-guide" "awesome_list"]))
(hoarder:fetch "gavindinubilo/jam-api"
  '(:tag ["scraping" "api"]))
(hoarder:fetch "LibreELEC/LibreELEC.tv"
  '(:tag ["mediacenter" "htpc" "linux" "openelec"]
    :download nil))
(hoarder:fetch "greymd/egzact.git"
  '(:tag ["shellscript" "egison" "haskell" "cli"]
    :desc "http://qiita.com/greymd/items/3515869d9ed2a1a61a49"))
(hoarder:fetch "askucher/nixar"
  '(:tag ["shellscript" "linux" "cli"]))
(hoarder:fetch "usp-engineers-community/Open-usp-Tukubai"
  '(:tag ["shellscript" "cli"]))
(hoarder:fetch "sriramkswamy/dotemacs"
  '(:tag ["dotemacs" "emacs" "hydra" "evil" "modalka"]
    :desc "[[https://www.reddit.com/r/emacs/comments/4hmmla/how_much_evil_in_emacs/d2rdj2p][aerobug comments on how much evil in emacs]]
[[https://github.com/sriramkswamy/dotemacs/blob/master/config/sk-org-hydra.el][dotemacs/sk-org-hydra.el at master · sriramkswamy/dotemacs · GitHub]] "))
(hoarder:fetch "Project-ShangriLa/shangrila_api_doc"
  '(:tag ["anime" "api" "project_shangrila"]
    :site "http://akibalab.info/"))
(hoarder:fetch "TomokiAburatani/anime-api-cl"
  '(:tag ["anime" "api"  "project_shangrila" "common_lisp"]
    :site "http://dbym4820.hatenablog.com/entry/2016/05/04/132241"))
(hoarder:fetch "spf13/cobra"
  '(:tag ["golang" "cli" "script"]))
(hoarder:fetch "mecab/emspect"
  '(:tag ["emoji" "javascript" "node"]))
(hoarder:fetch "tredly/tredly-host"
  '(:tag ["freebsd" "container" ]))
(hoarder:fetch "Sonerezh/sonerezh"
  '(:tag ["music" "streaming"]))
(hoarder:fetch "Libresonic/libresonic"
  '(:tag ["music" "streaming" "subsonic"]))
(hoarder:fetch "devsnd/cherrymusic"
  '(:tag ["music" "streaming"]))
(hoarder:fetch "MadMarty/madsonic-server-5.1"
  '(:tag ["music" "streaming" "subsonic"]))

;; git://gitorious.org/sly/sly 
;; git://gitorious.org/src-vcs/src-vcs.git 
;; gitpub@162.252.242.77:morphis.git 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (hoarder:fetch "https://gist.github.com/david-christiansen/2ba5e03910666ae27203")

;; (hoarder:fetch "https://bitbucket.org/tarballs_are_good/lisp-random.git"
;; '(:tag ["common_lisp"]
;; :type hg))


;;; init-hoarder-registers.el ends here
;;
