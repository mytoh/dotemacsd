;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


;;;;  register packages

(hoarder:register "magnars/s.el")
;; (hoarder:register "jonathanchu/emacs-powerline")
;; (hoarder:register "raugturi/powerline-evil"
;;   '(:tags ["evil" "mode-line"]))
(hoarder:register "milkypostman/powerline"
  '(:tags ["mode-line"]))
;; (hoarder:register "Dewdrops/powerline")
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
  '(:tags ["fish"]))
(hoarder:register "jramnani/fish-mode"
  '(:tags ["fish"]))
(hoarder:register "d12frosted/fish-mode"
  '(:tags ["fish"]))
(hoarder:register "thierryvolpiatto/emacs-bmk-ext")
(hoarder:register "kawabata/aozora-view")
(hoarder:register "tomoya/fuzzyjump.el")
(hoarder:register "omouse/emacs-sos")
(hoarder:register "davexunit/yon-chan")
(hoarder:register "git://git.sv.gnu.org/emms.git"
  '(:name "emms" :load-path "lisp"
    :build ["gmake lisp docs emms-print-metadata"]
    :tags ["emms"]))
(hoarder:register "fgallina/emms-info-mediainfo"
  '(:tags ["emms"]))
(hoarder:register "osener/emms-soundcloud"
  '(:tags ["emms" "soundcloud"]))
(hoarder:register "vapniks/emms-mark-ext"
  '(:tags ["emms"]
    :description "Extra functions for tagging tracks in emms mode in emacs. "))
(hoarder:register "dochang/emms-player-mpv"
  '(:tags ["emms" "mpv"]))
(hoarder:register "momomo5717/emms-player-mpv-volume"
  '(:tags ["emms" "mpv"]))
(hoarder:register "alezost/emms-state.el"
  '(:tags ["emms"]))
(hoarder:register "r0man/soundklaus.el"
  '(:dependencies [("magnars/dash.el" ( :compile nil))
                   "magnars/s.el"
                   "kiwanami/emacs-deferred"]
    :tags ["soundcloud"]))

(hoarder:register "magit/git-modes"
  '(:tags ["git"]))
(hoarder:register "magit/magit"
  '(:build ["gmake clean lisp docs"]
    :info "Documentation"
    :load-path ["lisp"]
    :dependencies [("magnars/dash.el" ( :compile nil))
                   "jwiegley/emacs-async"
                   "magit/with-editor"]
    :tags ["git"]))
(hoarder:register "magit/orgit"
  '(:tags ["git" "org" "magit"]))
(hoarder:register "mickesv/magit-overview"
  '(:tags ["magit"]))
(hoarder:register "magit/magit-filenotify"
  '(:tags ["magit"]))
(hoarder:register "dholm/magit-idle-breadcrumbs"
  '(:tags ["magit"]))
;; (hoarder:register "magit/evil-magit"
;;                   '(:tags ["magit"]))
(hoarder:register "YoungFrog/git-overview"
  '(:tags ["git" "org"]))
(hoarder:register "company-mode/company-mode"
  '(:tags ["company"]))
(hoarder:register "proofit404/company-edbi"
  '(:tags ["company"]
    :dependencies ["company-mode/company-mode"]))
(hoarder:register "vspinu/company-math"
  '(:tags ["company"]
    :dependencies ["company-mode/company-mode"
                   "vspinu/symbols.el"]))
(hoarder:register "iquiw/company-restclient"
  '(:tags ["company"]
    :dependencies ["company-mode/company-mode"
                   ("for-GET/know-your-http-well"
                    (:load-path "emacs"))]))
(hoarder:register "dunn/company-emoji"
  '(:tags ["company" "emoji"]
    :dependencies ["company-mode/company-mode"]))
(hoarder:register "expez/company-quickhelp"
  '(:tags ["company"]
    :dependencies ["pitkali/pos-tip"]))
(hoarder:register "company-mode/company-statistics"
  '(:tags ["company" "auto_completion"]
    :dependencies ["company-mode/company-mode"]))
(hoarder:register "hlissner/emacs-company-dict"
  '(:tags ["company"]))
(hoarder:register "Alexander-Miller/company-shell"
  '(:tags ["company" "shell" "fish_shell"]))
(hoarder:register "osv/company-web"
  '(:tags ["company" "web" "html"]
    :dependencies ["osv/web-completion-data"]))
(hoarder:register "PythonNut/company-flx"
  '(:tags ["company" "fuzzy_match"]
    :dependencies ["lewang/flx"
                   "company-mode/company-mode"]))
(hoarder:register "wushuaibuaa/emacscompanywords"
  '(:tags ["company" "dictionary" "english"]))
(hoarder:register "zargener/company-web-mode"
  '(:tags ["company" "web"]))
(hoarder:register "ameuret/company-fontawesome"
  '(:description "A company-mode backend for autocompletion of Font Awesome class names, with previews !"
    :tags ["emacs-mode" "font-awesome" "productivity"]))
(hoarder:register "syohex/emacs-git-gutter"
  '(:tags ["git"]))
(hoarder:register "syohex/emacs-git-gutter-fringe"
  '(:tags ["git"]
    :dependencies ["syohex/emacs-git-gutter"
                   "nschum/fringe-helper.el"]))
(hoarder:register "nonsequitur/git-gutter-fringe-plus"
  '(:tags ["git"]
    :dependencies ["nonsequitur/git-gutter-plus"
                   "nschum/fringe-helper.el"]))
(hoarder:register "syohex/emacs-rebuildfm"
  '(:tags ["radio"]))
(hoarder:register "syohex/emacs-anzu" '(:compile nil))
(hoarder:register "syohex/emacs-evil-anzu"
  '(:tags ["evil" "anzu"]
    :dependencies [("syohex/emacs-anzu" (:compile nil))]))
(hoarder:register "Fuco1/smartparens"
  '(:compile nil :dependencies [("magnars/dash.el" ( :compile nil))]))
(hoarder:register "magnars/expand-region.el")
(hoarder:register "magnars/multiple-cursors.el")
(hoarder:register "knu/mc-extras.el"
  '(:tags ["multiple-cursors"]))
(hoarder:register "haskell/haskell-mode"
  '(:tags ["haskell"]
    :compile nil
    :build ["gmake clean all"]))
(hoarder:register "nilcons/hi2"
  '(:tags ["haskell"]))
(hoarder:register "kazu-yamamoto/ghc-mod"
  '(:tags ["ghc" "haskell"]
    :load-path "elisp"))
(hoarder:register "Bruce-Connor/paradox"
  '(:dependencies ["magnars/dash.el"
                   "jwiegley/emacs-async"
                   "Malabarba/spinner.el"
                   "abo-abo/hydra"]))
(hoarder:register "Malabarba/aggressive-indent-mode")
(hoarder:register "Bruce-Connor/rich-minority")
(hoarder:register "steckerhalter/google-el")
(hoarder:register "daemianmack/magit-cheatsheet"
  '(:tags ["magit"]))
(hoarder:register "re5et/itail")
(hoarder:register "syohex/emacs-quickrun")
(hoarder:register "fxbois/web-mode" '(:compile nil))
(hoarder:register "emacsmirror/auto-highlight-symbol")
(hoarder:register "nschum/highlight-symbol.el")
(hoarder:register "emacsmirror/rainbow-mode")
(hoarder:register "skeeto/elfeed"
  '(:tags ["rss"]))
(hoarder:register "remyhonig/elfeed-org"
  '(:dependencies ["skeeto/elfeed"]
    :tags ["org" "rss"]))
(hoarder:register "ian-kelling/spray")
(hoarder:register "dominikh/go-mode.el")
(hoarder:register "immerrr/lua-mode")
(hoarder:register "daic-h/emacs-rotate")
(hoarder:register "pidu/git-timemachine")
(hoarder:register "k-talo/smooth-scroll.el")
(hoarder:register "m2ym/yascroll-el")
(hoarder:register "emacs-jp/migemo")
(hoarder:register "rzl24ozi/cmigemo-module"
  '(:tags ["emacs" "migemo" "module"]
    :build ["gmake CMIGEMO=/home/mytoh/huone/ohjelmat/cmigemo"]))
(hoarder:register "taksatou/flappymacs")
(hoarder:register "gongo/yamada-el")
(hoarder:register "jiyoo/flyparens")
(hoarder:register "flycheck/flycheck"
  '(:dependencies ["magnars/dash.el"
                   "cask/shut-up"]
    :info "."))
(hoarder:register "flycheck/flycheck-pos-tip"
  '(:dependencies ["auto-complete/popup-el"]))
(hoarder:register "purcell/flycheck-package"
  '(:tags ["flycheck"]
    :dependencies ["purcell/package-lint"]))
(hoarder:register "zenozeng/css-eldoc")
(hoarder:register "yasuyk/web-beautify")
(hoarder:register "mhayashi1120/Emacs-slideview")
(hoarder:register "mhayashi1120/Emacs-imagex")
(hoarder:register "mhayashi1120/Emacs-image-diredx"
  '(:tags ["dired" "image"]))
(hoarder:register "kiwanami/emacs-window-manager"
  '(:dependencies ["kiwanami/emacs-window-layout"]))
(hoarder:register "m2ym/direx-el"
  '(:dependencies ["m2ym/popwin-el"]))
(hoarder:register "aki2o/e2wm-direx"
  '(:dependencies ["kiwanami/emacs-window-manager"
                   "m2ym/direx-el"]))
(hoarder:register "yu-i9/oniisama")
(hoarder:register "nicferrier/emacs-web"
  '(:dependencies ["magnars/dash.el"
                   "magnars/s.el"]))
(hoarder:register "nicferrier/elnode"
  '(:dependencies ["nicferrier/emacs-fakir"
                   "nicferrier/emacs-kv"
                   "nicferrier/emacs-db"
                   "nicferrier/emacs-noflet"
                   ]))
(hoarder:register "nicferrier/emacs-web"
  '(:dependencies ["nicferrier/elnode"]))
(hoarder:register "syohex/emacs-eew")
(hoarder:register "escherdragon/sunrise-commander"
  '(:compile nil))
;; (hoarder:register "http://git.gnus.org/gnus.git"
;;                  '(:build ["./configure" "gmake"]
;;                    :load-path ["lisp" "contrib"]))
(hoarder:register "dholm/tabbar")
;; (hoarder:register "aki2o/guide-key-tip"
;;                 '(:dependencies ["kbkbkbkb1/guide-key"
;;                          "emacsmirror/pos-tip"]))
(hoarder:register "clojure-emacs/clojure-mode"
  '(:tags ["clojure"]))
(hoarder:register "clojure-emacs/cider"
  '(:tags ["clojure"]
    :dependencies ["emacsmirror/queue"]))
(hoarder:register "krisajenkins/clojure-cheatsheet"
  '(:tags ["clojure"]
    :dependencies ["clojure-emacs/cider"]))
