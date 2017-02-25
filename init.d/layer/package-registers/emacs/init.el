;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;  register packages

;;;;;  general packages
(hoarder:register "magnars/s.el")
;; (hoarder:register "jonathanchu/emacs-powerline")
(hoarder:register "raugturi/powerline-evil"
  '(:tag ["evil" "mode-line"]))
(hoarder:register "milkypostman/powerline"
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
(hoarder:register "alezost/emms-state.el"
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
(hoarder:register "hlissner/emacs-company-dict"
  '(:tag ["company"]))
(hoarder:register "Alexander-Miller/company-shell"
  '(:tag ["company" "shell" "fish_shell"]))
(hoarder:register "osv/company-web"
  '(:tag ["company" "web" "html"]
    :dependency ["osv/web-completion-data"]))
(hoarder:register "PythonNut/company-flx"
  '(:tag ["company" "fuzzy_match"]
    :dependency ["lewang/flx"
                 "company-mode/company-mode"]))
(hoarder:register "wushuaibuaa/emacscompanywords"
  '(:tag ["company" "dictionary" "english"]))
(hoarder:register "zargener/company-web-mode"
  '(:tag ["company" "web"]))
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
(hoarder:register "ian-kelling/spray")
(hoarder:register "dominikh/go-mode.el")
(hoarder:register "immerrr/lua-mode")
(hoarder:register "daic-h/emacs-rotate")
(hoarder:register "pidu/git-timemachine")
(hoarder:register "k-talo/smooth-scroll.el")
(hoarder:register "m2ym/yascroll-el")
(hoarder:register "emacs-jp/migemo")
(hoarder:register "rzl24ozi/cmigemo-module"
  '(:tag ["emacs" "migemo" "module"]
    :build ["gmake CMIGEMO=/home/mytoh/huone/ohjelmat/cmigemo"]))
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
  '(:tag ["flycheck"]
    :dependency ["purcell/package-lint"]))
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
(hoarder:register "kawabata/ids-edit"
  '(:tag ["chinese" "character" "cjkvi"]))
(hoarder:register "kawabata/emacs-ivariants"
  '(:tag ["chinese" "character" "cjkvi"]
    :dependency ["kawabata/ivs-edit"]))
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
(hoarder:register "emacsmirror/hl-defined"
  '(:desc "Highlight defined or undefined symbols in Emacs-Lisp"))
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
(hoarder:register "https://gitlab.com/ukaszg/aria2.git"
  '(:tag ["aria2"]))
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
  '(:tag ["scheme" "srfi"]
    :memo "[[http://www.slideshare.net/takeshiokada184/20140511-34538055][XMonad-oid on Emacs & More functional Emacs Lisp | 関数型LT大会]]"))
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
;; (hoarder:register "git://git.savannah.gnu.org/tramp.git"
;;   '(:tag ["tramp" "ssh"]
;;     :build ["autoconf" "./configure" "gmake"]
;;     :load-path ["lisp"]
;;     :info "info"))
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
(hoarder:register "KeenS/stylefmt.el"
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
(hoarder:register "emacsmirror/highlight-tail"
  '(:tag ["highlight"]))
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
(hoarder:register "ryuslash/mode-icons"
  '(:tag ["mode-line" "emoji" "icon"]))
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
;; (hoarder:register "NicolasPetton/seq.el")
(hoarder:register "mbunkus/simple-rtm"
  '(:tag ["org" "remember_the_milk"]
    :load-path "lisp"))
(hoarder:register "rolandwalker/hardhat")
(hoarder:register "aaron-em/niceify-info.el"
  '(:tag ["info"]))
(hoarder:register "ALSchwalm/power-mode.el")
(hoarder:register "https://gitlab.com/RobertCochran/neato-graph-bar.git"
  '(:tag ["cpu" "memory" "monitor"]))
(hoarder:register "emacscollective/epkg"
  '(:tag ["emacsmirror" "package" "archive"]
    :dependency ["emacscollective/closql"
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
(hoarder:register "egison/egison"
  '(:load-path ["elisp"]))
(hoarder:register "mola-T/spu"
  '(:tag ["package" "elpa"]
    :dependency ["mola-T/signal"
                 "mola-T/timp"
                 "mola-T/fifo-class"]))
(hoarder:register "TsubasaWp/Emoticon"
  '(:tag ["emoticon"]))
(hoarder:register "zzkt/quiet"
  '(:tag ["distraction_free" "multi_tasking"]
    :desc " Mihaly Csikszentmihályi (1990). Flow: The Psychology of Optimal Experience. Harper & Row. ISBN 9780060162535
    The Myth of Monotasking. https://hbr.org/2011/11/the-myth-of-monotasking/ "))
;; (hoarder:register "papaeye/emacs-jscs"
;;                   '(:tag ["language" "javascript" "jscs" "format"]
;;                     :dependency (("papaeye/go-mode.el"
;;                                (:tag ["langfmt"])))))

(hoarder:fetch"politza/pdf-tools"
  '(:tag ["pdf"]
    :build ["gmake -s zlib_CFLAGS='-lz -L/usr/lib'  zlib_LIBS='-lz -L/usr/lib'"
            "gmake install-package"]
    ;; :load-path ["lisp"]
    ))
;; (hoarder:register "http://git.chise.org/git/elisp/flim.git"
;;                  '(:tag ["flim" "luna"]))
(hoarder:fetch "tetracat/emacsrepl"
  '(:tag ["emacs" "repl"]))
(hoarder:register "zonuexe/right-click-context"
  '(:tag ["mouse"]))
(hoarder:register "ahungry/baby-gnu")
(hoarder:fetch "xuchunyang/epm"
  '(:tag ["elpa" "emacs" "package_manager"]))
(hoarder:register "netromdk/annotate-depth")
(hoarder:register "NicolasPetton/xref-js2"
  '(:tag ["xref" "javascript"]))
(hoarder:register "cosmicexplorer/f3"
  '(:tag ["helm"]))
(hoarder:register "ankurdave/color-identifiers-mode")
(hoarder:register "doublep/logview"
  '(:dependency ["doublep/datetime"]))
(hoarder:fetch "git://git.sv.gnu.org/hook-helpers-el.git"
  '(:tag ["hook"]))
(hoarder:register "http://www.rupert-lane.org/inform-mode/inform-mode.git"
  '(:tag ["game" "inform" "z-code" "z-machine" "interactive_fiction"]))
(hoarder:register "bloat/emacs-glulx"
  '(:tag ["game" "inform" "z-machine" "glulx" "glk"]
    :load-path ["src" "glk/src"]))
(hoarder:register "alezost/ducpel"
  '(:tag ["game" "sokoban"]))
(hoarder:register "emacsmirror/random-idle-quote")
(hoarder:register "https://gist.github.com/dto/4112806.git"
  '(:tag ["rougelike" "game"]))
(hoarder:register "killdash9/tron.el"
  '(:tag ["game" "TRON"]))
(hoarder:register "https://gitlab.com/fommil/elisp-fmt.git")
(hoarder:register "ksjogo/mini-header-line"
  '(:tag ["header-line"]))
(hoarder:register "tarsius/no-littering")
(hoarder:register "davep/festival.el"
  '(:tag ["festival" "audio" "synthesis"]))
(hoarder:register "aaronbieber/tiny-menu.el")
(hoarder:register "rlupton20/sshman"
  '(:tag ["ssh" "term"]))
(hoarder:register "theBlackDragon/fvwm-mode")
(hoarder:register "myrkr/dictionary-el"
  '(:tag ["dictionary" "english"]))
(hoarder:register "mrkkrp/common-lisp-snippets"
  '(:tag ["yasnippet" "common-lisp"]))
(hoarder:register "bcbcarl/emacs-wttrin"
  '(:tag ["weather" "wttr.in"]))
(hoarder:register "nqpz/emacs-reaction-sounds"
  '(:tag ["sound"]))
(hoarder:register "syohex/emacs-octicons"
  '(:tag ["emoji" "github" "octicon" "unicode" "icon"]))
(hoarder:register "mutbuerger/twitch-streamer"
  '(:tag ["twitch" "livestreamer"]))
(hoarder:register "akatov/pretty-mode"
  '(:tag ["unicode" "prettify" "symbol"]))
(hoarder:register "purcell/disable-mouse"
  '(:tag ["mouse"]))
(hoarder:register "rejeep/handoff.el"
  '(:tag ["mouse"]))
(hoarder:register "azagoruyko/keep-temp-buffers"
  '(:desc "Save and load buffers automatically."))
(hoarder:register "k2052/moonscript-mode"
  '(:tag ["moonscript" "lua"]))
(hoarder:register "MaokaiLin/node-ac"
  '(:tag ["node" "javascript" "auto-complete"]))
(hoarder:register "hiddenlotus/pcmpl-homebrew"
  '(:tag ["eshell" "pcomplete" "homebrew" "macOS"]))
(hoarder:register "bashrc/gnu-social-mode"
  '(:tag ["gnu_social" "twitter" "quitter.se" "gnu" "sns"]))
(hoarder:register "larsmagne/meme"
  '(:tag ["meme" "svg" "image"]))
(hoarder:register "NOBUTOKA/niconama.el"
  '(:tag ["niconico" "niconame" "comment_viewer"]))
(hoarder:register "zonuexe/pandoc.el"
  '(:tag ["pandoc" "eww" "ms_word" "epub" "docx" "markdown" "org-mode"]))
(hoarder:register "joddie/macrostep"
  '(:tag ["macro" "debugger" "debug"]))
(hoarder:register "larsmagne/imgur.el"
  '(:tag ["imgur" "api" "upload"]))
;; (hoarder:register "myuhe/imgur.el"
;;   '(:tag ["imgur" "anything"]))
(hoarder:register "kuangdash/org-iv"
  '(:tag ["org-mode" "html" "preview"]
    :dependency ["netguy204/imp.el"]))
(hoarder:register "zonuexe/interface-detector"
  '(:tag ["helm" "ido" "anything" "ivy" "counsel"]))
(hoarder:register "syohex/emacs-sound-wav"
  '(:tag ["sound" "wav"]))
(hoarder:register "swflint/pushover.el"
  '(:tag ["notification"]))
(hoarder:register "ajsquared/env-var-import"
  '(:tag ["shell" "environment_variable"]))
(hoarder:register "juergenhoetzel/babel"
  '(:tag ["translation"]))
(hoarder:register "cjohansson/emacs-ssh-deploy"
  '(:tag ["ssh" "deploy"]))
(hoarder:register "https://bitbucket.org/shackra/font-man.git"
  '(:tag ["font"]
    :dependency ["10sr/switch-buffer-functions-el"]))
(hoarder:register "michael-heerdegen/interaction-log.el")
(hoarder:register "emacsmirror/srfi"
  '(:tag ["scheme" "srfi" "document" "reference"]))
(hoarder:register "atykhonov/escr"
  '(:tag ["screenshot"]))
(hoarder:register "cute-jumper/parsec.el"
  '(:tag ["haskell" "parsec" "parser"]))
(hoarder:register "yuutayamada/contrast-color-el"
  '(:tag ["material_design" "color_palette" "colorscheme"]))
(hoarder:register "uemurax/uzbl-manager.el"
  '(:tag ["uzbl" "browser"]))
(hoarder:register "justbur/emacs-vdiff"
  '(:tag ["diff" "vimdiff" "evil"]))
(hoarder:register "http://git.savannah.gnu.org/r/delight.git"
  '(:tag ["diminsh" "mode-line"]
    :site "https://www.emacswiki.org/emacs/DelightedModes"))
(hoarder:register "emacsmirror/multi-eshell"
  '(:tag ["eshell"]))
(hoarder:register "technomancy/lein.el"
  '(:tag ["eshell" "clojure" "leiningen"]))
(hoarder:register "PuercoPop/nyan-prompt"
  '(:tag ["eshell" "prompt" "nyancat"]))
(hoarder:register "osanai3/eshell-git"
  '(:tag ["eshell" "git"]))
(hoarder:register "shushuang/honey-eshell"
  '(:tag ["eshell"]))
(hoarder:register "osanai3/eshell-tree"
  '(:tag ["eshell"]))
(hoarder:register "kozikow/eshell-notify"
  '(:tag ["eshell" "notification"]))
(hoarder:register "emacsattic/lein"
  '(:tag ["eshell" "clojure" "leiningen"]))
(hoarder:register "tom-tan/esh-help"
  '(:tag ["eshell"]))
(hoarder:fetch "travisjeffery/eshell-z.el"
  '(:tag ["eshell" "z" "autojump"]))
(hoarder:register "akicho8/ecd"
  '(:tag ["eshell"]))
(hoarder:register "emacsattic/em-zle"
  '(:tag ["eshell" "zsh" "zle"]))
(hoarder:fetch "lujun9972/el-todo"
  '(:tag ["eshell" "script" "todo"]))
(hoarder:register "aaron-em/nethack-luck.el"
  '(:tag ["eshell" "nethack" "fortune"]))
(hoarder:register "heow/fpl-moo"
  '(:tag ["moo" "mud" "lambdamoo"]))
(hoarder:register "dpom/ent"
  '(:tag ["emacs" "build" "ant"]))
(hoarder:register "czipperz/elisp-type-lint"
  '(:tag ["type" "type_check" "linter"]))
(hoarder:register "bdc34/helm-taskswitch"
  '(:tag ["helm" "x11" "desktop" "window" "wmctrl"]
    :dependency ["flexibeast/ewmctrl"]))
(hoarder:register "flexibeast/ewmctrl"
  '(:tag ["wmctrl"]))
(hoarder:register "gongo/pokemon-emacs")
(hoarder:register "git://git.sv.gnu.org/so-long.git")
(hoarder:register "Xaldew/vs-comment-el"
  '(:tag ["highlight" "comment" "visual_studio"]))
(hoarder:register "tuhdo/xwidgete"
  '(:tag ["xwidget" "gtk" "webkit"]))
(hoarder:register "punchagan/html-preview"
  '(:tag ["html" "preview" "webkit" "xwidget"]))
(hoarder:register "dryman/toml-mode.el"
  '(:tag ["toml"]))
(hoarder:register "domtronn/all-the-icons.el"
  '(:tag ["icon" "font"]
    :dependency ["emacsmirror/font-lock-plus"]))
(hoarder:fetch"domtronn/all-the-icons.el.wiki"
  '(:tag ["emacs" "icon" "font"]))
(hoarder:register "mutbuerger/ert-flash-modeline"
  '(:tag ["ert" "modeline"]))
(hoarder:register "emacs-pe/lyrics.el"
  '(:tag ["music" "lyric"]))
(hoarder:register "Fuco1/blablabla"
  '(:tag ["lightable"]))
(hoarder:register "https://bitbucket.org/jpkotta/openwith"
  '(:type :hg))
(hoarder:register "SebastianRose/org-osm"
  '(:tag ["org-mode" "osm" "map"]))
(hoarder:register "AndreaCrotti/yasnippet-snippets"
  '(:tag ["snippet" "yasnippet"]))
(hoarder:register "tumashu/exwm-x"
  '(:tag ["exwm"]))
(hoarder:register "hassy/http-twiddle"
  '(:tag ["http"]))
(hoarder:register "porterjamesj/virtualenvwrapper.el"
  '(:tag ["virtualenv" "virtualenvwrapper" "python"]))
(hoarder:register "tomterl/fullframe"
  '(:tag ["fullscreen" "fullframe"]))
(hoarder:register "KenetJervet/emacs-bad-apple")
(hoarder:register "gromnitsky/read-aloud.el"
  '(:tag ["speech-dispatcher" "festival" "flite"]))
(hoarder:register "https://gitlab.com/dto/elo.git"
  '(:desc "elo: simple project scripting for emacs"))
(hoarder:register "nlamirault/emacs-gitlab"
  '(:tag ["gitlab"]))
(hoarder:fetch "skeeto/emacs-torrent")
(hoarder:fetch "sverrejoh/emacs-torrent ")
(hoarder:register "ieure/uuid-el"
  '(:tag ["uuid" "id"]))
(hoarder:register "troyp/ls.el"
  '(:tag ["dash" "list" "cl"]
    :dependency ["magnars/dash.el"]))
(hoarder:register "troyp/fn.el"
  '(:tag ["functional_programming" "dash"]))
(hoarder:fetch "rhoit/powerline-iconic-theme"
  '(:tag ["icon" "powerline"]))
(hoarder:register "mugijiru/lupin-title")
(hoarder:register "emacsmirror/lispxmp")
(hoarder:fetch "exercism/xelisp"
  '(:tag ["exercise" "exercism" "emacs" "emacs_lisp"]))
(hoarder:register "Wilfred/loop.el"
  '(:tag ["loop" "emacs" "utility"]))
(hoarder:register "Malabarba/threads-list-mode")
(hoarder:register "orgcandman/pcap-mode"
  '(:tag ["wireshark" "pcap" "packet_capture"]))
(hoarder:register "https://bitbucket.org/adamsmd/digit-groups"
  '(:type :hg))
(hoarder:register "syohex/emacs-pcre"
  '(:tag ["emacs_module" "pcre" "regex"]))
(hoarder:register "GuiltyDolphin/hook"
  '(:tag ["hook"]))
(hoarder:register "atheriel/splash-buffer.el"
  '(:tag ["scratch" "splash" "spacemacs"]))
(hoarder:register "vapniks/regex-collection"
  '(:tag ["regex" ]))
(hoarder:fetch "emacsattic/emhacks")
(hoarder:register "ieure/spite"
  '(:desc " Emacs Lisp REPL for interacting with web services"
    :tag ["api" "repl"]))
(hoarder:register "bogolisk/leo"
  '(:tag ["oop" "clso" "class"]))
(hoarder:register "https://gitlab.com/tarsius/glab"
  '(:type :git
    :tag ["gitlab"]))
(hoarder:register "bddean/emacs-ereader"
  '(:tag ["epub" "ebook" "org-mode"]))
(hoarder:register "mrhmouse/rc-mode.el"
  '(:tag ["shell" "syntax" "plan9" "rc"]))
(hoarder:register "tarsius/dim-autoload")
(hoarder:register "francisco-colaco/xdg-directories-el"
  '(:tag ["xdg" "freedesktop" "configuration"]))
(hoarder:register "pmiddend/emacs-rtm"
  '(:tag ["remember_the_milk"]))
(hoarder:register "xuchunyang/gitter.el"
  '(:tag ["gitter"]))
(hoarder:register "mutbuerger/twitch-streamer"
  '(:tag ["twitch" "livestreamer"]))
(hoarder:register "emacsmirror/flash-paren"
  '(:tag ["parenthesis" "highlghit"]))
(hoarder:register "atykhonov/emacs-netspeak"
  '(:tag ["english"]
    :site "http://www.netspeak.org/"))
(hoarder:register "tashrifsanil/org-easy-img-insert")
(hoarder:register "FrancisMurillo/transducer.el"
  '(:tag ["emacs" "clojure" "tranceducer" "reduce"]))
(hoarder:register "hober/html5-el"
  '(:tag ["html" "html5"]
    :site "http://tess.oconnor.cx/elisp/"))
(hoarder:register "emacsmirror/scrape"
  '(:tag ["scraping" "web" "html"]
    :site "http://tess.oconnor.cx/elisp/"))
(hoarder:register "jaypei/emacs-neotree"
  '(:tag ["file" "browser"]))
(hoarder:register "emacsmirror/adaptive-wrap")
(hoarder:register "luque/emacs-giphy")
(hoarder:register "cdddr/ewm")
(hoarder:register "deepadhurka/idutils")
(hoarder:register "vermiculus/magithub"
  '(:tag ["magit" "git" "github"]))
(hoarder:register "jml/direnv-el"
  '(:tag ["direnv" "dotenv" "enviroment_variable" "configuration" "shell"]))
(hoarder:register "coldnew/pangu-spacing"
  '(:tag ["chinese" "english"]))
(hoarder:register "https://gitlab.com/dustyweb/soci-el.git"
  '(:tag ["web" "activitypub" "jsonld"]))
(hoarder:register "hrs/engine-mode"
  '(:tag ["google" "search_engine" "web"]))
(hoarder:register "leoliu/id3"
  '(:tag ["mp3" "tag" "id3" "music" "parser"]
    :memo "[[https://lars.ingebrigtsen.no/2015/04/22/emacs-and-id3/][Emacs and id3 – Random Thoughts]]"))
(hoarder:fetch "flycheck/emacs-travis"
  '(:tag ["travis-ci" "emacs"]))
(hoarder:register "Malabarba/speed-of-thought-lisp")
(hoarder:register "fourier/ztree"
  '(:tag ["file_manager" "dired"]))
(hoarder:register "xahlee/xah-find"
  '(:tag ["find" "grep"]))
(hoarder:register "paul-issartel/nnreddit"
  '(:tag ["reddit" "gnus"]))
(hoarder:register "jwiegley/use-package")
(hoarder:register "emacsmirror/el-search")
(hoarder:register "Wilfred/elisp-refs.el")
(hoarder:register "lujun9972/podcaster"
  '(:tag ["podcast" "rss" "feed"]))
(hoarder:register "Alexander-Miller/treemacs"
  '(:tag ["neotree"]))
(hoarder:register "emacs-jp/japanese-holidays"
  '(:tag ["calendar"]))
(hoarder:register "emacsfodder/html-entities-helper")
(hoarder:register "yati-sagade/orch"
  '(:tag ["org-mode" "android"]))
(hoarder:register "liangzan/frame-tag.el"
  '(:desc "binds M-1 to M-9 to the emacs frame to allow fast switching"
    :tag ["frame"]))
(hoarder:register "llvilanova/info-buffer"
  '(:desc "Display info topics on separate buffers"
    :tag ["info"]))
(hoarder:register "andschwa/fortune-cookie"
  '(:desc "Print a fortune in your Emacs scratch buffer"))
(hoarder:register "katspaugh/kuromoji.el"
  '(:desc "黒文字のEmacsプラグインです"
    :tag ["japanese" "kuromoji"]))
(hoarder:register "darksmile/cheatsheet") 
(hoarder:register "stardiviner/eldoc-overlay-mode"
  '(:desc "display eldoc doc with contextual documentation overlay for easy to look."
    :dependency ["stardiviner/inline-docs.el"]))
(hoarder:fetch "leoliu/pcmpl-git-el"
  '(:desc "Emacs pcomplete for git"
    :tag ["git" "pcomplete"]))


;;;;; general packages

(hoarder:register "rejeep/commander.el"
  '(:tag ["cli" "command" "option" "parse"]))
(hoarder:register "emacsmirror/font-lock-plus")
(hoarder:register "alphapapa/mosey.el")
(hoarder:register "alezost/mwim.el")
(hoarder:register "ejmr/php-mode")
(hoarder:register "fukamachi/kindly-mode"
  '(:tag ["kindle"]))
(hoarder:register "TheBB/spaceline"
  '(:tag ["mode-line" "spacemacs" "powerline"]))
(hoarder:register "tarsius/auto-compile"
  '(:tag ["compile"]))
(hoarder:register "swannodette/clojure-snippets"
  '(:tag ["clojure" "snippet" "yasnippet"]))
(hoarder:fetch "https://bitbucket.org/shackra/secretaria.el.git"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/56l1z2/can_the_community_review_my_package_secretariael/][Too Many Requests]]"
    :tag ["org"]))
(hoarder:register "spiderbit/kodi-remote.el"
  '(:tag ["kodi"]))
(hoarder:register "nschum/window-numbering.el")
(hoarder:register "kshramt/company-ngram")
(hoarder:register "Yuki-Inoue/tblui.el"
  '(:dependency ["politza/tablist"]))
(hoarder:register "abo-abo/pamparam"
  '(:dependency ["abo-abo/worf"]))
(hoarder:register "https://bitbucket.org/agriggio/ahg"
  '(:tag ["mercurial"]
    :type :hg))
(hoarder:register "jordonbiondo/promises.el"
  '(:tag ["promise"]))
(hoarder:register "m00natic/vlfi")
(hoarder:register "zonuexe/emacs-copyit")
(hoarder:register "DogLooksGood/parinfer-mode")
(hoarder:register "ardekantur/gopher.el"
  '(:tag ["gopher"]))
(hoarder:register "djcb/sauron")
(hoarder:register "zallison/sauron-goodies")
(hoarder:register "peterwvj/eshell-up"
  '(:tag ["eshell" "bd"]))
(hoarder:register "emacsmirror/hide-comnt")
(hoarder:register "psachin/insert-shebang")
(hoarder:register "https://gitlab.com/xuhdev/dired-icon.git"
  '(:tag ["dired" "icon"]))
(hoarder:register "david-christiansen/dr-racket-like-unicode"
  '(:tag ["drracket" "unicode"]))
(hoarder:register "bmag/imenu-list")
(hoarder:register "nonsequitur/idle-highlight-mode")
(hoarder:register "alezost/bui.el"
  '(:tag ["tabulated-list" "table" "buffer" "ui"]))
(hoarder:register"davidshepherd7/aggressive-fill-paragraph-mode"
  '(:tag ["fill-paragraph"]))
(hoarder:register "kuanyui/fsc.el")
(hoarder:register "konr/tomatinho")
(hoarder:register "abo-abo/auto-yasnippet"
  '(:tag ["snippet" "yasnippet"]))
(hoarder:register "demyanrogozhin/elhome"
  '(:tag ["configuration" "dotfiles"]))
(hoarder:register "ensime/emacs-scala-mode"
  '(:tag ["scala"]))
(hoarder:register "seanirby/commando")
(hoarder:register "plexus/html-to-hiccup"
  '(:tag ["html" "dom" "hiccup" "clojure"]))
(hoarder:register "dgutov/highlight-escape-sequences"
  '(:tag ["highlight" "escape_sequences"]))
(hoarder:register "alezost/make-color.el")
(hoarder:register "emacsmirror/dired-plus")
(hoarder:register "emacsmirror/echo-bell"  )
(hoarder:register "Fanael/wordgen.el")
(hoarder:register "IvanMalison/tile"
  '(:tag ["xmonad"]))
(hoarder:register "skeeto/emacs-pastebin"
  '(:tag ["pastebin"]))
(hoarder:register "rakanalh/emacs-dashboard"
  '(:dependency ["purcell/page-break-lines"
                 "bbatsov/projectile"]))
(hoarder:register "https://gitlab.com/iankelling/visible-mark.git")
(hoarder:register "vava/i3-emacs"
  '(:tag ["i3" "frame"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5at7lg/vanquishing_emacs_displaybuffer_for_use_with_i3/d9jldgq/][Too Many Requests]]"))
(hoarder:register "davidshepherd7/frames-only-mode"
  '(:tag ["frame"]))
(hoarder:register "git://git.freebsoft.org/git/speechd-el"
  '(:tag ["speech_synthesis"]))
(hoarder:register "renard/indicate-change"
  '(:dependency ["Fuco1/indicators.el"]))
(hoarder:register "Fuco1/clippy.el")
(hoarder:register "Fuco1/ETable"
  '(:tag ["jtable" "table" "mvc"]))
(hoarder:register "iqbalansari/restart-emacs")
(hoarder:register "jtbm37/all-the-icons-dired")
(hoarder:register "zweifisch/enlive")
(hoarder:register "emacsmirror/ucs-cmds"
  '(:tag ["unicode"]))
(hoarder:register "andreasjansson/language-detection.el"
  '(:tag ["language" "eww"]))
(hoarder:register "tarao/tab-group-el")
(hoarder:register "mrkkrp/typit")
(hoarder:register "https://bitbucket.org/gvol/emacs-achievements"
  '(:type :hg))
(hoarder:register "xuchunyang/grab-x-link")
(hoarder:register "git://repo.or.cz/anything-config.git"
  '(:tag ["helm" "completion"]))
(hoarder:register "ksjogo/proportional"
  '(:tag ["font"]))
(hoarder:register "earlyjohn/company-org-headings")
(hoarder:register "cmpitg/wand"
  '(:tag ["acme" "xiki"]))
(hoarder:register "Fanael/highlight-quoted"
  '(:desc "Highlight Lisp quotes and quoted symbols"
    :tag ["highlight"]))
(hoarder:register "vic/color-theme-buffer-local"
  '(:desc "Set emacs color themes by buffer."))
(hoarder:register "cpitclaudel/easy-escape"
  '(:desc "Improve readability of escape characters in Emac Lisp regular expressions"
    :tag ["prettify" "escape_sequnce"]))
(hoarder:register "myTerminal/emacs-sounds"
  '(:desc "Sound effects for Emacs"))
(hoarder:register "TheBB/tripoli"
  '(:tag ["python" "emacs"])) 
(hoarder:register "zonuexe/untitled-new-buffer.el"
  '(:desc "Open untitled new buffer like other text editors in Emacs"))
(hoarder:register "sabof/mview-image-and-emms-cover"
  '(:desc "A simple image viewer based on ImageMagick"
    :memo "[[https://gist.github.com/sabof/5264829][emms-opts.el · GitHub]]
[[https://www.reddit.com/r/emacs/comments/1b673h/tips_for_setting_up_emms_especially_getting_cover/c943g6c/][Too Many Requests]]"
:tag ["emms" "music"]))
(hoarder:register "sabof/emms-mobile-remote"
  '(:desc "Control EMMS using your mobile"
    :tag ["emms" "mobile"]
    :memo "[[https://www.reddit.com/r/emacs/comments/1almo4/emmsmobileremote/][emms-mobile-remote : emacs]]"))
(hoarder:register "fnwiya/meigen-bot"
  '(:tag ["tips" "fortune"]
    :memo "[[http://fnwiya.hatenablog.com/entry/2015/12/01/012858][emacs起動時にランダムに名言をミニバッファに表示するmeigen-botリリースしました。 - fnwiyaBlog]]")) 
(hoarder:register "joddie/pcre2el"
  '(:desc "convert between PCRE, Emacs and rx regexp syntax"
    :memo "[[http://emacs.rubikitch.com/pcre2el/][pcre2el.el : Emacs正規表現の呪いを解け！Emacs/PCRE(Perlの正規表現)/rx相互変換・解説！PCRE対応re-builder！！]]"))
(hoarder:register "sanryuu/tips"
  '(:desc "emacs-tips"
    :tag ["tips" "emacs" "qiita" "article" "melpa"]
    :memo "[[http://qiita.com/sanryuu/items/de42bbd5651a0c1f7c37][Emacsで人気・新着の機能を紹介するtips.el作りました - Qiita]]"))
(hoarder:register "dgtized/list-environment.el"
  '(:desc "A tabulated process environment editor"))
(hoarder:register "Yevgnen/ivy-rich"
  '(:tag ["ivy" "counsel"])) 
(hoarder:register "Wilfred/ag.el"
  '(:desc "An Emacs frontend to ag, (\"the silver searcher\" ack replacement)"))
(hoarder:register "xuchunyang/sl.el"
  '(:desc "Emacs clone of sl(1)"))
(hoarder:register "daichirata/emacs-get-wild"
  '(:tag ["getwild" "emacs"]
    :memo "[[http://qiita.com/daich/items/a3d4dd174bcaea7e517a][GetWild駆動開発の生産性を8倍に高めるget-wild.el - Qiita]]")) 
(hoarder:register "rubikitch/all-ext"
  '(:memo "http://d.hatena.ne.jp/rubikitch/20130202/all"
    :dependency ["emacsmirror/all"])) 
(hoarder:register "DarthFennec/highlight-indent-guides"
  '(:desc "Emacs minor mode to highlight indentation"
    :tag ["highlight" "indentation"]))
(hoarder:register "rubikitch/open-junk-file"
  '(:memo "[[http://qiita.com/akisute3@github/items/1d143b0b69e9aaf252ca][Emacs で使い捨てファイルを開く - Qiita]]")) 
(hoarder:register "sebastiansturm/autothemer"
  '(:desc "Conveniently create Emacs themes"
    :tag ["emacs" "theme"]))
(hoarder:register "marcIhm/org-index"
  '(:desc "A personal adaptive index for org."
    :tag ["org-mode" "index"]
    :memo "[[http://2484.de/org-index.html]]
  The latest published version of this file can always be found at:
   http://orgmode.org/w/?p=org-mode.git;a=blob_plain;f=contrib/lisp/org-index.el;hb=HEAD "))
(hoarder:register "collarchoke/ovpn-mode"
  '(:desc "An openvpn management mode for emacs"
    :tag ["openvpn"]))
(hoarder:register "hagleitn/stock-ticker"
  '(:desc "Emacs minor mode to show stock information in mode line."
    :tag ["stock" "mode-line"]
    :memo "[[http://qiita.com/takaxp/items/253f2f54893d8d399ca3][日経平均やダウ平均の状況をモードラインに表示する - Qiita]]"))
(hoarder:register "syohex/emacs-zoom-window"
  '(:desc "Zoom and Unzoom window"
    :memo "[[http://syohex.hatenablog.com/entry/20130914/1379166283][Emacsで tmuxの zoom, unzoomを実現する zoom-window.el書きました - syohex’s diary]]
[[http://emacs.rubikitch.com/zoom-window/][zoom-window:C-x 1を復元可能にする7つのメリット]]"))
(hoarder:register "xiongtx/eros"
  '(:desc "Evaluation Result OverlayS for Emacs Lisp."))
(hoarder:register "cute-jumper/evil-embrace.el"
  '(:desc "Evil integration of embrace.el"
    :dependency ["cute-jumper/embrace.el"]))
(hoarder:register "dochang/mb-url"
  '(:desc "Multiple Backends for Emacs URL package"
    :tag ["curl" "url" "http"]))
(hoarder:register "zonuexe/untitled-new-buffer.el"
  '(:desc "Open untitled new buffer like other text editors in Emacs"))
(hoarder:register "rolandwalker/simpleclip"
  '(:desc "Simplified access to the system clipboard in Emacs."
    :tag ["clipboard"]))
(hoarder:register "Fanael/rainbow-identifiers"
  '(:desc "Rainbow identifier highlighting for Emacs"))
(hoarder:register "takaishi/babel-loader.el"
  '(:desc "org-modeのbabelというシステムを使って書かれた設定ファイルをinit-loaderでロードするためのラッパです"
    :memo "[[http://futurismo.biz/archives/6057][babel-loader:org-mode で init.el を管理する方法 | Futurismo]]"))
(hoarder:register "abrochard/emacs-habitica"
  '(:desc "Emacs Extension for Habitica"
    :tag ["habitica" "todo"]))
(hoarder:register "mallt/eshell-fixed-prompt-mode"
  '(:desc "Emacs minor mode to restrict eshell to a single fixed prompt"
    :tag ["eshell"]))
(hoarder:register "squiter/ivy-youtube"
  '(:tag ["ivy" "youtube"])) 
(hoarder:register "zk-phi/ac-last-session"
  '(:desc "[emacs] auto complete source to complete words-in-same-mode-buffers in the last session"
    :tag ["auto-complete"]))
(hoarder:register "riscy/shx-for-emacs"
  '(:desc "An Emacs shell-mode extension that enables displaying small plots and graphics and lets users write shell commands in Emacs Lisp."
    :tag ["shell" "graph"]))
(hoarder:register "pjones/eldoro"
  '(:desc "A pomodoro timer/tracker that works with org-mode."
    :tag ["org-mode" "pomodoro"]))
(hoarder:register "kuanyui/fm-bookmarks.el"
  '(:desc "Access existed File Managers' bookmarks (e.g. Dolphin, Nautilus, PCManFM) in Dired."
    :tag ["bookmark"]))
(hoarder:register "desvox/q4"
  '(:desc "Browse and archive 4chan in GNU Emacs."
    :tag ["4chan"]
    :memo "[[https://boards.4chan.org/g/thread/58524074][/g/ - /dpt/ - Daily Programming Thread - Technology - 4chan]]"))
(hoarder:register "kaushalmodi/todoist.el"
  '(:desc "Elisp library to interface with Todoist API"
    :tag ["todo" "todoist"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5oyml2/any_todoist_user_interested_in_collaborating_on/][Too Many Requests]]"))
(hoarder:register "ttakamura/org-todoist"
  '(:desc "Sync TODOs between emacs org-mode files and Todoist"
    :tag ["todo" "todoist" "org-mode"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5oyml2/any_todoist_user_interested_in_collaborating_on/][Too Many Requests]]"))
(hoarder:register "emacsmirror/col-highlight"
  '(:desc "Highlight the current column"
    :dependency ["emacsmirror/vline"]))
(hoarder:register "emacsmirror/browse-kill-ring-plus"
  '(:desc "Extensions to `browse-kill-ring.el'"))
(hoarder:register "sri/activity-log"
  '(:desc "An activity log for Emacs's org-mode"))
(hoarder:register "chuntaro/emacs-async-await"
  '(:desc "Async/Await for Emacs"
    :tag ["promise" "generator" "async" ]
    :dependency ["chuntaro/emacs-promise"]))
(hoarder:register "troyp/fn.el"
  '(:desc "Concise anonymous functions for Emacs Lisp"))
(hoarder:register "josuah/drawille"
  '(:desc "Drawille library implementation in elisp."))
(hoarder:register "tmalsburg/guess-language.el"
  '(:desc "Emacs mode that detects the language of what you're typing. Automatically switches spell checker. Supports multiple languages per document."))
(hoarder:register "Fanael/highlight-numbers"
  '(:desc "Highlight numbers in source code"))
(hoarder:register "atgreen/paperless"
  '(:desc "Emacs assisted PDF document filing"
    :tag ["pdf" "document"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5t4r2n/paperless_an_emacs_assisted_pdf_document_filing/][Too Many Requests]]"))
(hoarder:register "Bad-ptr/common-header-mode-line.el"
  '(:desc "header-line and/or mode-line that common for all windows of emacs frame"
    :memo "[[https://www.reddit.com/r/emacs/comments/5tm0hw/per_frame_modeheaderline_patches_welcome/][Too Many Requests]]"))
(hoarder:register "DamienCassou/unify-opening"
  '(:desc "Emacs package to make everything use the same mechanism to open files"))
(hoarder:register "thamer/runner"
  '(:desc "Improved \"open with\" suggestions for dired mode in Emacs"))
(hoarder:register "hsaito/emacs-high-UTF"
  '(:desc "UTF-64, UTF-128, UTF-256, UTF-384, UTF-512 Support for Emacs (Joke)"
    :tag ["unicode" "utf"]))
(hoarder:register "kawaguchi/mi.el"
  '(:desc "Emacs MIDI Instrument"
    :tag ["midi"]
    :dependency [("bleything/midiator"
                  (:desc "A Ruby library for interacting with system MIDI services."))]))
(hoarder:register "https://bitbucket.org/jpkotta/highlight-operators"
  '(:type :hg))
(hoarder:register "sugano-nu/gundam-emacs"
  '(:desc "A shooting game by Emacs Lisp with smooth background scroll. Version 0.10"
    :tag ["game" "gundam"]))
(hoarder:register "Lindydancer/highlight-refontification"
  '(:desc "Visualize how font-lock refontifies a buffer"))
(hoarder:register "smythp/eloud"
  '(:desc "Lightweight, interactive screen reader for Emacs"
    :tag ["espeak" "screen_reader"]))
(hoarder:register "https://bitbucket.org/zck/2048.el"
  '(:type :hg
    :tag ["game" "2048"]))

;; (hoarder:register "https://bitbucket.org/eeeickythump/org-player"
;;                  '(:tag ["org" "bongo" "music"]
;;                    :dependency ["dbrock/bongo"]
;;                    :type hg))

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

(hoarder:fetch "tromey/el-compilador"
  '(:tag ["emacs" "emcas-lisp" "compiler"]))
(hoarder:fetch "Mon-Ouie/blocky"
  '(:tag ["common_lisp" "game" "emacs"]
    :memo " [[https://www.youtube.com/watch?v=i03_VzOmDko][emacs glass demo - YouTube]]
[[https://github.com/Mon-Ouie/blocky/blob/master/glass.el][blocky/glass.el at master · Mon-Ouie/blocky · GitHub]] "))
(hoarder:fetch "ludwigpacifici/algorithm-mnemonics-emacs"
  '(:tag ["clojure" "emacs" "yasnippet" "snippet" "c++" ]
    :memo "[[https://www.youtube.com/watch?v=tSq7yDwS1vM][CppCon 2016: Tommy Bennett \“Algorithm Mnemonics: Increase your Productivity with STL Algorithms\" - YouTube]]"))
(hoarder:fetch "caisah/emacs.dz"
  '(:tag ["emacs" "dotfiles" "configuration"]))
(hoarder:fetch "knu/emacsc"
  '(:tag ["emacs" "cli"]))
(hoarder:fetch "tacticiankerala/awesome-emacs"
  '(:tag ["emacs" "awesome_list"]))
(hoarder:fetch "sefakilic/awesome-emacs"
  '(:tag ["emacs" "awesome_list"]))
(hoarder:fetch "incandescentman/Emacs-Settings"
  '(:tag ["emacs" "configuration"]
    :memo "[[https://www.youtube.com/watch?v=FtieBc3KptU][Emacs For Writers - YouTube]]"))
(hoarder:fetch "vkazanov/toy-orgfuse"
  '(:tag ["python" "fuse" "org-mode"]))
(hoarder:fetch "argentum47/everm"
  '(:tag ["emacs"]))
(hoarder:fetch "p-gen/smenu")
(hoarder:fetch "Kagami/webm.py")
(hoarder:fetch "https://gist.github.com/mpasternacki/974e29d1e3865e940c53.git"
  '(:tag ["freebsd" "macbook"]))
(hoarder:fetch "mwolson/emacs-shared"
  '(:tag ["configuration" "emacs"]))
(hoarder:fetch "https://gist.github.com/introom/f4cafe18fbe365a9dd29098aeaba1e03.git"
  '(:name "e-.fish"
    :tag ["emacs" "fish" "pipe"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5fbpir/how_to_stop_emacsclient_eval_output_to_stdout/][How to stop \"emacsclient --eval\" output to stdout? : emacs]]"))
(hoarder:fetch "ellisadigvom/rig.el"
  '(:desc "emacs config manager"
    :tag ["configuration" "emacs"]))
(hoarder:fetch "BooksThere/ox-novel"
  '(:desc "Org-mode で小説を書くと 1 コマンドで A5 サイズ縦書き二段組の PDF が生成できる。"
    :memo "[[http://qiita.com/BooksThere/items/ff46ee6a5dc796df1e78][Org-mode で書いたファイルから A5 縦書き二段組の PDF を生成するツール - Qiita]]"
    :tag ["orgmode" "novel" "pdf" "latex"]))
(hoarder:fetch "https://gitlab.com/chaseadamsio/dotfiles.git"
  '(:tag ["emacs" "i3"]
    :memo "[[https://gitlab.com/chaseadamsio/dotfiles/blob/master/emacs.org][emacs.org · master · Chase Adams / dotfiles · GitLab]]"))
(hoarder:fetch "https://gist.github.com/kiwanami/5820978.git"
  '(:tag ["ctable" "emacs"]
    :name "ctable-0.1.2b-demo.el"))
(hoarder:fetch "tarsius/git-elisp-overview"
  '(:desc "Git-related Emacs packages "
    :tag ["git"]))
(hoarder:fetch "timoc/emacs-tyrant"
  '(:desc "Emacs tyrant is a literate (using orgmode) config mechanism that has served me well, that i'm releasing into the public. This is in part a response to https://www.reddit.com/r/emacs/comments/3utwfr/literate_emacs_configuration_file/, and a way of recording my last known good before i gut it and move on to the next level of emacs yak-shaving. "
    :tag ["emacs" "configuration"]))
(hoarder:fetch "novoid/dot-emacs"
  '(:desc "My GNU/Emacs configuration"
    :tag ["org-mode" "configuration" "yankpad"]
    :memo "https://github.com/novoid/dot-emacs/blob/master/main.el
[[http://karl-voit.at/2016/12/18/org-depend/][Advanced Usage of Dependencies Between Tasks Using Org-mode]]"))
(hoarder:fetch "sri/harlem-shake.el"
  '(:desc "Harlem Shake in Emacs"
    :Tag ["emacs"]))
(hoarder:fetch "nordlow/elisp"
  '(:desc "My life-long work of Emacs extensions"
    :tag ["emacs"]
    :download nil))
(hoarder:fetch "raxod502/radian"
  '(:desc "Elegant but practical configurations for Emacs, Zsh, Tmux, Leiningen, and Git"
    :tag ["dotfiles" "configuration" "emacs" "use-package" "zsh" "tmux" "clojure"]))
(hoarder:fetch "emacsmirror/eoops"
  '(:desc "An Object Oriented Programming System in Elisp"
    :tag ["emacs" "oop" "smalltalk"]
    :memo "[[https://www.emacswiki.org/emacs/EmacsObjectOrientedProgrammingSystem][EmacsWiki: Emacs Object Oriented Programming System]]"))
(hoarder:fetch "IvanMalison/dotfiles"
  '(:desc "configuration files for xmonad, emacs,  zsh, git, linux, osx and more."
    :tag ["dotfiles" "emacs" "use-package"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5l15gg/how_do_you_share_your_dotfiles_on_github_while/][Too Many Requests]]"))
(hoarder:fetch "https://gist.github.com/dc8fe61af6f2599c8e948035fbf66c13.git"
  '(:tag ["emacs" "game"]
    :name "xmas-tree.el"
    :memo "[[http://gongo.hatenablog.com/entry/2016/12/25/004550][🎄 Merry Christmas in Emacs 🎄 - Thanks Driven Life]]"))
(hoarder:fetch "thapakazi/.emacs.d"
  '(:desc "Mai emacs configuration"
    :tag ["emacs" "configuration" "org-mode"]
    :memo "[[https://github.com/thapakazi/.emacs.d/blob/master/config.org][.emacs.d/config.org at master · thapakazi/.emacs.d · GitHub]]"))
(hoarder:fetch "nobulin/elisp"
  '(:desc "My tiny emacs lisp code."
    :tag ["thread" "task"]
    :memo "[[https://github.com/nobulin/elisp/blob/master/thread-script.el][elisp/thread-script.el at master · nobulin/elisp · GitHub]]"))
(hoarder:fetch "geekerzp/kitten-emacs"
  '(:desc "Convention over Configuration for emacs"
    :tag ["configuration" "emacs"]))
(hoarder:fetch "keenerd/albumbler"
  '(:desc "A simple psychic playlist generator for a wide variety of music players."
    :site "http://kmkeen.com/albumbler/"
    :tag ["python" "music" "emms" "emacs"]))
(hoarder:fetch "noqisofon/emacs-gasket"
  '(:desc "emacs lisp package manager"
    :tag ["javascript" "emacs"]))
(hoarder:fetch "larsmagne/clock.el"
  '(:desc "Emacs Alarm Clock"))
(hoarder:fetch "EricCrosson/snow"
  '(:desc "Snow simulator"
    :tag ["emacs" "game"]))
(hoarder:fetch "https://gist.github.com/xorian/be19359b644a33f9947480bc8e7c7be0.git"
  '(:tag ["emacs" "script"]
    :desc "Script to send standard input into the emacs kill ring or a register"
    :memo "[[https://www.reddit.com/r/emacs/comments/5sn67f/script_to_send_standard_input_into_the_emacs_kill/][Script to send standard input into the emacs kill ring or a register : emacs]]"))
(hoarder:fetch "lujun9972/MyLisp") 


;; TODO emacswiki support
;; "http://www.emacswiki.org/emacs/hl-spotlight.el"

;;; init.el ends here