(hoarder:register "andrewmains12/clojurescript-mode"
  '(:tags ["clojure"]))
(hoarder:register "Fanael/rainbow-delimiters")
(hoarder:register "zk-phi/highlight-stages")
(hoarder:register "zk-phi/indent-guide")
(hoarder:register "jschaf/emacs-lorem-ipsum")
(hoarder:register "remyferre/comment-dwim-2")
(hoarder:register "capitaomorte/sly"
  '(:build ["gmake compile contrib-compile"]))
(hoarder:register "capitaomorte/sly-company"
  '(:tags ["common_lisp" "completion" "company" "sly"]))
(hoarder:register "PuercoPop/sly-repl-ansi-color"
  '(:tags ["sly"]))
(hoarder:register "slime/slime"
  '(:tags ["common_lisp"]))
(hoarder:register "hayamiz/twittering-mode"
  '(:tags ["twitter"]))
(hoarder:register "mhayashi1120/Emacs-twittering-stream"
  '(:tags ["twitter"]))
(hoarder:register "zonuexe/twindrill-mode"
  '(:tags ["twitter"]))
(hoarder:register "defunkt/coffee-mode")
(hoarder:register "fbkante/recycle")
(hoarder:register "kawabata/ids-edit"
  '(:tags ["chinese" "character" "cjkvi"]))
(hoarder:register "kawabata/emacs-ivariants"
  '(:tags ["chinese" "character" "cjkvi"]
    :dependencies ["kawabata/ivs-edit"]))
(hoarder:register "gbalats/autodisass-llvm-bitcode")
(hoarder:register "sachac/artbollocks-mode")
(hoarder:register "alpaker/Fill-Column-Indicator"
  '(:description "Graphically indicate the fill column"))
(hoarder:register "tungd/color-theme-approximate")
(hoarder:register "http://www.dr-qubit.org/git/undo-tree.git")
(hoarder:register "Bruce-Connor/emacs-google-this")
(hoarder:register "roman/golden-ratio.el")
(hoarder:register "winterTTr/ace-jump-mode" )
(hoarder:register "ieure/nssh-el")
(hoarder:register "mhayashi1120/japanlaw.el")
(hoarder:register "roman/navorski.el"
  '(:dependencies ["magnars/s.el"
                   ("magnars/dash.el" ( :compile nil))
                   "emacsmirror/multi-term"]))
(hoarder:register "febuiles/lyricwiki.el")
(hoarder:register "sabof/svg-mode-line-themes"
  '(:dependencies ["philjackson/xmlgen"]))
(hoarder:register "naota/navi2ch"
  '(:build ["./configure" "gmake"]))
(hoarder:register "purcell/elisp-slime-nav")
(hoarder:register "gcr/tumblesocks"
  '(:dependencies ["psanford/emacs-oauth"
                   "jrblevin/markdown-mode"
                   "emacsmirror/htmlize"]
    :tags ["tumblr"]))
(hoarder:register "thomblake/js3-mode"
  '(:tags ["javascript"]))
(hoarder:register "mooz/js2-mode"
  '(:tags ["javascript"]))
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
  '(:tags ["emoji"]))
(hoarder:register "syl20bnr/emacs-emoji-cheat-sheet-plus"
  '(:tags ["emoji"]))
(hoarder:register "antonj/Highlight-Indentation-for-Emacs")
(hoarder:register "mcandre/vimrc-mode" '(:tags ["vim"]))
(hoarder:register "tsdh/iedit")
(hoarder:register "gaudecker/mip-mode")
(hoarder:register "mugijiru/cat-mode")
(hoarder:register "syl20bnr/vi-tilde-fringe"
  '(:tags ["vi"]))
(hoarder:register "jmickelin/vim-empty-lines-mode"
  '(:tags ["vim"]
    :description " Vim-like empty line indicator at end of files for Emacs. "))
(hoarder:register "Fanael/highlight-defined")
(hoarder:register "emacsmirror/hl-defined"
  '(:description "Highlight defined or undefined symbols in Emacs-Lisp"))
(hoarder:register "Bruce-Connor/conkeror-minor-mode")
(hoarder:register "larsmagne/movie.el"
  '(:dependencies ["larsmagne/pvr.el"
                   "larsmagne/imdb.el"]
    :description "http://lars.ingebrigtsen.no/2011/04/12/emacs-movie-browser" ))
;; csid make eww unusable because of dom.el
;; (hoarder:register "larsmagne/csid"
;;                  '(:description "http://lars.ingebrigtsen.no/2013/09/crowdsourcing-is-dead.html"))
(hoarder:register "gregsexton/httprepl.el"
  '(:tags ["http" "repl"]))
(hoarder:register "nicferrier/emacs-twaddle"
  '(:tags ["twitter"]
    :dependencies ["VincentToups/shadchen-el"
                   "nicferrier/emacs-kv"
                   "magnars/dash.el"
                   "nicferrier/emacs-web"
                   "nicferrier/emacs-noflet"
                   "nicferrier/elnode"]))
(hoarder:register "https://gitlab.com/ukaszg/aria2.git"
  '(:tags ["aria2"]))
(hoarder:register "m00natic/eww-lnum"
  '(:tags ["eww"]))
(hoarder:register "yoshiki/yaml-mode")
(hoarder:register "ijp/mbe.el")
(hoarder:register "emacsmirror/info-plus" )
(hoarder:register "hiddenlotus/eshell-prompt-extras"
  '(:tags ["eshell"]))
(hoarder:register "yuutayamada/eshell-better-prompt"
  '(:tags ["eshell"]))
(hoarder:register "syohex/emacs-eshellutil"
  '(:tags ["eshell"]))
(hoarder:register "syohex/emacs-smeargle"
  '(:tags ["git" "highlight"]))
(hoarder:register "syohex/emacs-git-messenger"
  '(:tags ["git"]
    :dependencies ["auto-complete/popup-el"]))
(hoarder:register "abo-abo/ace-link"
  '(:dependencies ["winterTTr/ace-jump-mode"
                   "nicferrier/emacs-noflet"]))
(hoarder:register "kenoss/erfi"
  '(:tags ["scheme" "srfi"]
    :memo "[[http://www.slideshare.net/takeshiokada184/20140511-34538055][XMonad-oid on Emacs & More functional Emacs Lisp | 関数型LT大会]]"))
(hoarder:register "nicferrier/eshell-manual"
  '(:load-path ["dist"]
    :build ["gmake"]
    :info "dist"
    :tags ["eshell"]))
(hoarder:register "jschaf/esup")
(hoarder:register "vermiculus/sx.el"
  '(:dependencies ["jrblevin/markdown-mode"]))
(hoarder:register "nlamirault/emacs-travis"
  '(:dependencies ["magnars/s.el"
                   ("magnars/dash.el" ( :compile nil))
                   ( "lunaryorn/pkg-info.el"
                     (:dependencies ["cask/epl"]))
                   "tkf/emacs-request"]
    :tags ["travis"]))
(hoarder:register "aJchemist/linkmap.el")
(hoarder:register "alezost/mana.el"
  '(:tags ["manaplus"]))
(hoarder:register "ichibeikatura/nipposi")
(hoarder:register "clarete/hackernews.el"
  '(:tags ["hackernews"]))
(hoarder:register "c41x/hnr.el"
  '(:tags ["hackernews"]))
(hoarder:register "kkholst/SuperMan"
  '(:tags ["org"]
    :load-path ["lisp"]))
(hoarder:register "jacksonrayhamilton/context-coloring"
  '(:tags ["javascript"]
    :build ["npm install"]))
(hoarder:register "jeremy-compostella/project-manager"
  '(:tags ["project"]))
(hoarder:register "Fuco1/better-jump"
  '(:tags ["ace-jump"]
    :dependencies ["ShingoFukuyama/ov.el"]))
(hoarder:register "Fuco1/free-keys")
(hoarder:register "Fuco1/banana.el"
  '(:tags ["monad"]))
(hoarder:register "josteink/csharp-mode"
  '(:tags ["C#"]
    :compile nil))
(hoarder:register "sensorflo/sln-mode")
(hoarder:register "Bruce-Connor/camcorder.el"
  '(:tags ["screencast"]
    :dependencies ["Bruce-Connor/names"]))
(hoarder:register "matthewlmcclure/dircmp-mode")
(hoarder:register "agpchil/url-preview.el"
  '(:dependencies [("magnars/dash.el" ( :compile nil))]))
(hoarder:register "emacsfodder/kurecolor"
  '(:dependencies ["magnars/s.el"]))
(hoarder:register "cmpitg/emnode")
(hoarder:register "wasamasa/shackle"
  '(:compile nil))
(hoarder:register "sabof/stripe-buffer")
(hoarder:register "chrisbarrett/skeletor.el"
  '(:build ["gmake"]))
(hoarder:register "promethial/paxedit"
  '(:dependencies ["http://mumble.net/~campbell/git/paredit.git"]))
(hoarder:register "tlh/workgroups.el"
  '(:tags ["window"]))
(hoarder:register "wasamasa/eyebrowse"
  '(:dependencies [("magnars/dash.el" ( :compile nil))]))
(hoarder:register "idomagal/Tabula-Rasa"
  '(:tags ["writing" "distraction free"]))
(hoarder:register "capitaomorte/darkroom"
  '(:tags ["writing" "distraction free"]))
(hoarder:register "vspinu/image-transform"
  '(:tags ["image"]
    :compile nil))
(hoarder:register "gongo/json-reformat"
  '(:tags ["json"]
    :dependencies ["sviridov/undercover.el"]))
(hoarder:register "joshwnj/json-mode"
  '(:tags ["json"]
    :dependencies ["Sterlingg/json-snatcher"
                   "gongo/json-reformat"]))
(hoarder:register "hchbaw/bqlist-lock.el")
(hoarder:register "fgeller/leerzeichen.el"
  '(:tags ["whitespace" "highlight"]))
(hoarder:register "abo-abo/anon"
  '(:tags ["namespace"]))
(hoarder:register "chrisbarrett/emacs-refactor"
  '(:tags ["refactoring"]
    :dependencies [("magnars/dash.el" (:compile nil))
                   "rolandwalker/list-utils"
                   "http://mumble.net/~campbell/git/paredit.git"
                   "auto-complete/popup-el"
                   ("bbatsov/projectile"
                    (:dependencies ["magnars/s.el"
                                    "rejeep/f.el"
                                    ("magnars/dash.el" (:compile nil))
                                    ("lunaryorn/pkg-info.el"
                                     (:dependencies ["cask/epl"]))]))
                   "emacsattic/redshank"
                   "magnars/s.el"]))
(hoarder:register "rakete/pixel-mode"
  '(:tags ["pixel_art"]))
(hoarder:register "yuttie/initchart")
(hoarder:register "bburns/clipmon")
(hoarder:register "purcell/whitespace-cleanup-mode"
  '(:tags ["whitespace"]))
(hoarder:register "emacsmirror/emoticons")
(hoarder:register "zonuexe/pixiv-novel-mode.el")
(hoarder:register "jhgorrell/ssh-config-mode-el"
  '(:tags ["ssh"]))
(hoarder:register "dtaht/comics-el"
  '(:tags ["comic"]))
(hoarder:register "kljohann/clang-format.el"
  '(:tags ["clang"]))
(hoarder:register "saintaardvark/meleme"
  '(:tags ["mode-line"]))
(hoarder:register "10sr/shell-split-string-el"
  '(:tags ["shell"]))
(hoarder:register "kiwanami/emacs-kovlive"
  '(:dependencies ["kiwanami/emacs-deferred"]))
(hoarder:register "ieure/ssh-el"
  '(:tags ["ssh"]))
(hoarder:register "tarsius/hl-todo"
  '(:tags ["highlight" "font-lock"]))
(hoarder:register "ifree/emacs-code-playground")
(hoarder:register "ikirill/hl-indent"
  '(:tags ["highlight" "indentation"]))
(hoarder:register "AeroFengBlade/typewriter-mode")
(hoarder:register "ahyatt/emacs-websocket"
  '(:tags ["websocket"]))
(hoarder:register "syohex/emacs-realtime-markdown-viewer"
  '(:tags ["markdown"]))
(hoarder:register "jscheid/kite")
(hoarder:register "wasamasa/form-feed")
(hoarder:register "emacsmirror/aumix-mode"
  '(:tags ["aumix" "audio"]))
(hoarder:register "kuanyui/writing-utils.el"
  '(:tags ["writing"]))
(hoarder:register "joodland/bm"
  '(:tags ["bookmark"]))
(hoarder:register "mhayashi1120/Emacs-image-archive"
  '(:tags ["image" "archive"]))
(hoarder:register "zk-phi/download-region"
  '(:tags ["download"]
    :description "simple in-buffer download manager for Emacs"))
(hoarder:register "knu/dired-fdclone.el"
  '(:tags ["dired" "fclone"]))
(hoarder:register "Fuco1/dired-hacks")
(hoarder:register "syohex/emacs-literate-coffee-mode"
  '(:dependencies ["defunkt/coffee-mode"]
    :tags ["coffeescript"]))
(hoarder:register "tarsius/elx"
  '(:description "Extract information from Emacs Lisp libraries"))
(hoarder:register "thisirs/state"
  '(:tags ["workspace"]
    :description "Quick navigation between workspaces in emacs"))
(hoarder:register "lunaryorn/fancy-battery.el"
  '(:tags ["appearance" "mode-line"]))
(hoarder:register "csrhodes/iplayer-el"
  '(:tags ["bbc"]
    :description "Emacs interface to the BBC's iPlayer (uses get_iplayer)"))
(hoarder:register "sigma/marshal.el"
  '(:tags ["eieio"]
    :description " eieio extension for automatic (un)marshalling"))
(hoarder:register "zk-phi/phi-grep"
  '(:tags ["grep"]
    :description "Interactively-editable recursive grep implementation in elisp"))
(hoarder:register "tarsius/packed"
  '(:tags ["package"]
    :description "package manager agnostic Emacs Lisp package utilities"))
(hoarder:register "ainame/smart-newline.el"
  '( :site "http://ainame.hateblo.jp/entry/2013/12/08/162032"))
(hoarder:register "xuchunyang/one.el"
  '(:description "Read several news sources within Emacs"))
(hoarder:register "rakete/pixel-mode"
  '(:description "Make pixel art in emacs buffers."
    :tags ["pixel_art"]))
(hoarder:register "bmag/emacs-purpose"
  '(:tags ["workspace"]))
(hoarder:register "ajsquared/env-var-import"
  '(:description "Import shell environment variables in GUI Emacs "))
;; (hoarder:register "emacsmirror/ob-speak"
;;   '(:tags ["org" "espeak" "org-babel"]
;;     :description "espeak speech synthesis for org-babel blocks"))
(hoarder:register "vapniks/syslog-mode"
  '(:tags ["log"]
    :dependencies ["vapniks/hide-lines"]
    :description "Emacs major-mode for viewing log files "))
(hoarder:register "chrisbarrett/skeletor.el"
  '(:description "Powerful project skeletons for Emacs"
    :dependencies ["sviridov/undercover.el"]))
(hoarder:register "steckerhalter/emacs-fasd"
  '(:tags ["fasd"]
    :dependencies ["d11wtq/grizzl"]
    :description "An Emacs extension to integrate Fasd"))
(hoarder:register "steckerhalter/ipretty"
  '(:description "Interactive Emacs Lisp pretty-printing "))
(hoarder:register "tarao/bundle-el"
  '(:tags ["el-get" "package_manager"]))
(hoarder:register "Bruce-Connor/fancy-narrow"
  '(:tags ["narrowing"]))
(hoarder:register "DalekBaldwin/highlight-backquotes-mode"
  '(:tags ["highlight"]))
(hoarder:register "vibhavp/emacs-xkcd"
  '(:tags ["xkcd" "comic"]
    :description "Implementation of an xkcd (http://xkcd.com/) reader for Emacs."))
(hoarder:register "emacsmirror/bytecomp-simplify"
  '(:tags ["bytecomp"]
    :description "byte compile warnings for simplifications"))
(hoarder:register "Lindydancer/lisp-extra-font-lock"
  '(:tags ["highlight"]))
(hoarder:register "xuchunyang/youdao-dictionary.el"
  '(:tags ["chinese"]
    :dependencies ["auto-complete/popup-el"
                   "xuchunyang/chinese-word-at-point.el"]))
(hoarder:register "xuchunyang/google-translate-chinese.el"
  '(:tags ["chinese" "translation"]
    :dependencies ["auto-complete/popup-el"
                   "xuchunyang/chinese-word-at-point.el"]))
(hoarder:register "rolandwalker/unicode-fonts"
  '(:tags ["font" "unicode"]))
(hoarder:register "sanryuu/emacs-bijin-tokei")
(hoarder:register "Benaiah/seethru"
  '(:tags ["appearance" "transparency"]
    :description "seethru.el - easily change Emacs transparency "))
(hoarder:register "russell/elisp-slime-expand"
  '(:tags ["emacs_lisp" "macro"]))
(hoarder:register "tam17aki/summarye")
(hoarder:register "emacsmirror/top-mode"
  '(:tags ["top"]))
(hoarder:register "dbrock/bongo"
  '(:tags ["music" "bongo"]))
(hoarder:register "syohex/emacs-eww-hatebu"
  '(:tags ["eww" "hatena_bookmark"]
    :description "Hatena bookmark count in mode-line"))
(hoarder:register "nlamirault/dionysos"
  '(:tags ["music"]
    :description "A music player for Emacs "))
(hoarder:register "thisirs/vc-check-status"
  '(:tags ["vcs" "git"]))
(hoarder:register "syohex/emacs-gitignore"
  '(:tags ["git" "gitignore"]))
(hoarder:register "fgallina/region-bindings-mode"
  '(:tags ["region"]))
(hoarder:register "zk-phi/jaword"
  '(:tags ["japanese" "movement"]
    :dependencies [("myuhe/tinysegmenter.el"
                    (:tags ["japanese"]))]))
(hoarder:register "xahlee/xah-elisp-mode"
  '(:tags ["emacs-lisp"]))
(hoarder:register "asok/peep-dired"
  '(:tags ["dired"]))
(hoarder:register "jixiuf/dired-filetype-face"
  '(:tags ["dired"]))
(hoarder:register "aaronbieber/sunshine.el"
  '(:tags ["weather" "forecast"]))
(hoarder:register "Dewdrops/visual-ascii-mode"
  '(:tags ["ascii"]))
(hoarder:register "nex3/perspective-el"
  '(:tags ["workspace"]))
(hoarder:register "niku/realtime-preview.el"
  '(:tags ["html" "preview" "markdown"]))
(hoarder:register "zk-phi/symon"
  '(:tags ["system" "monitor"]))
(hoarder:register "wanderlust/wanderlust"
  '(:tags ["mail"]
    :build ["gmake"]
    :dependencies ["wanderlust/flim"
                   "wanderlust/semi"
                   "wanderlust/apel"]))
(hoarder:register "syohex/emacs-itunes-bgm"
  '(:tags ["music" "itunes"]))
(hoarder:register "andyetitmoves/libmpdee"
  '(:tags ["mpd" "music"]))
(hoarder:register "osanai3/eshell-tree"
  '(:tags ["eshell"]))
;; (hoarder:register "nobrowser/dig-browser"
;;   '(:tags ["dig" "dns"]))
(hoarder:register "hagleitn/unicode-emoticons"
  '(:tags ["unicode" "emoticon"]))
(hoarder:register "ryuslash/kaarvok"
  '(:tags ["project" "template"]))
(hoarder:register "bmag/emacs-purpose"
  '(:tags ["window" "layout"]))
;; (hoarder:register "git://git.savannah.gnu.org/tramp.git"
;;   '(:tags ["tramp" "ssh"]
;;     :build ["autoconf" "./configure" "gmake"]
;;     :load-path ["lisp"]
;;     :info "info"))
(hoarder:register "ataka/emacs-wget"
  '(:tags ["wget"]))
(hoarder:register "rmuslimov/browse-at-remote"
  '(:tags ["github" "bitbucket" "git"]
    :dependencies ["magnars/s.el"
                   "rejeep/f.el"]))
(hoarder:register "chillaranand/real-auto-save"
  '(:tags ["autosave"]))
(hoarder:register "kentaro/auto-save-buffers-enhanced")
(hoarder:register "m2ym/compilation-highlight-el")
(hoarder:register "ongaeshi/auto-shell-command"
  '(:dependencies ["kiwanami/emacs-deferred"]
    :description "Run the shell command **asynchronously** that you specified when you save the file."))
(hoarder:register "chumpage/chumpy-windows"
  '(:tags ["window" "layout"]))
(hoarder:register "kljohann/mpv.el"
  '(:dependencies ["Bruce-Connor/names"
                   ( "git://orgmode.org/org-mode.git"
                     (:load-path ["lisp" "contrib/lisp"]
                      :compile nil
                      :build ["gmake cleanall" "gmake" "gmake autoloads" "gmake doc"]
                      :info "doc"
                      :tags ["org"]))]))
(hoarder:register "danielsz/Palimpsest")
(hoarder:register "rolandwalker/ignoramus")
(hoarder:register "anler/centered-window-mode"
  '(:tags ["writing"]))
(hoarder:register "milkypostman/hl-sentence"
  '(:tags ["writing" "reading" "highlight"]))
(hoarder:register "joostkremers/writeroom-mode"
  '(:tags ["writing"]
    :dependencies ["joostkremers/visual-fill-column"]))
(hoarder:register "gongo/emacs-ikku"
  '(:tags ["haiku" "mecab" "japanese"]
    :dependencies ["magnars/dash.el"
                   "sviridov/undercover.el"]))
(hoarder:register "ThibautVerron/echo-sth.el")
(hoarder:register "10sr/git-command-el"
  '(:tags ["git"]))
(hoarder:register "purcell/default-text-scale"
  '(:tags ["font"]))
(hoarder:register "theBlackDragon/fvwm-mode"
  '(:tags ["fvwm"]))
(hoarder:register "tjim/nevermore"
  '(:tags ["mail" "notmuch"]
    :dependencies ["emacsmirror/peg"]))
(hoarder:register "syohex/emacs-import-popwin"
  '(:tags ["popwin"]))
(hoarder:register "johanclaesson/picpocket"
  '(:tags ["image_viewer"]))
(hoarder:register "kakakaya/random-splash-image"
  '(:tags ["splash"]))
(hoarder:register "fgeller/highlight-thing.el"
  '(:tags ["highlight"]))
(hoarder:register "baohaojun/bbyac"
  '(:tags ["completion"]
    :dependencies ["browse-kill-ring/browse-kill-ring"]))
(hoarder:register "jorgenschaefer/emacs-buttercup"
  '(:tags ["testing"]))
(hoarder:register "dgutov/diff-hl"
  '(:tags ["git"]))
(hoarder:register "Bruce-Connor/elisp-bug-hunter")
(hoarder:register "lokedhs/em-translate"
  '(:tags ["google_translate"]
    :dependencies ["emacsmirror/http-post-simple"]))
(hoarder:register "toroidal-code/cycle-themes.el"
  '(:tags ["theme"]))
(hoarder:register "uk-ar/smart-region"
  '(:tags ["region" "mark"]
    :dependencies ["magnars/expand-region.el"
                   "magnars/multiple-cursors.el"]))
(hoarder:register "sellout/emacs-unimode"
  '(:tags ["unicode" "mode-line"]))
(hoarder:register "tuhdo/semantic-refactor"
  '(:tags ["refactoring" "format"]))
(hoarder:register "momomo5717/emms-player-mpv-jp-radios"
  '(:tags ["radio" "emms" "mpv"]))
(hoarder:register "momomo5717/emms-player-simple-mpv"
  '(:tags ["emms" "mpv"]))
(hoarder:register  "wasamasa/firestarter")
(hoarder:register "myTerminal/theme-looper"
  '(:tags ["theme"]))
(hoarder:register "djcb/sauron")
;; (hoarder:register "nschum/highlight-parentheses.el")
(hoarder:register "tsdh/highlight-parentheses.el")
(hoarder:register "jordonbiondo/column-enforce-mode")
(hoarder:register "wasamasa/svg-2048"
  '(:dependencies [("tali713/esxml"
                    :memo "[[http://emacsninja.com/posts/parsing-the-hard-way.html][Emacs Ninja - Parsing the Hard Way]]")]))
(hoarder:register "abo-abo/avy")
(hoarder:register "marcowahl/emacsshot"
  '(:tags ["screenshot"]))
(hoarder:register "n8willis/fontfile-modes"
  '(:tags ["font"]))
(hoarder:register "atheriel/splash-buffer.el"
  '(:tags ["splash"]))
(hoarder:register "rejeep/jq.el"
  '(:tags ["json" "jq"]))
(hoarder:register "Fuco1/autobookmarks"
  '(:dependencies ["magnars/dash.el"
                   "emacsmirror/bookmark-plus"]
    :tags ["recentf" "bookmark"]))
(hoarder:register "larstvei/Focus"
  '(:tags ["highlight" "narrowing"]))
(hoarder:register "thieman/soundcloud.el"
  '(:tags ["music" "soundcloud"]
    :dependencies ["kiwanami/emacs-deferred"
                   "rolandwalker/string-utils"
                   "tkf/emacs-request"]))
(hoarder:register "emacsmirror/longlines-jp")
(hoarder:register "zonuexe/emoji-fontset.el"
  '(:tags ["font" "emoji" "unicode"]))
(hoarder:register "purcell/exec-path-from-shell")
(hoarder:register "gongo/emacs-gimei"
  '(:tags ["japanese"]))
(hoarder:register "emacs-pe/ssh-modes"
  '(:tags ["ssh"]))
(hoarder:register "sensorflo/adoc-mode"
  '(:tags ["asciidoc"]
    :dependencies ["sensorflo/markup-faces"]))
(hoarder:register "syohex/emacs-fontawesome"
  '(:tags ["font" "fontawesome" "icon"]))
(hoarder:register "zweifisch/ob-http"
  '(:tags ["org" "http"]))
(hoarder:register "bastibe/annotate.el"
  '(:tags ["annotation" "note" "memo" "text-property"]))
(hoarder:register "emacsmirror/csv-mode"
  '(:tags ["csv"]))
(hoarder:register "nicferrier/creole-mode")
(hoarder:register "thierryvolpiatto/psession"
  '(:tags ["history" "session"]))
(hoarder:register "justbur/emacs-which-key"
  '(:tags ["guide-key"]
    :dependencies ["magnars/s.el"
                   "m2ym/popwin-el"]))
(hoarder:register "gongo/shimapan.el")
(hoarder:register "lewang/ws-butler"
  '(:tags ["whitespace" "cleanup"]))
(hoarder:register "Fuco1/letcheck"
  '(:tags ["convinience" "syntax_check"]))
(hoarder:register "k-talo/volatile-highlights.el"
  '(:tags ["highlight" "feedback" "undo" "paste"]))
(hoarder:register "KeenS/stylefmt.el"
  '(:tags ["css"]))
(hoarder:register "mutbuerger/not-from-scratch"
  '(:tags ["scratch"]))
(hoarder:register "Levenson/dictionary"
  '(:tags ["dictionary" "english"]))
(hoarder:register "leoliu/sokoban"
  '(:tags ["game" "sokoban"]))
(hoarder:register "stevenremot/roguel-ike"
  '(:tags ["game" "rogue"]))
(hoarder:register "emacsattic/elite"
  '(:tags ["elite" "game"]))
(hoarder:register "eschulte/shen-mode"
  '(:tags ["shen" "language" "pattern_match"]))
(hoarder:register "wasamasa/retris"
  '(:tags ["game" "tetris"]))
(hoarder:register "dbordak/telephone-line"
  '(:tags ["powerline" "mode-line"]))
(hoarder:register "neomantic/helm-rubygems-org"
  '(:tags ["ruby" "rubygems" "helm"]))
(hoarder:register "ruediger/weather-metno-el"
  '(:tags ["weather"]))
(hoarder:register "myuhe/quick-preview.el"
  '(:tags ["preview" "sushi" "quick-look"]))
(hoarder:register "zonuexe/vim-filetype.el"
  '(:tags ["vim" "filetype"]))
(hoarder:register "ryuslash/git-auto-commit-mode"
  '(:tags ["git" "auto_commit"]))
(hoarder:register "dnaumov/midje-mode"
  '(:tags ["clojure" "test"]))
(hoarder:register "emacsattic/cparen"
  '(:tags ["scheme"]))
(hoarder:register "steventlamb/yatt.el"
  '(:tags ["tea" "timer"]))
(hoarder:register "joelmccracken/elisp-sandbox"
  '(:tags ["emacs_lisp"]
    :description  "Evaluate EmacsLisp expressions in a sandbox"))
(hoarder:register "liblit/flycheck-status-emoji"
  '(:tags ["flycheck" "test" "emoji"]
    :description "Summary: Show flycheck status using cute, compact emoji"))
(hoarder:register "kbauer/subemacs"
  '(:tags ["emacs_lisp"]
    :description "Evaluating expressions in a fresh Emacs subprocess"))
(hoarder:register "Malabarba/Nameless")
(hoarder:register "xuchunyang/eshell-did-you-mean"
  '(:tags ["eshell"]))
(hoarder:register "tonini/alchemist.el"
  '(:tags ["elixir"]
    :dependencies ["elixir-lang/emacs-elixir"
                   "magnars/dash.el"
                   "company-mode/company-mode"]))
(hoarder:register "elixir-lang/emacs-elixir"
  '(:tags ["elixir" "erlang"]))
(hoarder:register "gromnitsky/wordnut"
  '(:tags ["wordnet" "language" "english"]))
;; (hoarder:register "erlang/otp"
;;   '(:tags ["erlang" "otp"]
;;     :load-path "lib/tools/emacs"))
(hoarder:register "emacsmirror/sml-mode"
  '(:tags ["language" "Standard ML"]))
(hoarder:register "osener/github-browse-file"
  '(:tags ["git" "github"]))
(hoarder:register "mrkkrp/cyphejor"
  '(:tags ["diminish" "mode-line"]))
(hoarder:register "NicolasPetton/stream"
  '(:tags ["stream" "data"]))
(hoarder:register "dimitri/el-get"
  '(:tags ["el-get" "package"]))
(hoarder:register "eludom/org-babel-git-utils"
  '(:tags ["org" "babel" "git"]))
(hoarder:register "Malabarba/beacon")
(hoarder:register "knl/name-this-color.el"
  '(:tags ["colour"]))
(hoarder:register "Lindydancer/font-lock-studio"
  '(:tags ["font-lock" "highlight" "syntax"]))
(hoarder:register "michael-heerdegen/on-screen.el")
(hoarder:register "samisalkosuo/elite-for-emacs"
  '(:tags ["game" "elite"]))
(hoarder:register "death/reddit-mode"
  '(:tags ["reddit"]))
(hoarder:register "iqbalansari/emacs-emojify"
  '(:tags ["emoji"]))
(hoarder:register "wasamasa/zone-nyan"
  '(:tags ["nyancat" "zone" "eshell"]))
(hoarder:register "ilya-babanov/emacs-bpr"
  '(:tags ["process"]))
(hoarder:register "jwiegley/emacs-pl"
  '(:tags ["haskell" "parser"]))
(hoarder:register "jwiegley/alert"
  '(:tags ["notification" "growl"]
    :dependencies ["aki2o/log4e"]))
(hoarder:register "iquiw/hyai"
  '(:tags ["haskell" "indentation"]))
(hoarder:register "xuchunyang/github-notifier.el"
  '(:tags ["github" "mode-line"]))
(hoarder:register "xuchunyang/region-state.el"
  '(:tags ["region"]))
(hoarder:register "xuchunyang/eshell-z"
  '(:tags ["eshell" "z"]))
;; (hoarder:register "travisjeffery/eshell-z.el"
;;   '(:tags ["eshell" "z" "autojump"]))
(hoarder:register "tom-tan/esh-buf-stack"
  '(:tags ["eshell" "zsh"]))
(hoarder:register "Simplify/flycheck-css-colorguard"
  '(:tags ["flycheck" "css" "colorguard"
           "syntax_checking"]))
(hoarder:register "febuiles/tumble"
  '(:tags ["tumblr"]))
(hoarder:register "emacsmirror/highlight-tail"
  '(:tags ["highlight"]))
(hoarder:register "rbanffy/selectric-mode"
  '(:tags ["sound" "typewriter"]))
(hoarder:register "nicferrier/emacs-proc-net"
  '(:tags ["network" "process"]))
(hoarder:register "auto-complete/auto-complete"
  '(:tags ["completion"]
    :dependencies ["auto-complete/fuzzy-el"
                   "auto-complete/popup-el"]))
(hoarder:register "syohex/emacs-ac-capf"
  '(:tags ["completion" "auto-complete"]))
(hoarder:register "syohex/emacs-ac-emoji"
  '(:tags ["completion" "auto-complete" "emoji"]))
(hoarder:register "myuhe/ac-skk.el"
  '(:tags ["completion" "auto-complete" "skk"]
    :dependencies ["myuhe/tinysegmenter.el"]))
(hoarder:register "aki2o/org-ac"
  '(:tags ["completion" "auto-complete" "org-mode"]
    :dependencies ["aki2o/auto-complete-pcmp"
                   "aki2o/log4e"
                   "aki2o/yaxception"]))
(hoarder:register "mrBliss/highlight-leading-spaces"
  '(:tags ["highlight" "whitespace" "indent"]))
(hoarder:register "johanvts/emacs-fireplace"
  '(:tags ["animation"]))
(hoarder:register "alezost/dim.el")
(hoarder:register "atomontage/xterm-color"
  '(:tags ["color" "xterm" "ansi" "escape_sequence"]))
(hoarder:register "noctuid/link-hint.el"
  '(:tags ["avy" "ace_jump" "link" "hint"]))
(hoarder:register "pierre-lecocq/bonjourmadame")
(hoarder:register "thierryvolpiatto/zop-to-char")
(hoarder:register "kawabata/zone-rainbow")
(hoarder:register "parkeristyping/party-mode")
(hoarder:register "mhayashi1120/Emacs-erefactor"
  '(:tags ["emacs-lisp" "lint" "elint" "refactoring"]))
(hoarder:register "jcollard/elm-mode"
  '(:tags ["elm" "language" "haskell"]))
(hoarder:register "EricCrosson/unkillable-scratch")
(hoarder:register "ryuslash/mode-icons"
  '(:tags ["mode-line" "emoji" "icon"]))
(hoarder:register "mrkkrp/char-menu"
  '(:tags ["unicode"]
    :dependencies ["mrkkrp/avy-menu"]))
(hoarder:register "bbatsov/super-save"
  '(:tags ["auto-save"]))
(hoarder:register "kuanyui/tldr.el"
  '(:tags ["tldr" "man" "document"]))
(hoarder:register "tj64/ert-buffer-report"
  '(:tags ["ert" "org-mode"]))

(hoarder:register "capitaomorte/yasnippet"
  '(:tags ["snippet"]
    :recursive t))
(hoarder:register "mineo/yatemplate"
  '(:tags ["yasnippet" "template" "autoinsert"]
    :dependencies ["capitaomorte/yasnippet"]))
(hoarder:register "legoscia/cabledolphin"
  '(:tags ["wireshark" "packet" "network"]))
(hoarder:register "syohex/emacs-ac-shell"
  '(:tags ["auto-complete" "shell"]))
(hoarder:register "idris-hackers/idris-mode"
  '(:tags ["haskell" "idris"]
    :dependencies ["david-christiansen/prop-menu-el"]))
(hoarder:register "xuchunyang/eshell-git-prompt"
  '(:tags ["eshell" "prompt" "git"]))
(hoarder:register "noctuid/general.el"
  '(:tags ["keybinding" "evil"]))
(hoarder:register "zonuexe/aa-edit-mode"
  '(:tags ["ascii_art" ]))
(hoarder:register "ryuslash/eshell-fringe-status"
  '(:tags ["eshell"]))
(hoarder:register "emacsattic/mic-paren"
  '(:description "Advanced highlighting of matching parentheses"))
(hoarder:register "skyer9/ac-kill-ring"
  '(:tags ["auto-complete" "kill-ring"]))
(hoarder:register "ocaml/tuareg"
  '(:tags ["ocaml"]))
(hoarder:register "nixos/nix-mode"
  '(:description "An Emacs major mode for editing Nix expressions."
    :tags ["emacs" "major-mode" "nix" "nixpkgs" "syntax-highlighting"]))
(hoarder:register "ralesi/ranger.el")
(hoarder:register "https://bitbucket.org/inigoserna/per-buffer-theme.el"
  '(:type :hg))
(hoarder:register "tehom/elisp-depend"
  '(:tags ["emacs-lisp"]))
(hoarder:register "konzeptual/tea-time")
(hoarder:register "LouisKottmann/zygospore.el")
(hoarder:register "apg/unipoint"
  '(:tags ["math" "unicode"]))
(hoarder:register "hitode909/emacs-highlight-unique-symbol"
  '(:tags ["highlight" "symbol"]))
(hoarder:register "ananthakumaran/monky"
  '(:tags ["hg" "mercurial" "magit"]))
(hoarder:register "sabof/magic-buffer")
(hoarder:register "sabof/edit-color-stamp"
  '(:build ["cd qt_color_picker"
            "qmake-qt4 qt_color_picker.pro"
            "gmake"]
    :dependencies ["sabof/es-lib"]))
(hoarder:register "cestdiego/c-c-combo.el"
  '(:tags ["sound"]))
(hoarder:register "abo-abo/hydra")
(hoarder:register "mrkkrp/para"
  '(:tags ["paredit" "smartparens"]))
(hoarder:register "ikazuhiro/emoji-display"
  '(:tags ["emoji"]))
;; (hoarder:register "NicolasPetton/seq.el")
(hoarder:register "rolandwalker/hardhat")
(hoarder:register "aaron-em/niceify-info.el"
  '(:tags ["info"]))
(hoarder:register "ALSchwalm/power-mode.el")
(hoarder:register "https://gitlab.com/RobertCochran/neato-graph-bar.git"
  '(:tags ["cpu" "memory" "monitor"]))
(hoarder:register "emacscollective/epkg"
  '(:tags ["emacsmirror" "package" "archive"]
    :dependencies ["emacscollective/closql"
                   "skeeto/emacsql"
                   "skeeto/elisp-finalize"]))
(hoarder:register "akrito/acme-mouse"
  '(:tags ["plan9" "acme"]))
(hoarder:register "afainer/arview"
  '(:tags ["archive" ]))
(hoarder:register "thomp/datclip"
  '(:tags ["clipboard" "x11" "xclip"]))
(hoarder:register "chrisbarrett/ert-modeline"
  '(tag ["ert" "test" "modeline"]))
(hoarder:register "lujun9972/uimage"
  '(:tags ["image" "link" "display"]))
(hoarder:register "Malabarba/validate.el"
  '(:tags ["schema" "validation"]))
(hoarder:register "hl-anything/hl-anything-emacs"
  '(:tags ["highlight"]))
(hoarder:register "Kungsgeten/yankpad"
  '(:tags ["snippet" "yasnippet" "org"]))
(hoarder:register "hatschipuh/helm-better-defaults"
  '(:tags ["helm" "configuration"]))
(hoarder:register "yuya373/emacs-dwm"
  '(:tags ["dwm" "window_management"]))
(hoarder:register "lujun9972/verify-url")
(hoarder:register "lujun9972/el-start-menu")
(hoarder:register "gizmomogwai/org-kanban"
  '(:tags ["org-mode" "kanban" "pomodoro"]))
(hoarder:register "hinrik/perl6-mode"
  '(:tags ["perl6"]))
(hoarder:register "Malabarba/emacs-google-this"
  '(:tags ["google" "search"]))
(hoarder:register "egison/egison"
  '(:load-path ["elisp"]))
(hoarder:register "mola-T/spu"
  '(:tags ["package" "elpa"]
    :dependencies ["mola-T/signal"
                   "mola-T/timp"
                   "mola-T/fifo-class"]))
(hoarder:register "TsubasaWp/Emoticon"
  '(:tags ["emoticon"]))
(hoarder:register "zzkt/quiet"
  '(:tags ["distraction_free" "multi_tasking"]
    :description " Mihaly Csikszentmihályi (1990). Flow: The Psychology of Optimal Experience. Harper & Row. ISBN 9780060162535
    The Myth of Monotasking. https://hbr.org/2011/11/the-myth-of-monotasking/ "))
;; (hoarder:register "papaeye/emacs-jscs"
;;                   '(:tags ["language" "javascript" "jscs" "format"]
;;                     :dependencies (("papaeye/go-mode.el"
;;                                (:tags ["langfmt"])))))

(hoarder:fetch"politza/pdf-tools"
  '(:tags ["pdf"]
    :build ["gmake -s zlib_CFLAGS='-lz -L/usr/lib'  zlib_LIBS='-lz -L/usr/lib'"
            "gmake install-package"]
    ;; :load-path ["lisp"]
    ))
;; (hoarder:register "http://git.chise.org/git/elisp/flim.git"
;;                  '(:tags ["flim" "luna"]))
(hoarder:fetch "tetracat/emacsrepl"
  '(:tags ["emacs" "repl"]))
(hoarder:register "zonuexe/right-click-context"
  '(:tags ["mouse"]))
(hoarder:register "ahungry/baby-gnu")
(hoarder:fetch "xuchunyang/epm"
  '(:tags ["elpa" "emacs" "package_manager"]))
(hoarder:register "netromdk/annotate-depth")
(hoarder:register "NicolasPetton/xref-js2"
  '(:tags ["xref" "javascript"]))
(hoarder:register "cosmicexplorer/f3"
  '(:tags ["helm"]))
(hoarder:register "ankurdave/color-identifiers-mode")
(hoarder:register "doublep/logview"
  '(:dependencies ["doublep/datetime"]))
(hoarder:fetch "git://git.sv.gnu.org/hook-helpers-el.git"
  '(:tags ["hook"]))
(hoarder:register "http://www.rupert-lane.org/inform-mode/inform-mode.git"
  '(:tags ["game" "inform" "z-code" "z-machine" "interactive_fiction"]))
(hoarder:register "bloat/emacs-glulx"
  '(:tags ["game" "inform" "z-machine" "glulx" "glk"]
    :load-path ["src" "glk/src"]))
(hoarder:register "alezost/ducpel"
  '(:tags ["game" "sokoban"]))
(hoarder:register "emacsmirror/random-idle-quote")
(hoarder:register "https://gist.github.com/dto/4112806.git"
  '(:tags ["rougelike" "game"]))
(hoarder:register "killdash9/tron.el"
  '(:tags ["game" "TRON"]))
(hoarder:register "https://gitlab.com/fommil/elisp-fmt.git")
(hoarder:register "ksjogo/mini-header-line"
  '(:tags ["header-line"]))
(hoarder:register "tarsius/no-littering")
(hoarder:register "davep/festival.el"
  '(:tags ["festival" "audio" "synthesis"]
    :memo "[[https://www.emacswiki.org/emacs/festival.el][EmacsWiki: festival.el]]"))
(hoarder:register "aaronbieber/tiny-menu.el")
(hoarder:register "rlupton20/sshman"
  '(:tags ["ssh" "term"]))
(hoarder:register "theBlackDragon/fvwm-mode")
(hoarder:register "myrkr/dictionary-el"
  '(:tags ["dictionary" "english"]))
(hoarder:register "mrkkrp/common-lisp-snippets"
  '(:tags ["yasnippet" "common-lisp"]))
(hoarder:register "bcbcarl/emacs-wttrin"
  '(:tags ["weather" "wttr.in"]))
(hoarder:register "nqpz/emacs-reaction-sounds"
  '(:tags ["sound"]))
(hoarder:register "syohex/emacs-octicons"
  '(:tags ["emoji" "github" "octicon" "unicode" "icon"]))
(hoarder:register "akatov/pretty-mode"
  '(:tags ["unicode" "prettify" "symbol"]))
(hoarder:register "purcell/disable-mouse"
  '(:tags ["mouse"]))
(hoarder:register "rejeep/handoff.el"
  '(:tags ["mouse"]))
(hoarder:register "azagoruyko/keep-temp-buffers"
  '(:description "Save and load buffers automatically."))
(hoarder:register "k2052/moonscript-mode"
  '(:tags ["moonscript" "lua"]))
(hoarder:register "MaokaiLin/node-ac"
  '(:tags ["node" "javascript" "auto-complete"]))
(hoarder:register "hiddenlotus/pcmpl-homebrew"
  '(:tags ["eshell" "pcomplete" "homebrew" "macOS"]))
(hoarder:register "bashrc/gnu-social-mode"
  '(:tags ["gnu_social" "twitter" "quitter.se" "gnu" "sns"]))
(hoarder:register "larsmagne/meme"
  '(:tags ["meme" "svg" "image"]))
(hoarder:register "NOBUTOKA/niconama.el"
  '(:tags ["niconico" "niconame" "comment_viewer"]))
(hoarder:register "zonuexe/pandoc.el"
  '(:tags ["pandoc" "eww" "ms_word" "epub" "docx" "markdown" "org-mode"]))
(hoarder:register "joddie/macrostep"
  '(:tags ["macro" "debugger" "debug"]))
(hoarder:register "larsmagne/imgur.el"
  '(:tags ["imgur" "api" "upload"]))
;; (hoarder:register "myuhe/imgur.el"
;;   '(:tags ["imgur" "anything"]))
(hoarder:register "kuangdash/org-iv"
  '(:tags ["org-mode" "html" "preview"]
    :dependencies ["netguy204/imp.el"]))
(hoarder:register "zonuexe/interface-detector"
  '(:tags ["helm" "ido" "anything" "ivy" "counsel"]))
(hoarder:register "syohex/emacs-sound-wav"
  '(:tags ["sound" "wav"]))
(hoarder:register "swflint/pushover.el"
  '(:tags ["notification"]))
(hoarder:register "ajsquared/env-var-import"
  '(:tags ["shell" "environment_variable"]))
(hoarder:register "juergenhoetzel/babel"
  '(:tags ["translation"]))
(hoarder:register "cjohansson/emacs-ssh-deploy"
  '(:tags ["ssh" "deploy"]))
(hoarder:register "https://bitbucket.org/shackra/font-man.git"
  '(:tags ["font"]
    :dependencies ["10sr/switch-buffer-functions-el"]))
(hoarder:register "michael-heerdegen/interaction-log.el")
(hoarder:register "emacsmirror/srfi"
  '(:tags ["scheme" "srfi" "document" "reference"]))
(hoarder:register "atykhonov/escr"
  '(:tags ["screenshot"]))
(hoarder:register "cute-jumper/parsec.el"
  '(:tags ["haskell" "parsec" "parser"]))
(hoarder:register "yuutayamada/contrast-color-el"
  '(:tags ["material_design" "color_palette" "colorscheme"]))
(hoarder:register "uemurax/uzbl-manager.el"
  '(:tags ["uzbl" "browser"]))
(hoarder:register "justbur/emacs-vdiff"
  '(:tags ["diff" "vimdiff" "evil"]))
(hoarder:register "http://git.savannah.gnu.org/r/delight.git"
  '(:tags ["diminsh" "mode-line"]
    :site "https://www.emacswiki.org/emacs/DelightedModes"))
(hoarder:register "emacsmirror/multi-eshell"
  '(:tags ["eshell"]))
(hoarder:register "technomancy/lein.el"
  '(:tags ["eshell" "clojure" "leiningen"]))
(hoarder:register "PuercoPop/nyan-prompt"
  '(:tags ["eshell" "prompt" "nyancat"]))
(hoarder:register "osanai3/eshell-git"
  '(:tags ["eshell" "git"]))
(hoarder:register "shushuang/honey-eshell"
  '(:tags ["eshell"]))
(hoarder:register "osanai3/eshell-tree"
  '(:tags ["eshell"]))
(hoarder:register "kozikow/eshell-notify"
  '(:tags ["eshell" "notification"]))
(hoarder:register "emacsattic/lein"
  '(:tags ["eshell" "clojure" "leiningen"]))
(hoarder:register "tom-tan/esh-help"
  '(:tags ["eshell"]))
(hoarder:register "akicho8/ecd"
  '(:tags ["eshell"]))
(hoarder:register "emacsattic/em-zle"
  '(:tags ["eshell" "zsh" "zle"]))
(hoarder:fetch "lujun9972/el-todo"
  '(:tags ["eshell" "script" "todo"]))
(hoarder:register "aaron-em/nethack-luck.el"
  '(:tags ["eshell" "nethack" "fortune"]))
(hoarder:register "heow/fpl-moo"
  '(:tags ["moo" "mud" "lambdamoo"]))
(hoarder:register "dpom/ent"
  '(:tags ["emacs" "build" "ant"]))
(hoarder:register "czipperz/elisp-type-lint"
  '(:tags ["type" "type_check" "linter"]))
(hoarder:register "bdc34/helm-taskswitch"
  '(:tags ["helm" "x11" "desktop" "window" "wmctrl"]
    :dependencies ["flexibeast/ewmctrl"]))
(hoarder:register "flexibeast/ewmctrl"
  '(:tags ["wmctrl"]))
(hoarder:register "gongo/pokemon-emacs")
(hoarder:register "git://git.sv.gnu.org/so-long.git")
(hoarder:register "Xaldew/vs-comment-el"
  '(:tags ["highlight" "comment" "visual_studio"]))
(hoarder:register "tuhdo/xwidgete"
  '(:tags ["xwidget" "gtk" "webkit"]))
(hoarder:register "punchagan/html-preview"
  '(:tags ["html" "preview" "webkit" "xwidget"]))
(hoarder:register "dryman/toml-mode.el"
  '(:tags ["toml"]))
(hoarder:register "domtronn/all-the-icons.el"
  '(:tags ["icon" "font"]
    :dependencies ["emacsmirror/font-lock-plus"
                   "skeeto/emacs-memoize"]))
(hoarder:fetch"domtronn/all-the-icons.el.wiki"
  '(:tags ["emacs" "icon" "font"]))
(hoarder:register "emacs-pe/lyrics.el"
  '(:tags ["music" "lyric"]))
(hoarder:register "Fuco1/blablabla"
  '(:tags ["lightable"]))
(hoarder:register "https://bitbucket.org/jpkotta/openwith"
  '(:type :hg))
(hoarder:register "SebastianRose/org-osm"
  '(:tags ["org-mode" "osm" "map"]))
(hoarder:register "AndreaCrotti/yasnippet-snippets"
  '(:tags ["snippet" "yasnippet"]))
(hoarder:register "tumashu/exwm-x"
  '(:tags ["exwm"]))
(hoarder:register "hassy/http-twiddle"
  '(:tags ["http"]))
(hoarder:register "porterjamesj/virtualenvwrapper.el"
  '(:tags ["virtualenv" "virtualenvwrapper" "python"]))
(hoarder:register "tomterl/fullframe"
  '(:tags ["fullscreen" "fullframe"]))
(hoarder:register "KenetJervet/emacs-bad-apple")
(hoarder:register "gromnitsky/read-aloud.el"
  '(:tags ["speech-dispatcher" "festival" "flite"]))
(hoarder:register "https://gitlab.com/dto/elo.git"
  '(:description "elo: simple project scripting for emacs"))
(hoarder:register "nlamirault/emacs-gitlab"
  '(:tags ["gitlab"]))
(hoarder:fetch "sverrejoh/emacs-torrent ")
(hoarder:register "ieure/uuid-el"
  '(:tags ["uuid" "id"]))
(hoarder:register "troyp/ls.el"
  '(:tags ["dash" "list" "cl"]
    :dependencies ["magnars/dash.el"]))
(hoarder:register "troyp/fn.el"
  '(:tags ["functional_programming" "dash"]))
(hoarder:fetch "rhoit/powerline-iconic-theme"
  '(:tags ["icon" "powerline"]))
(hoarder:register "mugijiru/lupin-title")
(hoarder:register "emacsmirror/lispxmp")
(hoarder:fetch "exercism/xelisp"
  '(:tags ["exercise" "exercism" "emacs" "emacs_lisp"]))
(hoarder:register "Wilfred/loop.el"
  '(:tags ["loop" "emacs" "utility"]))
(hoarder:register "Malabarba/threads-list-mode")
(hoarder:register "orgcandman/pcap-mode"
  '(:tags ["wireshark" "pcap" "packet_capture"]))
(hoarder:register "https://bitbucket.org/adamsmd/digit-groups"
  '(:type :hg))
(hoarder:register "syohex/emacs-pcre"
  '(:tags ["emacs_module" "pcre" "regex"]))
(hoarder:register "GuiltyDolphin/hook"
  '(:tags ["hook"]))
(hoarder:register "atheriel/splash-buffer.el"
  '(:tags ["scratch" "splash" "spacemacs"]))
(hoarder:register "vapniks/regex-collection"
  '(:tags ["regex" ]))
(hoarder:fetch "emacsattic/emhacks")
(hoarder:register "ieure/spite"
  '(:description " Emacs Lisp REPL for interacting with web services"
    :tags ["api" "repl"]))
(hoarder:register "bogolisk/leo"
  '(:tags ["oop" "clso" "class"]))
(hoarder:register "https://gitlab.com/tarsius/glab"
  '(:type :git
    :tags ["gitlab"]))
(hoarder:register "bddean/emacs-ereader"
  '(:description "Epub reader for emacs with org-mode integration"
    :tags ["epub" "ebook" "org-mode"] 
    :dependencies ["bddean/xml-plus"] ))
(hoarder:register "mrhmouse/rc-mode.el"
  '(:tags ["shell" "syntax" "plan9" "rc"]))
(hoarder:register "tarsius/dim-autoload")
(hoarder:register "francisco-colaco/xdg-directories-el"
  '(:tags ["xdg" "freedesktop" "configuration"]))
(hoarder:register "pmiddend/emacs-rtm"
  '(:tags ["remember_the_milk"]))
(hoarder:register "xuchunyang/gitter.el"
  '(:tags ["gitter"]))
(hoarder:register "emacsmirror/flash-paren"
  '(:tags ["parenthesis" "highlghit"]))
(hoarder:register "atykhonov/emacs-netspeak"
  '(:tags ["english"]
    :site "http://www.netspeak.org/"))
(hoarder:register "tashrifsanil/org-easy-img-insert")
(hoarder:register "FrancisMurillo/transducer.el"
  '(:tags ["emacs" "clojure" "tranceducer" "reduce"]))
(hoarder:register "hober/html5-el"
  '(:tags ["html" "html5"]
    :site "http://tess.oconnor.cx/elisp/"))
(hoarder:register "emacsmirror/scrape"
  '(:tags ["scraping" "web" "html"]
    :site "http://tess.oconnor.cx/elisp/"))
(hoarder:register "jaypei/emacs-neotree"
  '(:tags ["file" "browser"]))
(hoarder:register "emacsmirror/adaptive-wrap")
(hoarder:register "luque/emacs-giphy")
(hoarder:register "deepadhurka/idutils")
(hoarder:register "vermiculus/magithub"
  '(:tags ["magit" "git" "github"]
    :dependencies ["tarsius/ghub"
                   "vermiculus/ghub-plus"]))
(hoarder:register "jml/direnv-el"
  '(:tags ["direnv" "dotenv" "enviroment_variable" "configuration" "shell"]))
(hoarder:register "coldnew/pangu-spacing"
  '(:tags ["chinese" "english"]))
(hoarder:register "https://gitlab.com/dustyweb/soci-el.git"
  '(:tags ["web" "activitypub" "jsonld"]))
(hoarder:register "hrs/engine-mode"
  '(:tags ["google" "search_engine" "web"]))
(hoarder:register "leoliu/id3"
  '(:tags ["mp3" "tag" "id3" "music" "parser"]
    :memo "[[https://lars.ingebrigtsen.no/2015/04/22/emacs-and-id3/][Emacs and id3 – Random Thoughts]]"))
(hoarder:fetch "flycheck/emacs-travis"
  '(:tags ["travis-ci" "emacs"]))
(hoarder:register "Malabarba/speed-of-thought-lisp")
(hoarder:register "fourier/ztree"
  '(:tags ["file_manager" "dired"]))
(hoarder:register "xahlee/xah-find"
  '(:tags ["find" "grep"]))
(hoarder:register "paul-issartel/nnreddit"
  '(:tags ["reddit" "gnus"]))
(hoarder:register "jwiegley/use-package")
(hoarder:register "emacsmirror/el-search")
(hoarder:register "Wilfred/elisp-refs.el")
(hoarder:register "lujun9972/podcaster"
  '(:tags ["podcast" "rss" "feed"]))
(hoarder:register "Alexander-Miller/treemacs"
  '(:tags ["neotree"]
    :dependencies ["Alexander-Miller/pfuture"
                   ("magnars/dash.el" ( :compile nil))
                   "rejeep/f.el"
                   "magnars/s.el"
                   "abo-abo/ace-window"
                   "deb0ch/emacs-winum"]))
(hoarder:register "emacs-jp/japanese-holidays"
  '(:tags ["calendar"]))
(hoarder:register "emacsfodder/html-entities-helper")
(hoarder:register "yati-sagade/orch"
  '(:tags ["org-mode" "android"]))
(hoarder:register "liangzan/frame-tag.el"
  '(:description "binds M-1 to M-9 to the emacs frame to allow fast switching"
    :tags ["frame"]))
(hoarder:register "llvilanova/info-buffer"
  '(:description "Display info topics on separate buffers"
    :tags ["info"]))
(hoarder:register "andschwa/fortune-cookie"
  '(:description "Print a fortune in your Emacs scratch buffer"))
(hoarder:register "katspaugh/kuromoji.el"
  '(:description "黒文字のEmacsプラグインです"
    :tags ["japanese" "kuromoji"]))
(hoarder:register "darksmile/cheatsheet") 
(hoarder:register "stardiviner/eldoc-overlay-mode"
  '(:description "display eldoc doc with contextual documentation overlay for easy to look."
    :dependencies ["stardiviner/inline-docs.el"]))
(hoarder:fetch "leoliu/pcmpl-git-el"
  '(:description "Emacs pcomplete for git"
    :tags ["git" "pcomplete"]))


(hoarder:register "rejeep/commander.el"
  '(:tags ["cli" "command" "option" "parse"]))
(hoarder:register "emacsmirror/font-lock-plus")
(hoarder:register "alphapapa/mosey.el")
(hoarder:register "alezost/mwim.el")
(hoarder:register "ejmr/php-mode")
(hoarder:register "fukamachi/kindly-mode"
  '(:tags ["kindle"]))
(hoarder:register "TheBB/spaceline"
  '(:tags ["mode-line" "spacemacs" "powerline"]
    :dependencies ["milkypostman/powerline"]))
(hoarder:register "tarsius/auto-compile"
  '(:tags ["compile"]))
(hoarder:register "swannodette/clojure-snippets"
  '(:tags ["clojure" "snippet" "yasnippet"]))
(hoarder:fetch "https://bitbucket.org/shackra/secretaria.el.git"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/56l1z2/can_the_community_review_my_package_secretariael/][Too Many Requests]]"
    :tags ["org"]))
(hoarder:register "spiderbit/kodi-remote.el"
  '(:tags ["kodi"]))
(hoarder:register "nschum/window-numbering.el")
(hoarder:register "kshramt/company-ngram")
(hoarder:register "Yuki-Inoue/tblui.el"
  '(:dependencies ["politza/tablist"]))
(hoarder:register "abo-abo/pamparam"
  '(:dependencies ["abo-abo/worf"]))
(hoarder:register "https://bitbucket.org/agriggio/ahg"
  '(:tags ["mercurial"]
    :type :hg))
(hoarder:register "jordonbiondo/promises.el"
  '(:tags ["promise"]))
(hoarder:register "m00natic/vlfi")
(hoarder:register "zonuexe/emacs-copyit")
(hoarder:register "DogLooksGood/parinfer-mode")
(hoarder:register "ardekantur/gopher.el"
  '(:tags ["gopher"]))
(hoarder:register "djcb/sauron")
(hoarder:register "zallison/sauron-goodies")
(hoarder:register "peterwvj/eshell-up"
  '(:tags ["eshell" "bd"]))
(hoarder:register "emacsmirror/hide-comnt")
(hoarder:register "psachin/insert-shebang")
(hoarder:register "https://gitlab.com/xuhdev/dired-icon.git"
  '(:tags ["dired" "icon"]))
(hoarder:register "david-christiansen/dr-racket-like-unicode"
  '(:tags ["drracket" "unicode"]))
(hoarder:register "bmag/imenu-list")
(hoarder:register "nonsequitur/idle-highlight-mode")
(hoarder:register "alezost/bui.el"
  '(:tags ["tabulated-list" "table" "buffer" "ui"]))
(hoarder:register"davidshepherd7/aggressive-fill-paragraph-mode"
  '(:tags ["fill-paragraph"]))
(hoarder:register "kuanyui/fsc.el")
(hoarder:register "konr/tomatinho")
(hoarder:register "abo-abo/auto-yasnippet"
  '(:tags ["snippet" "yasnippet"]))
(hoarder:register "demyanrogozhin/elhome"
  '(:tags ["configuration" "dotfiles"]))
(hoarder:register "ensime/emacs-scala-mode"
  '(:tags ["scala"]))
(hoarder:register "seanirby/commando")
(hoarder:register "plexus/html-to-hiccup"
  '(:tags ["html" "dom" "hiccup" "clojure"]))
(hoarder:register "dgutov/highlight-escape-sequences"
  '(:tags ["highlight" "escape_sequences"]))
(hoarder:register "alezost/make-color.el")
(hoarder:register "emacsmirror/dired-plus")
(hoarder:register "emacsmirror/echo-bell"  )
(hoarder:register "Fanael/wordgen.el")
(hoarder:register "IvanMalison/tile"
  '(:tags ["xmonad"]))
(hoarder:register "skeeto/emacs-pastebin"
  '(:tags ["pastebin"]))
(hoarder:register "rakanalh/emacs-dashboard"
  '(:dependencies ["purcell/page-break-lines"
                   "bbatsov/projectile"]))
(hoarder:register "https://gitlab.com/iankelling/visible-mark.git")
(hoarder:register "vava/i3-emacs"
  '(:tags ["i3" "frame"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5at7lg/vanquishing_emacs_displaybuffer_for_use_with_i3/d9jldgq/][Too Many Requests]]"))
(hoarder:register "davidshepherd7/frames-only-mode"
  '(:tags ["frame"]))
(hoarder:register "git://git.freebsoft.org/git/speechd-el"
  '(:tags ["speech_synthesis"]))
(hoarder:register "renard/indicate-change"
  '(:dependencies ["Fuco1/indicators.el"]))
(hoarder:register "Fuco1/clippy.el")
(hoarder:register "Fuco1/ETable"
  '(:tags ["jtable" "table" "mvc"]))
(hoarder:register "iqbalansari/restart-emacs")
(hoarder:register "jtbm37/all-the-icons-dired")
(hoarder:register "zweifisch/enlive")
(hoarder:register "emacsmirror/ucs-cmds"
  '(:tags ["unicode"]))
(hoarder:register "andreasjansson/language-detection.el"
  '(:tags ["language" "eww"]))
(hoarder:register "tarao/tab-group-el")
(hoarder:register "mrkkrp/typit")
(hoarder:register "https://bitbucket.org/gvol/emacs-achievements"
  '(:type :hg))
(hoarder:register "xuchunyang/grab-x-link")
(hoarder:register "git://repo.or.cz/anything-config.git"
  '(:tags ["helm" "completion"]))
(hoarder:register "ksjogo/proportional"
  '(:tags ["font"]))
(hoarder:register "earlyjohn/company-org-headings")
(hoarder:register "cmpitg/wand"
  '(:tags ["acme" "xiki"]))
(hoarder:register "Fanael/highlight-quoted"
  '(:description "Highlight Lisp quotes and quoted symbols"
    :tags ["highlight"]))
(hoarder:register "vic/color-theme-buffer-local"
  '(:description "Set emacs color themes by buffer."))
(hoarder:register "cpitclaudel/easy-escape"
  '(:description "Improve readability of escape characters in Emac Lisp regular expressions"
    :tags ["prettify" "escape_sequnce"]))
(hoarder:register "myTerminal/emacs-sounds"
  '(:description "Sound effects for Emacs"))
(hoarder:register "TheBB/tripoli"
  '(:tags ["python" "emacs"])) 
(hoarder:register "zonuexe/untitled-new-buffer.el"
  '(:description "Open untitled new buffer like other text editors in Emacs"))
(hoarder:register "sabof/mview-image-and-emms-cover"
  '(:description "A simple image viewer based on ImageMagick"
    :memo "[[https://gist.github.com/sabof/5264829][emms-opts.el · GitHub]]
[[https://www.reddit.com/r/emacs/comments/1b673h/tips_for_setting_up_emms_especially_getting_cover/c943g6c/][Too Many Requests]]"
    :tags ["emms" "music"]))
(hoarder:register "sabof/emms-mobile-remote"
  '(:description "Control EMMS using your mobile"
    :tags ["emms" "mobile"]
    :memo "[[https://www.reddit.com/r/emacs/comments/1almo4/emmsmobileremote/][emms-mobile-remote : emacs]]"))
(hoarder:register "fnwiya/meigen-bot"
  '(:tags ["tips" "fortune"]
    :memo "[[http://fnwiya.hatenablog.com/entry/2015/12/01/012858][emacs起動時にランダムに名言をミニバッファに表示するmeigen-botリリースしました。 - fnwiyaBlog]]")) 
(hoarder:register "joddie/pcre2el"
  '(:description "convert between PCRE, Emacs and rx regexp syntax"
    :memo "[[http://emacs.rubikitch.com/pcre2el/][pcre2el.el : Emacs正規表現の呪いを解け！Emacs/PCRE(Perlの正規表現)/rx相互変換・解説！PCRE対応re-builder！！]]"))
(hoarder:register "sanryuu/tips"
  '(:description "emacs-tips"
    :tags ["tips" "emacs" "qiita" "article" "melpa"]
    :memo "[[http://qiita.com/sanryuu/items/de42bbd5651a0c1f7c37][Emacsで人気・新着の機能を紹介するtips.el作りました - Qiita]]"))
(hoarder:register "dgtized/list-environment.el"
  '(:description "A tabulated process environment editor"))
(hoarder:register "Yevgnen/ivy-rich"
  '(:tags ["ivy" "counsel"])) 
(hoarder:register "Wilfred/ag.el"
  '(:description "An Emacs frontend to ag, (\"the silver searcher\" ack replacement)"))
(hoarder:register "xuchunyang/sl.el"
  '(:description "Emacs clone of sl(1)"))
(hoarder:register "daichirata/emacs-get-wild"
  '(:tags ["getwild" "emacs"]
    :memo "[[http://qiita.com/daich/items/a3d4dd174bcaea7e517a][GetWild駆動開発の生産性を8倍に高めるget-wild.el - Qiita]]")) 
(hoarder:register "rubikitch/all-ext"
  '(:memo "http://d.hatena.ne.jp/rubikitch/20130202/all"
    :dependencies ["emacsmirror/all"])) 
(hoarder:register "DarthFennec/highlight-indent-guides"
  '(:description "Emacs minor mode to highlight indentation"
    :tags ["highlight" "indentation"]))
(hoarder:register "rubikitch/open-junk-file"
  '(:memo "[[http://qiita.com/akisute3@github/items/1d143b0b69e9aaf252ca][Emacs で使い捨てファイルを開く - Qiita]]")) 
(hoarder:register "sebastiansturm/autothemer"
  '(:description "Conveniently create Emacs themes"
    :tags ["emacs" "theme"]))
(hoarder:register "marcIhm/org-index"
  '(:description "A personal adaptive index for org."
    :tags ["org-mode" "index"]
    :memo "[[http://2484.de/org-index.html]]
  The latest published version of this file can always be found at:
   http://orgmode.org/w/?p=org-mode.git;a=blob_plain;f=contrib/lisp/org-index.el;hb=HEAD "))
(hoarder:register "collarchoke/ovpn-mode"
  '(:description "An openvpn management mode for emacs"
    :tags ["openvpn"]))
(hoarder:register "hagleitn/stock-ticker"
  '(:description "Emacs minor mode to show stock information in mode line."
    :tags ["stock" "mode-line"]
    :memo "[[http://qiita.com/takaxp/items/253f2f54893d8d399ca3][日経平均やダウ平均の状況をモードラインに表示する - Qiita]]"))
(hoarder:register "syohex/emacs-zoom-window"
  '(:description "Zoom and Unzoom window"
    :memo "[[http://syohex.hatenablog.com/entry/20130914/1379166283][Emacsで tmuxの zoom, unzoomを実現する zoom-window.el書きました - syohex’s diary]]
[[http://emacs.rubikitch.com/zoom-window/][zoom-window:C-x 1を復元可能にする7つのメリット]]"))
(hoarder:register "xiongtx/eros"
  '(:description "Evaluation Result OverlayS for Emacs Lisp."))
(hoarder:register "cute-jumper/evil-embrace.el"
  '(:description "Evil integration of embrace.el"
    :dependencies ["cute-jumper/embrace.el"]))
(hoarder:register "dochang/mb-url"
  '(:description "Multiple Backends for Emacs URL package"
    :tags ["curl" "url" "http"]))
(hoarder:register "zonuexe/untitled-new-buffer.el"
  '(:description "Open untitled new buffer like other text editors in Emacs"))
(hoarder:register "rolandwalker/simpleclip"
  '(:description "Simplified access to the system clipboard in Emacs."
    :tags ["clipboard"]))
(hoarder:register "Fanael/rainbow-identifiers"
  '(:description "Rainbow identifier highlighting for Emacs"))
(hoarder:register "takaishi/babel-loader.el"
  '(:description "org-modeのbabelというシステムを使って書かれた設定ファイルをinit-loaderでロードするためのラッパです"
    :memo "[[http://futurismo.biz/archives/6057][babel-loader:org-mode で init.el を管理する方法 | Futurismo]]"))
(hoarder:register "abrochard/emacs-habitica"
  '(:description "Emacs Extension for Habitica"
    :tags ["habitica" "todo"]))
(hoarder:register "mallt/eshell-fixed-prompt-mode"
  '(:description "Emacs minor mode to restrict eshell to a single fixed prompt"
    :tags ["eshell"]))
(hoarder:register "squiter/ivy-youtube"
  '(:tags ["ivy" "youtube"])) 
(hoarder:register "zk-phi/ac-last-session"
  '(:description "[emacs] auto complete source to complete words-in-same-mode-buffers in the last session"
    :tags ["auto-complete"]))
(hoarder:register "riscy/shx-for-emacs"
  '(:description "An Emacs shell-mode extension that enables displaying small plots and graphics and lets users write shell commands in Emacs Lisp."
    :tags ["shell" "graph"]))
(hoarder:register "pjones/eldoro"
  '(:description "A pomodoro timer/tracker that works with org-mode."
    :tags ["org-mode" "pomodoro"]))
(hoarder:register "kuanyui/fm-bookmarks.el"
  '(:description "Access existed File Managers' bookmarks (e.g. Dolphin, Nautilus, PCManFM) in Dired."
    :tags ["bookmark"]))
(hoarder:register "desvox/q4"
  '(:description "Browse and archive 4chan in GNU Emacs."
    :tags ["4chan"]
    :memo "[[https://boards.4chan.org/g/thread/58524074][/g/ - /dpt/ - Daily Programming Thread - Technology - 4chan]]"))
(hoarder:register "kaushalmodi/todoist.el"
  '(:description "Elisp library to interface with Todoist API"
    :tags ["todo" "todoist"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5oyml2/any_todoist_user_interested_in_collaborating_on/][Too Many Requests]]"))
(hoarder:register "ttakamura/org-todoist"
  '(:description "Sync TODOs between emacs org-mode files and Todoist"
    :tags ["todo" "todoist" "org-mode"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5oyml2/any_todoist_user_interested_in_collaborating_on/][Too Many Requests]]"))
(hoarder:register "emacsmirror/col-highlight"
  '(:description "Highlight the current column"
    :dependencies ["emacsmirror/vline"]))
(hoarder:register "emacsmirror/browse-kill-ring-plus"
  '(:description "Extensions to `browse-kill-ring.el'"))
(hoarder:register "sri/activity-log"
  '(:description "An activity log for Emacs's org-mode"))
(hoarder:register "chuntaro/emacs-async-await"
  '(:description "Async/Await for Emacs"
    :tags ["promise" "generator" "async" ]
    :dependencies ["chuntaro/emacs-promise"]))
(hoarder:register "troyp/fn.el"
  '(:description "Concise anonymous functions for Emacs Lisp"))
(hoarder:register "josuah/drawille"
  '(:description "Drawille library implementation in elisp."))
(hoarder:register "tmalsburg/guess-language.el"
  '(:description "Emacs mode that detects the language of what you're typing. Automatically switches spell checker. Supports multiple languages per document."))
(hoarder:register "Fanael/highlight-numbers"
  '(:description "Highlight numbers in source code"
    :dependencies ["Fanael/parent-mode"]))
(hoarder:register "atgreen/paperless"
  '(:description "Emacs assisted PDF document filing"
    :tags ["pdf" "document"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5t4r2n/paperless_an_emacs_assisted_pdf_document_filing/][Too Many Requests]]"))
(hoarder:register "Bad-ptr/common-header-mode-line.el"
  '(:description "header-line and/or mode-line that common for all windows of emacs frame"
    :memo "[[https://www.reddit.com/r/emacs/comments/5tm0hw/per_frame_modeheaderline_patches_welcome/][Too Many Requests]]"))
(hoarder:register "DamienCassou/unify-opening"
  '(:description "Emacs package to make everything use the same mechanism to open files"))
(hoarder:register "thamer/runner"
  '(:description "Improved \"open with\" suggestions for dired mode in Emacs"))
(hoarder:register "hsaito/emacs-high-UTF"
  '(:description "UTF-64, UTF-128, UTF-256, UTF-384, UTF-512 Support for Emacs (Joke)"
    :tags ["unicode" "utf"]))
(hoarder:register "kawaguchi/mi.el"
  '(:description "Emacs MIDI Instrument"
    :tags ["midi"]
    :dependencies [("bleything/midiator"
                    (:description "A Ruby library for interacting with system MIDI services."))]))
(hoarder:register "https://bitbucket.org/jpkotta/highlight-operators"
  '(:type :hg))
(hoarder:register "sugano-nu/gundam-emacs"
  '(:description "A shooting game by Emacs Lisp with smooth background scroll. Version 0.10"
    :tags ["game" "gundam"]))
(hoarder:register "Lindydancer/highlight-refontification"
  '(:description "Visualize how font-lock refontifies a buffer"))
(hoarder:register "smythp/eloud"
  '(:description "Lightweight, interactive screen reader for Emacs"
    :tags ["espeak" "screen_reader"]))
(hoarder:register "https://bitbucket.org/zck/2048.el"
  '(:type :hg
    :tags ["game" "2048"]))
(hoarder:register "jixiuf/golden-ratio-scroll-screen"
  '(:description "scrolling  screen  in Emacs"))
(hoarder:register "thiefuniverse/blog-minimal"
  '(:description "a simple static site generator based on org mode"
    :tags ["org-mode" "blog" "website"]))
(hoarder:register "vermiculus/apiwrap.el"
  '(:description "Generate wrappers for your API endpoints!"
    :tags ["api" "web"]))
(hoarder:register "AdamNiederer/elquery"
  '(:description "Read and manipulate HTML in emacs"
    :tags ["html" "dom" "jquery"]))
;; (hoarder:register "https://git.systemreboot.net/exiftool.el"
;;   '(:depth nil
;;     :type :git
;;     :tags ["exif" "jpeg"]))
(hoarder:register "anler/remember-last-theme"
  '(:description "Remember the last used theme between Emacs' sessions."
    :tags ["theme"]))
(hoarder:register "skeeto/elisp-fakespace"
  '(:description "Emacs Lisp namespaces (defpackage)"
    :memo "[[http://nullprogram.com/blog/2011/08/18/][Fake Emacs Namespaces « null program]]"))
(hoarder:register "lujun9972/pocket-api.el"
  '(:description "Another pocket api which is rewriten from el-pocket."))
(hoarder:register "lujun9972/pocket-mode"
  '(:description "Manage your pocket"
    :tags ["pocket"]))
(hoarder:register "narendraj9/quoted-scratch"
  '(:description "Beautiful quotes for your Emacs *scratch* buffer"
    :tags ["quotes" "fortune"]))
(hoarder:register "thisirs/scratch-message"
  '(:description "Changing message in your scratch buffer"))
(hoarder:register "zonuexe/auto-read-only.el"
  '(:description "Automatically make the buffer to read-only"))
(hoarder:register "cute-jumper/emacs-word-of-the-day"
  '(:description "Show \"Word of the Day\" from 15 online sources in Emacs"
    :tags ["fortune"]))
(hoarder:register "skeeto/elisp-json-rpc"
  '(:description "JSON-RPC library for Emacs Lisp"
    :tags ["json-rpc" "api"]))
(hoarder:register "wolray/symbol-overlay"
  '(:description "Highlighting symbols with keymap-enabled overlays"))
(hoarder:register "https://bitbucket.org/dvalchuk/waf-mode.git"
  '(:tags ["python" "waf"]))
(hoarder:register "h/find-file-in-repository"
  '(:description "Emacs: Quickly find files in a git, mercurial or other type of repository"))
(hoarder:register "lujun9972/html2org.el"
  '(:description "Convert html to org format text"
    :tags ["html" "org-mode" "pandoc"]))
(hoarder:register "AdrieanKhisbe/omni-quotes.el"
  '(:description "Random quotes displayer for Emacs"
    :dependencies ["AdrieanKhisbe/omni-log.el"]))
(hoarder:register "DamienCassou/hierarchy"
  '(:description "Emacs library to create, query, navigate and display hierarchy structures"))
(hoarder:register "domtronn/spaceline-all-the-icons.el"
  '(:description "A Spaceline Mode Line theme using All The Icons for Emacs"
    :tags ["spacemacs" "mode-line" "icon"]))
(hoarder:register "dacap/keyfreq"
  '(:description "Track Emacs commands frequency"))
(hoarder:register "rejeep/git.el"
  '(:description "An Elisp API for programmatically using Git"
    :tags ["git" "api"]))
(hoarder:register "AdrieanKhisbe/cask-package-toolset.el"
  '(:description "Toolsettize your emacs package!"
    :tags ["cask"]))
(hoarder:register "zk-phi/include-anywhere"
  '(:description "[Emacs] include from anywhere"))
(hoarder:register "skeeto/markov-text"
  '(:description "Markov chain text generation in Emacs Lisp"
    :tags ["language"]))
(hoarder:register "rolandwalker/nav-flash"
  '(:description "Briefly highlight the current line in Emacs"
    :tags ["beacon" "flush" "pulse"]))
(hoarder:register "k1LoW/emacs-historyf"
  '(:description "file history library like browser"
    :tags ["file" "history"]))
(hoarder:register "wxjeacen/novel-speaker-mode"
  '(:tags ["novel" "tts" "google_tts"])) 
(hoarder:register "stardiviner/major-mode-icons"
  '(:description "Show major-mode with icons on mode-line."
    :tags ["icons" "major-mode" "mode-line"]))
(hoarder:register "asok/all-the-icons-ivy"
  '(:description "all-the-icons.el for Ivy/Counsel"
    :tags ["icon" "ivy" "counsel"]
    :dependencies ["abo-abo/swiper"]))
(hoarder:register "Ilazki/prettify-utils.el"
  '(:description "Helper functions for emacs' prettify-symbols-mode"
    :tags ["unicode" "prettify"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6bbe7r/whats_the_most_useful_plugin_you_couldnt_live/dhlpi9l/][Too Many Requests]]"))
(hoarder:register "xuchunyang/shr-tag-pre-highlight.el"
  '(:description "Syntax highlighting code block in HTML for shr/eww"))
(hoarder:register "angrybacon/mdi"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/6d2jwf/spacemacs_like_modeling_with_spaceline_without/dhzqxe2/][TheFrenchPoulp comments on Spacemacs like modeling with spaceline without evil mode]]")) 
(hoarder:register "raxod502/straight.el"
  '(:description "The straightforward package manager for Emacs."
    :tags ["emacs" "package-manager" "version-control"]))
(hoarder:register "sebastiencs/sidebar.el"
  '(:description "A customizable file explorer with git integration for emacs"
    :dependencies [("sebastiencs/icons-in-terminal"
                    (:description "Use any fonts in the terminal without replacing or patching "
                     :load-path "build"))]))
(hoarder:register "joecannatti/soji-emacs"
  '(:description "Mindfulness Based Workday Tool in ELisp"
    :dependencies [("lolownia/org-pomodoro")]))
(hoarder:fetch "kaihaosw/eshell-prompt-extras")
(hoarder:register "joewreschnig/auto-minor-mode"
  '(:description "Enable Emacs minor modes by buffer name and contents"))
(hoarder:register "DamienCassou/json-navigator"
  '(:description "View and navigate JSON structures"
    :dependencies ["DamienCassou/hierarchy"]))
(hoarder:register "Wilfred/helpful"
  '(:description "A better Emacs *help* buffer"
    :tags ["emacs" "help"]))
(hoarder:register "Alexander-Miller/atomic-container"
  '(:description "A simple atomic container for emacs lisp"
    :tags ["threads"]))
(hoarder:register "djcb/mu"
  '(:load-path "mu4e"))
(hoarder:register "skeeto/cat-safe"
  '(:description "Detect cats wandering in your buffer."
    :memo "[[http://nullprogram.com/blog/2010/03/31/][Emacs cat-safe « null program]]"))
(hoarder:register "https://bitbucket.org/ellisvelo/multi-project"
  '(:type :hg))
(hoarder:register "gongo/qiita-el"
  '(:description "Qiita API Library for emacs"))
(hoarder:register "emacs-pe/http.el"
  '(:description "An HTTP client for Emacs"
    :dependencies ["Fanael/edit-indirect"]))
(hoarder:register "emacs-pe/password-vault-"
  '(:description "Keep your passwords in emacs. Access them through helm."))
(hoarder:register "notetiene/emacs-lisp-container"
  '(:description "😶 Avoid side-effects when executing Emacs Lisp"
    :tags ["container" "emacs-lisp" "side-effects"]))
(hoarder:register "seanohalpin/org-link-minor-mode"
  '(:description "Enable org-mode bracket links in non-org modes"))
(hoarder:register "spebern/www-synonyms"
  '(:description "get synonyms for many different languages in emacs"
    :tags ["english"]))
(hoarder:register "myTerminal/emacs-home"
  '(:description "A home-screen for Emacs"
    :tags ["emacs" "home-screen"]))
(hoarder:register "tj64/keyinfo"
  '(:description "Emacs library for printing a human-readable mode-map as well as unbound keys in an Org file"))
(hoarder:register "redguardtoo/vc-msg"
  '(:description "Show commit message of current line in Emacs"
    :memo "[[https://www.reddit.com/r/emacs/comments/6kn2w1/vcsmsg_show_commit_message_of_current_line/][Too Many Requests]]"))
(hoarder:register "kidd/commit-msg-prefix"
  '(:description "Insert a piece of earlier vcs commits in your current commit message"
    :memo "[[http://puntoblogspot.blogspot.jp/2017/07/announcing-commit-msg-prefix.html][puntoblogspot: Announcing commit-msg-prefix.]]"))
(hoarder:register "Vifon/focus-autosave-mode.el"
  '(:description "A global minor mode for Emacs saving the modified files when the Emacs frame loses its focus"
    :memo "[[https://www.reddit.com/r/emacs/comments/6knlbx/recommended_upgrades_to_emacs_autosave/][Too Many Requests]]"))
(hoarder:fetch "wilfred/peval"
  '(:description "partial evaluator for elisp"
    :tags ["emacs-lisp" "partial-evaluators"]))
(hoarder:register "plexus/a.el"
  '(:description "Emacs Lisp functions for dealing with association lists and hash tables. Inspired by Clojure."))
(hoarder:register "haxney/unbound")
(hoarder:register "emacsmirror/help-fns-plus")
(hoarder:register "girzel/ebdb"
  '(:description "An EIEIO port of BBDB, Emacs' contact-management package"
    :tags ["address-book" "emacs-lisp" "object-oriented"]
    :memo "[[https://ericabrahamsen.net/tech/2016/feb/bbdb-eieio-object-oriented-elisp.html][BBDB on EIEIO &#x2013; An Introduction to Object-Oriented Emacs Lisp]]"))
(hoarder:register "Lindydancer/face-explorer"
  '(:description "Library and tools for faces and text properties"))
(hoarder:register "thiderman/makefile-executor.el"
  '(:description "Emacs helpers to run things from makefiles"
    :tags ["emacs" "makefile"]))
(hoarder:register "https://gitlab.com/marcowahl/go-up.git")
(hoarder:register "marcowahl/herald-the-mode-line"
  '(:description "Herald the mode-line"))
(hoarder:register "kawabata/hentaigana"
  '(:description "Hentaigana Editing Tools and Input Method for Emacs."))
(hoarder:register "sabof/emms-mobile-remote"
  '(:description "Control EMMS using your mobile"))
(hoarder:register "momomo5717/emms-mode-line-cycle"
  '(:description "Display the emms mode line as a ticker"))
(hoarder:register "https://gitlab.com/cshclm/emms-queue.git"
  '(:tags ["emms"]))
(hoarder:register "alpaker/Frame-Bufs"
  '(:description "An Emacs minor mode for frame-relative buffer lists. "))
(hoarder:register "davep/dad-joke.el"
  '(:description "Get/show dad jokes in Emacs"
    :tags ["dad-jokes" "elisp" "emacs" "gnu" "humor" "lisp"]))
(hoarder:register "aki237/zen-mode") 
(hoarder:register "zk-phi/git-complete"
  '(:description "[Emacs] Yet another completion engine powered by \"git grep\""))
(hoarder:register "jcinnamond/pair-mode"
  '(:description "emacs mode for pair programming"
    :memo "[[https://www.reddit.com/r/emacs/comments/6nn93r/what_are_some_useful_potentially_unknown/][What are some useful, potentially unknown libraries that you use? : emacs]]"))
(hoarder:register "jcpetkovich/shrink-whitespace.el"
  '(:description "Whitespace removal DWIM key for emacs."
    :memo "[[https://www.reddit.com/r/emacs/comments/6nn93r/what_are_some_useful_potentially_unknown/][What are some useful, potentially unknown libraries that you use? : emacs]]"))
(hoarder:register "purcell/unfill"
  '(:description "Functions providing the inverse of Emacs' fill-paragraph and fill-region"
    :memo "[[https://www.reddit.com/r/emacs/comments/6nn93r/what_are_some_useful_potentially_unknown/][What are some useful, potentially unknown libraries that you use? : emacs]]"))
(hoarder:register "gongo/togetter.el"
  '(:description "Togetter を Emacs から覗きましょう"))
(hoarder:register "therockmandolinist/org-wiki-search"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/6nuhws/using_pandoc_to_import_a_wikipedia_page_to_org/][Using pandoc to import a Wikipedia page to org mode : emacs]]")) 
(hoarder:register "nicferrier/eimp"
  '(:description "Rather good Emacs Image Manipulation library. This is not mine, I am just adopting it for a few reasons."
    :memo "[[https://www.emacswiki.org/emacs/eimp.el][EmacsWiki: eimp.el]]"))
(hoarder:register "Malabarba/smart-mode-line"
  '(:description "A powerful and beautiful mode-line for Emacs."))
(hoarder:register "jabranham/mixed-pitch"
  '(:description "Mix fixed-pitch and variable-pitch fonts in Emacs"))
(hoarder:register "DarwinAwardWinner/with-simulated-input") 
(hoarder:register "volrath/treepy.el"
  '(:description "Generic tree traversing tools for Emacs Lisp"
    :memo "[[https://www.reddit.com/r/emacs/comments/6oue4n/generic_tree_traversal_tools_for_emacs_lisp/][Too Many Requests]]"))
(hoarder:register "a13/iqa.el"
  '(:description "(Emacs) Init file(and directory) Quick Access."
    :tags ["emacs" "emacs-lisp" "emacs-packages" "red-panda"]))
(hoarder:register "abingham/outline-toc.el"
  '(:description "Table-of-contents sidebar for Emacs."
    :tags ["markdown" "org" "outline-mode" "toc"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6peer1/outlinetocel_a_tableofcontents_sidebar_for/][Too Many Requests]]"))
(hoarder:register "davep/expando.el"
  '(:description "Quickly expand macros for easy reading/checking in Emacs"))
(hoarder:register "emacsorphanage/look-mode"
  '(:description "Quick file viewer for image and text file browsing"))
(hoarder:register "imgix/imgix-emacs"
  '(:description "An emacs major-mode for editing images via imgix."))
(hoarder:register "emacsmirror/background"
  '(:description "Background jobs in GNU Emacs"))
(hoarder:register "TLINDEN/autoscratch"
  '(:description "Automatically switch major mode from *scratch*"
    :memo "[[https://www.reddit.com/r/emacs/comments/6qahdz/what_are_you_currently_developing_in_emacs_lisp/][What Are You Currently Developing in Emacs Lisp? : emacs]]"))
(hoarder:register "kadinparker/youtube.el"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/6qahdz/what_are_you_currently_developing_in_emacs_lisp/][What Are You Currently Developing in Emacs Lisp? : emacs]]")) 
(hoarder:register "lifelike/decide-mode"
  '(:description "Random decisions for emacs, with functions and a minor mode. Roll various types of dice etc."
    :memo "[[https://www.reddit.com/r/emacs/comments/6qahdz/what_are_you_currently_developing_in_emacs_lisp/][What Are You Currently Developing in Emacs Lisp? : emacs]]"))
(hoarder:register "collarchoke/ovpn-mode"
  '(:description "An openvpn management mode for emacs"
    :memo "[[https://github.com/alphapapa/emacs-package-dev-handbook][GitHub - alphapapa/emacs-package-dev-handbook: An Emacs package development handbook. Built with Emacs, by Emacs pack...]]"))
(hoarder:register "hlissner/emacs-solaire-mode"
  '(:description "If only certain buffers could be so grossly incandescent."
    :tags ["emacs" "emacs-packages" "melpa"]))
(hoarder:register "alphapapa/highlight-function-calls"
  '(:description "Highlight function/macro calls in Emacs"))
(hoarder:register "DarwinAwardWinner/amx"
  '(:description "An alternative M-x interface for Emacs."
    :tags ["completion" "emacs"]))
(hoarder:register "zonuexe/emacs-auto-deployment"
  '(:description "Automatic syncronize when file saved."))
(hoarder:register "idaisukee/Sakurahasi") 
(hoarder:register "DarwinAwardWinner/ido-completing-read-plus"
  '(:description "Fancy completion all over Emacs, not just for buffers and files."
    :tags ["emacs" "emacs-completion" "ido"]))
(hoarder:register "https://gitlab.com/bennya/shrink-path.el.git"
  '(:tags ["eshell"]))
(hoarder:register "10sr/term-run-el"
  '(:description "Run Arbitrary Command in Terminal Buffer"))
(hoarder:register "xuchunyang/web-search.el"
  '(:description "Web search from Emacs and the terminal"))
(hoarder:register "k1LoW/emacs-drill-instructor"
  '(:description "Enforce key-bind of Emacs. a.k.a 鬼軍曹.el"))
(hoarder:register "wachikun/mvc"
  '(:description "ELISP for Mercurial/Git/Subversion/Bazaar(like a psvn.el)"
    :memo "[[http://umiushi.org/%7Ewac/mvc/][wac's webpage./mvc.el]]"))
(hoarder:register "momomo5717/avy-migemo"
  '(:description "avy with migemo"))
(hoarder:register "TakesxiSximada/mastodon-mode.el"
  '(:description "Play mastodon on Emacs"
    :memo "[[https://slideship.com/users/@sximada/presentations/2017/08/NwfdMr4rrtxFPQ2ZQVg6qq/][Mastodon × Emacs - slideship.com]]"))
;; (hoarder:register "https://gitlab.com/mbunkus/simple-rtm.git"
;;   '(:tags ["remember_the_milk"]))
(hoarder:register "jacktasia/dumb-jump"
  '(:description "an Emacs \"jump to definition\" package"
    :tags ["ag" "developer-tools" "emacs" "emacs-lisp" "emacs-modules" "melpa" "ripgrep" "silver-searcher" "spacemacs"]))
(hoarder:register "szermatt/emacs-bash-completion"
  '(:description "Add programmable bash completion to Emacs shell-mode"
    :tags ["bash-completion" "emacs" "emacs-lisp" "eshell"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6y3q4k/yes_eshell_is_my_main_shell/dml9asq/][Too Many Requests]]
[[https://github.com/szermatt/emacs-bash-completion/issues/13][Extend to work in sh-mode · Issue #13 · szermatt/emacs-bash-completion · GitHub]]"))
(hoarder:register "wasamasa/nov.el"
  '(:description "Major mode for reading EPUBs in Emacs"
    :dependencies ["tali713/esxml"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6ygecr/novel_major_mode_for_reading_epubs_in_emacs/][Too Many Requests]]"))
(hoarder:register "clojure-emacs/cider"
  '(:description "The Clojure Interactive Development Environment that Rocks for Emacs"
    :tags ["cider" "clojure" "clojure-development" "emacs" "emacs-lisp"]))
(hoarder:register "kaushalmodi/todoist.el"
  '(:description "Elisp library to interface with Todoist API"))
(hoarder:register "https://git.sergiodj.net/relddit.git"
  '(:tags ["reddit"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6zza4f/relddit_01_released_almost/][Too Many Requests]]"))
(hoarder:register "plandes/buffer-manage"
  '(:description "Provides support to manage buffers of any kind."))
(hoarder:register "rranelli/auto-package-update.el"
  '(:description "Automatically update Emacs packages."))
(hoarder:register "simenheg/rdf-prefix"
  '(:description "Prefix lookup for RDF in Emacs"))
(hoarder:register "simenheg/restclient-test.el"
  '(:description "Turn your restclient.el documents into interactive test suites"))
(hoarder:register "emacs-berlin/syntactic-close"
  '(:description "Insert closing delimiter"
    :memo "[[http://manuel-uberti.github.io/emacs/2017/09/17/syntactic-close/][Taming closing delimiters in my s-expressions – Manuel Uberti]]"))
(hoarder:register "GuidoSchmidt/circadian.el"
  '(:description "Theme-switching for emacs based on daytime"
    :tags ["circadian" "daytime" "emacs" "emacs-conf" "emacs-configuration" "emacs-lisp" "theme" "themes"]
    :memo "[[https://www.reddit.com/r/emacs/comments/70npz2/my_first_emacs_package_circadian_themeswitching/][Too Many Requests]]"))
(hoarder:register "flexibeast/dkl"
  '(:description "An ASCII-art representation of a keyboard layout, within an Emacs buffer."))
(hoarder:register "leabravo/tomatohead"
  '(:description "Leverage the Emacs header line's secret power and mix it with Pomodoro sauce!"))
(hoarder:register "Fuco1/eshell-bookmark"
  '(:description "Eshell and bookmark.el integration"))
(hoarder:register "pterygota/el-pocket"
  '(:description "el-pocket :: emacs -> getpocket.com"
    :dependencies ["nicferrier/emacs-web"]))
(hoarder:register "Fanael/persistent-scratch"
  '(:description "Preserve the scratch buffer across Emacs sessions"))


;; (hoarder:register "https://bitbucket.org/eeeickythump/org-player"
;;                  '(:tags ["org" "bongo" "music"]
;;                    :dependencies ["dbrock/bongo"]
;;                    :type hg))

;;;;;; skk
(hoarder:register "skk-dev/ddskk"
  '(:build ["gmake clean elc info"]
    :info "doc"
    :load-path ["." "experimental"]))
(hoarder:fetch "skk-dev/skktools"
  '(:build ["./configure" "gmake clean" "gmake"]))
(hoarder:fetch "tkita/SKK-JISYO"
  '(:tags ["skk" "skk-jisyo"]))

;; (cond
;;   ((file-directory-p (muki:user-emacs-directory "hoarder/ddskk"))
;;    (hoarder:register-local (muki:user-emacs-directory "hoarder/ddskk")
;;                           '(:build ["gmake elc info"]
;;                             :info "info")))
;;   ((file-directory-p "/usr/local/share/emacs/24.3/site-lisp/skk")
;;    (hoarder:register-local "/usr/local/share/emacs/24.3/site-lisp/skk")))

(hoarder:fetch "tromey/el-compilador"
  '(:tags ["emacs" "emcas-lisp" "compiler"]))
(hoarder:fetch "Mon-Ouie/blocky"
  '(:tags ["common_lisp" "game" "emacs"]
    :memo " [[https://www.youtube.com/watch?v=i03_VzOmDko][emacs glass demo - YouTube]]
[[https://github.com/Mon-Ouie/blocky/blob/master/glass.el][blocky/glass.el at master · Mon-Ouie/blocky · GitHub]] "))
(hoarder:fetch "ludwigpacifici/algorithm-mnemonics-emacs"
  '(:tags ["clojure" "emacs" "yasnippet" "snippet" "c++" ]
    :memo "[[https://www.youtube.com/watch?v=tSq7yDwS1vM][CppCon 2016: Tommy Bennett \“Algorithm Mnemonics: Increase your Productivity with STL Algorithms\" - YouTube]]"))
(hoarder:fetch "caisah/emacs.dz"
  '(:tags ["emacs" "dotfiles" "configuration"]))
(hoarder:fetch "knu/emacsc"
  '(:tags ["emacs" "cli"]))
(hoarder:fetch "tacticiankerala/awesome-emacs"
  '(:tags ["emacs" "awesome_list"]))
(hoarder:fetch "sefakilic/awesome-emacs"
  '(:tags ["emacs" "awesome_list"]))
(hoarder:fetch "incandescentman/Emacs-Settings"
  '(:tags ["emacs" "configuration"]
    :memo "[[https://www.youtube.com/watch?v=FtieBc3KptU][Emacs For Writers - YouTube]]"))
(hoarder:fetch "vkazanov/toy-orgfuse"
  '(:tags ["python" "fuse" "org-mode"]))
(hoarder:fetch "argentum47/everm"
  '(:tags ["emacs"]))
(hoarder:fetch "p-gen/smenu")
(hoarder:fetch "Kagami/webm.py")
(hoarder:fetch "https://gist.github.com/mpasternacki/974e29d1e3865e940c53.git"
  '(:tags ["freebsd" "macbook"]))
(hoarder:fetch "mwolson/emacs-shared"
  '(:tags ["configuration" "emacs"]))
(hoarder:fetch "https://gist.github.com/introom/f4cafe18fbe365a9dd29098aeaba1e03.git"
  '(:name "e-.fish"
    :tags ["emacs" "fish" "pipe"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5fbpir/how_to_stop_emacsclient_eval_output_to_stdout/][How to stop \"emacsclient --eval\" output to stdout? : emacs]]"))
(hoarder:fetch "ahyatt/rig.el"
  '(:description "emacs config manager"
    :tags ["configuration" "emacs"]))
(hoarder:fetch "BooksThere/ox-novel"
  '(:description "Org-mode で小説を書くと 1 コマンドで A5 サイズ縦書き二段組の PDF が生成できる。"
    :memo "[[http://qiita.com/BooksThere/items/ff46ee6a5dc796df1e78][Org-mode で書いたファイルから A5 縦書き二段組の PDF を生成するツール - Qiita]]"
    :tags ["orgmode" "novel" "pdf" "latex"]))
(hoarder:fetch "https://gitlab.com/chaseadamsio/dotfiles.git"
  '(:tags ["emacs" "i3"]
    :memo "[[https://gitlab.com/chaseadamsio/dotfiles/blob/master/emacs.org][emacs.org · master · Chase Adams / dotfiles · GitLab]]"))
(hoarder:fetch "https://gist.github.com/kiwanami/5820978.git"
  '(:tags ["ctable" "emacs"]
    :name "ctable-0.1.2b-demo.el"))
(hoarder:fetch "tarsius/git-elisp-overview"
  '(:description "Git-related Emacs packages "
    :tags ["git"]))
(hoarder:fetch "timoc/emacs-tyrant"
  '(:description "Emacs tyrant is a literate (using orgmode) config mechanism that has served me well, that i'm releasing into the public. This is in part a response to https://www.reddit.com/r/emacs/comments/3utwfr/literate_emacs_configuration_file/, and a way of recording my last known good before i gut it and move on to the next level of emacs yak-shaving. "
    :tags ["emacs" "configuration"]))
(hoarder:fetch "novoid/dot-emacs"
  '(:description "My GNU/Emacs configuration"
    :tags ["org-mode" "configuration" "yankpad"]
    :memo "https://github.com/novoid/dot-emacs/blob/master/main.el
[[http://karl-voit.at/2016/12/18/org-depend/][Advanced Usage of Dependencies Between Tasks Using Org-mode]]"))
(hoarder:fetch "sri/harlem-shake.el"
  '(:description "Harlem Shake in Emacs"
    :tags ["emacs"]))
(hoarder:fetch "nordlow/elisp"
  '(:description "My life-long work of Emacs extensions"
    :tags ["emacs"]
    :download nil))
(hoarder:fetch "raxod502/radian"
  '(:description "Elegant but practical configurations for Emacs, Zsh, Tmux, Leiningen, and Git"
    :tags ["dotfiles" "configuration" "emacs" "use-package" "zsh" "tmux" "clojure"]))
(hoarder:fetch "emacsmirror/eoops"
  '(:description "An Object Oriented Programming System in Elisp"
    :tags ["emacs" "oop" "smalltalk"]
    :memo "[[https://www.emacswiki.org/emacs/EmacsObjectOrientedProgrammingSystem][EmacsWiki: Emacs Object Oriented Programming System]]"))
(hoarder:fetch "IvanMalison/dotfiles"
  '(:description "configuration files for xmonad, emacs,  zsh, git, linux, osx and more."
    :tags ["dotfiles" "emacs" "use-package"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5l15gg/how_do_you_share_your_dotfiles_on_github_while/][Too Many Requests]]"))
(hoarder:fetch "https://gist.github.com/dc8fe61af6f2599c8e948035fbf66c13.git"
  '(:tags ["emacs" "game"]
    :name "xmas-tree.el"
    :memo "[[http://gongo.hatenablog.com/entry/2016/12/25/004550][🎄 Merry Christmas in Emacs 🎄 - Thanks Driven Life]]"))
(hoarder:fetch "thapakazi/.emacs.d"
  '(:description "Mai emacs configuration"
    :tags ["emacs" "configuration" "org-mode"]
    :memo "[[https://github.com/thapakazi/.emacs.d/blob/master/config.org][.emacs.d/config.org at master · thapakazi/.emacs.d · GitHub]]"))
(hoarder:fetch "nobulin/elisp"
  '(:description "My tiny emacs lisp code."
    :tags ["thread" "task"]
    :memo "[[https://github.com/nobulin/elisp/blob/master/thread-script.el][elisp/thread-script.el at master · nobulin/elisp · GitHub]]"))
(hoarder:fetch "geekerzp/kitten-emacs"
  '(:description "Convention over Configuration for emacs"
    :tags ["configuration" "emacs"]
    :download nil))
(hoarder:fetch "keenerd/albumbler"
  '(:description "A simple psychic playlist generator for a wide variety of music players."
    :site "http://kmkeen.com/albumbler/"
    :tags ["python" "music" "emms" "emacs"]))
(hoarder:fetch "noqisofon/emacs-gasket"
  '(:description "emacs lisp package manager"
    :tags ["javascript" "emacs"]))
(hoarder:fetch "larsmagne/clock.el"
  '(:description "Emacs Alarm Clock"))
(hoarder:fetch "EricCrosson/snow"
  '(:description "Snow simulator"
    :tags ["emacs" "game"]))
(hoarder:fetch "https://gist.github.com/xorian/be19359b644a33f9947480bc8e7c7be0.git"
  '(:tags ["emacs" "script"]
    :description "Script to send standard input into the emacs kill ring or a register"
    :memo "[[https://www.reddit.com/r/emacs/comments/5sn67f/script_to_send_standard_input_into_the_emacs_kill/][Script to send standard input into the emacs kill ring or a register : emacs]]"))
(hoarder:fetch "lujun9972/MyLisp") 
(hoarder:fetch "0rdy/emacs.d"
  '(:tags ["emacs" "dotfiles" "general.el"]
    :memo "[[https://github.com/0rdy/emacs.d/blob/master/env/env-maps.el][emacs.d/env-maps.el at master · 0rdy/emacs.d · GitHub]]")) 
(hoarder:fetch "sachac/emacs-notes"
  '(:description "Emacs / Org Mode tutorials and other organized notes"
    :tags ["emacs" "org-mode"]))
(hoarder:fetch "thefrontside/frontmacs"
  '(:description "A package-based, web-centric, customizable, awesome-by-default, acceptance-tested Emacs distribution curated by your friends at Frontside."
    :tags ["web" "emacs" "configuration"]))
(hoarder:fetch "hlissner/emacs.d"
  '(:tags ["emacs" "dotfiles" "evil"]))
(hoarder:fetch "kaushalmodi/eless"
  '(:description "A better 'less' - Combination of bash script and a minimal emacs view-mode config"
    :tags ["bash-script" "emacs" "emacs-lisp" "less"]))
(hoarder:fetch "ekaschalk/dotfiles"
  '(:description "My spacemacs configuration."
    :tags ["emacs" "spacemacs" "eshell"]
    :memo "https://www.reddit.com/r/emacs/comments/6f0rkz/my_fancy_eshell_prompt/dieyn1j/
[[https://github.com/ekaschalk/dotfiles/blob/master/.spacemacs][dotfiles/.spacemacs at master · ekaschalk/dotfiles · GitHub]]"))

(hoarder:fetch "otijhuis/emacs.d"
  '(:description "My Emacs configuration (Mostly for Clojure and ClojureScript development)"
    :tags ["hydra"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6ha2ir/some_interesting_hydras/][Too Many Requests]]
https://github.com/otijhuis/emacs.d/blob/master/config/hydra-settings.el"))
(hoarder:fetch "VincentToups/emacs-utils"
  '(:description "Some of my emacs-utilities"
    :tags ["monad"]))
(hoarder:fetch "ekaschalk/dotspacemacs"
  '(:description "My spacemacs configuration."
    :memo "[[https://ekaschalk.github.io/post/outline-ivy/][Managing code with Outlines | Modern Emacs]]"
    :tags ["emacs" "spacemacs" "eshell" "magit" "ivy" "outline"]))
(hoarder:fetch "dhamaniasad/HeadlessBrowsers"
  '(:description "A list of (almost) all headless web browsers in existence"
    :site "http://www.asad.pw/HeadlessBrowsers/"
    :tags ["automation" "browser" "headless-browsers" "testing"]))
(hoarder:fetch "omaciel/super-emacs"
  '(:description "An out-of-the-box Emacs configuration with super powers"))
(hoarder:fetch "emacs-pe/emacs-modules"
  '(:description "List of resources for Emacs modules"))
(hoarder:fetch "argentum47/everm"
  '(:description "Emacs Version Manager"
    :tags ["emacs"]))
(hoarder:fetch "https://gist.github.com/49c7480e1df42405a36b7ab09fe87f3d.git"
  '(:name "IosevkaConfigGen.hs"
    :description " Render Iosevka ligatures to Private Use Area glyphs, for Emacs "
    :tags ["font" "ligature" "iosevka"]))
(hoarder:fetch "hzenginx/spacelite"
  '(:description "Lightweight evil configuration for Emacs"
    :memo "[[https://www.reddit.com/r/emacs/comments/6oismi/my_minimal_spacemacs_like_evil_emacs/][My minimal Spacemacs like evil + emacs configuration. I have limited emacs/lisp experience so any feedback is highly ...]]"))
(hoarder:fetch "gilbertw1/bmacs"
  '(:description "bryan's emacs"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6p9dy5/xmonad_doom_or_compulsive_theming_disorder/][Too Many Requests]]
[[https://github.com/xero/dotfiles/blob/master/fun/bin/metroid][dotfiles/metroid at master · xero/dotfiles · GitHub]]"))
(hoarder:fetch "https://gist.github.com/alphapapa/2d141b60ccbe92f1b90000debde2ddd2.git"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/6pc0ts/sanitize_buffer_by_replacing_words_with_random/][Too Many Requests]]"))
(hoarder:fetch "tumashu/cnfonts"
  '(:description "emacs中文字体配置工具。可以快速方便的的实现中文字体和英文字体等宽（也就是常说的中英文对齐）。"))
(hoarder:fetch "lepisma/rogue"
  '(:description "Personal Emacs config"
    :tags ["dotfiles" "emacs" "spacemacs"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6px7f3/stumpwm_shades_of_gray_with_little_reddish_accent/][Too Many Requests]]"))
(hoarder:fetch "https://gist.github.com/cvcore/760008a4dfb2eadf42afdc9cf01ef979.git"
  '(:name "org-fragment-auto-preview.el"
    :memo "[[https://www.youtube.com/watch?v=TeZa0nvFdEo&app=desktop][How to automatically toggle LaTeX and Image Link Preview in Emacs org-mode - YouTube]]"))
(hoarder:fetch "emacsDojo/emacsdojo.github.io"
  '(:description "webpage for emacsdojo"
    :site "https://emacsdojo.github.io/"))
(hoarder:fetch "https://gitlab.com/to1ne/temacco.git"
  '(:tags ["emacs" ]))
(hoarder:fetch "alphapapa/emacs-package-dev-handbook"
  '(:description "An Emacs package development handbook. Built with Emacs, by Emacs package developers, for Emacs package developers."
    :tags ["emacs" "emacs-lisp"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6rdqgy/the_emacs_package_developers_handbook/][Too Many Requests]]"))
(hoarder:fetch "VincentToups/emacs-utils"
  '(:description "Some of my emacs-utilities"
    :tags ["clojure" "emacs_lisp" "pattern_matching"]
    :memo "https://github.com/VincentToups/emacs-utils/blob/master/defn-readme.md"))
(hoarder:fetch "git://git.savannah.gnu.org/emacs-tiny-tools.git"
  '(:memo "[[http://www.nongnu.org/emacs-tiny-tools/elisp-coding/index-body.html][Emacs Lisp coding thoughts]]"))
(hoarder:fetch "slewsys/emacs-cli-front-end"
  '(:description "A script to runs emacs(1) and/or emacsclient(1) as appropriate per given command-line arguments."
    :memo "[[https://www.reddit.com/r/emacs/comments/6vsdf3/a_script_to_runs_emacs_andor_emacsclient_as/][Too Many Requests]]"))
(hoarder:fetch "https://gist.github.com/mrkuc/7915851.git"
  '(:name "script.el"))
(hoarder:fetch "https://gist.github.com/mrkuc/7915775.git"
  '(:name "escript"))
(hoarder:fetch "Ambrevar/dotfiles"
  '(:tags ["archlinux" "emacs" "eshell" "exwm" "freebsd" "gentoo" "helm" "keymap" "mu4e" "posix-sh" "shell-scripts" "unix"]
    :memo "[[https://github.com/Ambrevar/dotfiles/blob/master/.emacs.d/lisp/init-eshell.el][dotfiles/init-eshell.el at master · Ambrevar/dotfiles · GitHub]]
[[https://github.com/szermatt/emacs-bash-completion/issues/13#issuecomment-326832005][Extend to work in sh-mode · Issue #13 · szermatt/emacs-bash-completion · GitHub]]
[[https://www.reddit.com/r/emacs/comments/6y3q4k/yes_eshell_is_my_main_shell/dml9asq/][Too Many Requests]]"))
(hoarder:fetch "https://gist.github.com/alphapapa/9df7093dc1ea83fbc4c8ef5d31b3bc57.git"
  '(:name "org-books.el"
    :memo "[[https://www.reddit.com/r/emacs/comments/6ytkuu/fetch_book_data_from_amazon_and_insert_as_org/][Too Many Requests]]"))
(hoarder:fetch "Danesprite/todoist-org-mode"
  '(:description "Transform Todoist projects into Emacs Org-mode files"
    :tags ["emacs" "org-mode" "python" "todoist" "todoist-api"]))
(hoarder:fetch "ttakamura/org-todoist"
  '(:description "Sync TODOs between emacs org-mode files and Todoist"))
(hoarder:fetch "kiwanami/emacs-anything-books"
  '(:tags ["anything" "book"]
    :memo "[[http://d.hatena.ne.jp/kiwanami/touch/20101117/1290015869][anything��PDF�ե������ץ�ӥ塼���ʤ����®�����Ӥ��� - ����������kiwanami]]"))
(hoarder:fetch "vxid/dotfiles"
  '(:description "Emacs and things I cannot do in Emacs."
    :tags ["dotfiles" "emacs" "i3wm" "polybar" "zsh"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/72dqrt/i3emacs_fall/][Too Many Requests]]"))
(hoarder:fetch "zk-phi/git-context-switch"
  '(:description "[git] context switch for git"
    :memo "[[https://qiita.com/zk_phi/items/656733c9eecf83ab9a4c][Git にコンテキストスイッチを実装した - Qiita]]"))
(hoarder:fetch "DarthSim/imgproxy"
  '(:description "Fast and secure standalone server for resizing and converting remote images"
    :tags ["crop-image" "docker" "image" "jpeg" "libvips" "microservice" "png" "resize-images"]
    :memo "[[https://evilmartians.com/chronicles/introducing-imgproxy][imgproxy: Resize your images instantly and securely — Martian Chronicles, Evil Martians’ team blog]]"))


;; TODO emacswiki support
;; "http://www.emacswiki.org/emacs/hl-spotlight.el"

;;; init.el ends here
