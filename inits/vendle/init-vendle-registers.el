;;; init-vendle-registers -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;  register packages

;;;;; helm
(vendle:register "emacs-helm/helm"
                 '(:build ("gmake")
                   :deps ("jwiegley/emacs-async")
                   :tag "helm"))
(vendle:register "thierryvolpiatto/pcomplete-extension")
(vendle:register "yuutayamada/helm-ag-r"
                 '(:tag ("helm" "ag")))
(vendle:register "yasuyk/helm-git-grep"
                 '(:tag ("helm" "git")))
(vendle:register "emacs-helm/helm-migemo"
                 '(:tag ("helm" "migemo")))
(vendle:register "emacs-helm/helm-ls-git"
                 '(:tag ("helm" "git")))
(vendle:register "emacs-helm/helm-cmd-t"
                 '(:tag ("helm")))
(vendle:register "ShingoFukuyama/helm-swoop"
                 '(:tag ("helm")))
(vendle:register "steckerhalter/helm-google"
                 '(:tag ("helm" "google")))
(vendle:register "syohex/emacs-helm-ag"
                 '(:tag ("helm" "ag")))
(vendle:register "markus1189/helm-hoogle"
                 '(:tag ("helm" "haskell")))
(vendle:register "jixiuf/helm-etags-plus"
                 '(:tag ("helm")))
(vendle:register "syohex/emacs-helm-themes"
                 '(:tag ("helm" "theme")))
(vendle:register "syohex/emacs-helm-open-github"
                 '(:tag ("helm" "github")))
(vendle:register "istib/helm-mode-manager"
                 '(:tag ("helm")))
(vendle:register "tkf/emacs-pinot-search"
                 '(:tag ("helm")))
(vendle:register "yasuyk/helm-flycheck"
                 '(:tag ("helm" "flycheck")))
(vendle:register "emacs-helm/helm-descbinds"
                 '(:tag ("helm")))
(vendle:register "yasuyk/helm-company"
                 '(:deps ("rejeep/f.el")
                   :tag ("helm" "company")))
(vendle:register "emacs-helm/helm-dictionary"
                 '(:tag ("helm")))
(vendle:register "emacs-helm/helm-recoll"
                 '(:tag ("helm")))
(vendle:register "mhayashi1120/Emacs-wgrep")
(vendle:register "ShingoFukuyama/helm-css-scss"
                 '(:tag ("helm" "css")))
(vendle:register "tmalsburg/helm-bibtex"
                 '(:deps ("joostkremers/ebib"
                          "magnars/s.el"
                          "magnars/dash.el"
                          "rejeep/f.el")
                   :tag ("helm" "bibtex")))

;;;;;  general packages
(vendle:register "magnars/s.el")
(vendle:register "jonathanchu/emacs-powerline")
(vendle:register "raugturi/powerline-evil"
                 '(:tag ("evil" "modeline")))
(vendle:register "TeMPOraL/nyan-mode")
(vendle:register "daimrod/highlight-sexp")
(vendle:register "m2ym/undohist-el")
(vendle:register "m2ym/emux-el")
(vendle:register "moriyamahiroshi/seijiseikana-el")
(vendle:register "kenoss/debug-print")
;; (vendle:register "emacsmirror/mew")
(vendle:register "ober/zone-matrix")
(vendle:register "wwwjfy/emacs-fish")
(vendle:register "thierryvolpiatto/emacs-bmk-ext")
(vendle:register "kawabata/aozora-view")
(vendle:register "tomoya/fuzzyjump.el")
(vendle:register "omouse/emacs-sos")
(vendle:register "davexunit/yon-chan")
(vendle:register "git://git.sv.gnu.org/emms.git"
                 '(:name "emms" :load-path "lisp"
                   :build ("gmake lisp docs emms-print-metadata")
                   :tag "emms"))
(vendle:register "fgallina/emms-info-mediainfo"
                 '(:tag "emms"))
(vendle:register "osener/emms-soundcloud"
                 '(:tag ("emms" "soundcloud")))
(vendle:register "r0man/soundklaus.el"
                 '(:deps (("magnars/dash.el" ( :compile nil))
                          "magnars/s.el"
                          "kiwanami/emacs-deferred")
                   :tag "soundcloud"))

(vendle:register "magit/git-modes"
                 '(:tag "git"))
(vendle:register "magit/magit"
                 '(:build ("gmake lisp docs")
                   :info "."
                   :tag "git"))
(vendle:register "magit/orgit"
                 '(:deps (("magit/magit"
                           (:build ("gmake lisp docs")
                                   :info "."
                                   :tag ("git" )))
                          ("magnars/dash.el" ( :compile nil)))
                   :tag ("git" "org" "magit")))
(vendle:register "mickesv/magit-overview"
                 '(:tag ("magit")
                   :deps (("magit/magit"
                           (:build ("gmake lisp docs") :info "." :tag "git")))))
(vendle:register "company-mode/company-mode"
                 '(:tag "company"))
(vendle:register "proofit404/company-edbi"
                 '(:tag "company"
                   :deps ( "company-mode/company-mode")))
(vendle:register "vspinu/company-math"
                 '(:tag "company"
                   :deps ( "company-mode/company-mode"
                          "vspinu/symbols.el")))
(vendle:register "syohex/emacs-git-gutter"
                 '(:tag "git"))
(vendle:register "syohex/emacs-git-gutter-fringe"
                 '(:tag ("git")
                   :deps ( "syohex/emacs-git-gutter"
                          "nschum/fringe-helper.el")))
(vendle:register "nonsequitur/git-gutter-fringe-plus"
                 '(:tag ("git")
                   :deps ( "nonsequitur/git-gutter-plus"
                          "nschum/fringe-helper.el")))
(vendle:register "syohex/emacs-rebuildfm"
                 '(:tag "radio"))
(vendle:register "syohex/emacs-anzu" '(:compile nil))
(vendle:register "Fuco1/smartparens"
                 '(:compile nil :deps (("magnars/dash.el" ( :compile nil)))))
(vendle:register "magnars/expand-region.el")
(vendle:register "magnars/multiple-cursors.el")
(vendle:register "haskell/haskell-mode"
                 '(:tag "haskell"
                   :compile nil
                   :build ("gmake all")))
(vendle:register "Bruce-Connor/paradox")
(vendle:register "Bruce-Connor/aggressive-indent-mode"
                 '(:deps ( "Bruce-Connor/names")))
(vendle:register "Bruce-Connor/rich-minority")
(vendle:register "steckerhalter/google-el")
(vendle:register "daemianmack/magit-cheatsheet"
                 '(:tag "magit"))
(vendle:register "re5et/itail")
(vendle:register "syohex/emacs-quickrun")
(vendle:register "fxbois/web-mode" '(:compile nil))
(vendle:register "emacsmirror/auto-highlight-symbol")
(vendle:register "nschum/highlight-symbol.el")
(vendle:register "emacsmirror/rainbow-mode")
(vendle:register "skeeto/elfeed"
                 '(:tag "rss"))
(vendle:register "remyhonig/elfeed-org"
                 '(:deps ("skeeto/elfeed")
                   :tag "rss"))
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
(vendle:register "Fanael/rainbow-delimiters")
(vendle:register "zk-phi/highlight-stages")
(vendle:register "zk-phi/indent-guide")
(vendle:register "jschaf/emacs-lorem-ipsum")
(vendle:register "remyferre/comment-dwim-2")
(vendle:register "capitaomorte/sly"
                 '(:build ("gmake compile contrib-compile")))
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
(vendle:register "roman/navorski.el"
                 '(:deps ("magnars/s.el"
                          ("magnars/dash.el" ( :compile nil))
                          "emacsmirror/multi-term")))
(vendle:register "febuiles/lyricwiki.el")
(vendle:register "sabof/svg-mode-line-themes"
                 '(:deps ("philjackson/xmlgen")))
(vendle:register "naota/navi2ch"
                 '(:build ("./configure" "gmake")))
(vendle:register "purcell/elisp-slime-nav")
(vendle:register "gcr/tumblesocks"
                 '(:deps ( "psanford/emacs-oauth"
                          "git://jblevins.org/git/markdown-mode.git")
                   :tag "tumblr"))
(vendle:register "thomblake/js3-mode")
(vendle:register "jd/google-maps.el")
(vendle:register "atykhonov/google-translate")
(vendle:register "lateau/charmap")
(vendle:register "bling/pt.el")
(vendle:register "emacsmirror/goto-last-change")
(vendle:register "dimitri/switch-window")
(vendle:register "rnkn/olivetti")
(vendle:register "emacsmirror/diminish")
(vendle:register "ShingoFukuyama/emacs-emoji-cheat-sheet")
(vendle:register "antonj/Highlight-Indentation-for-Emacs")
(vendle:register "mcandre/vimrc-mode" '(:tag "vim"))
(vendle:register "victorhge/iedit")
(vendle:register "gaudecker/mip-mode")
(vendle:register "mugijiru/cat-mode")
(vendle:register "syl20bnr/vi-tilde-fringe"
                 '(:tag "vi"))
(vendle:register "Fanael/highlight-defined")
(vendle:register "Bruce-Connor/conkeror-minor-mode")
(vendle:register "larsmagne/movie.el"
                 '(:deps ("larsmagne/pvr.el"
                          "larsmagne/imdb.el")
                   :desc "http://lars.ingebrigtsen.no/2011/04/12/emacs-movie-browser" ))
(vendle:register "larsmagne/csid"
                 '(:desc "http://lars.ingebrigtsen.no/2013/09/crowdsourcing-is-dead.html"))
(vendle:register "gregsexton/httprepl.el"
                 '(:tag ("http" "repl")))
(vendle:register "nicferrier/emacs-twaddle"
                 '(:tag ("twitter")
                   :deps ("VincentToups/shadchen-el"
                          "nicferrier/emacs-kv"
                          "magnars/dash.el"
                          "nicferrier/emacs-web"
                          "nicferrier/emacs-noflet"
                          "nicferrier/elnode")))
(vendle:register "https://bitbucket.org/ukaszg/aria2.git"
                 '(:tag "aria2" ))
(vendle:register "m00natic/eww-lnum"
                 '(:tag "eww"))
(vendle:register "yoshiki/yaml-mode")
(vendle:register "ijp/mbe.el")
(vendle:register "emacsmirror/info-plus" )
(vendle:register "kaihaosw/eshell-prompt-extras"
                 '(:tag "eshell"))
(vendle:register "syohex/emacs-smeargle"
                 '(:tag ("git" "highlight" )))
(vendle:register "syohex/emacs-git-messenger"
                 '(:tag ("git")
                   :deps ("auto-complete/popup-el")))
(vendle:register "abo-abo/ace-link"
                 '(:deps ( "winterTTr/ace-jump-mode"
                          "nicferrier/emacs-noflet")))
(vendle:register "kenoss/erfi"
                 '(:tag ("scheme" "srfi")))
(vendle:register "nicferrier/eshell-manual"
                 '(:load-path ("dist")
                   :build ("gmake")
                   :info "dist"
                   :tag "eshell"))
(vendle:register "jschaf/esup")
(vendle:register "vermiculus/sx.el"
                 '(:deps ("git://jblevins.org/git/markdown-mode.git")))
(vendle:register "nlamirault/emacs-travis"
                 '(:deps ( "magnars/s.el"
                          ("magnars/dash.el" ( :compile nil))
                          ( "lunaryorn/pkg-info.el"
                           (:deps ("cask/epl")))
                          "tkf/emacs-request")
                   :tag ("travis")))
(vendle:register "aJchemist/linkmap.el")
(vendle:register "alezost/mana.el"
                 '(:tag ("manaplus")))
(vendle:register "ichibeikatura/nipposi")
(vendle:register "clarete/hackernews.el")
(vendle:register "kkholst/SuperMan"
                 '(:tag ("org")
                   :load-path ("lisp")))
(vendle:register "jacksonrayhamilton/context-coloring"
                 '(:tag ("javascript")
                   :build ("npm install")))
(vendle:register "emacsattic/spaces")
(vendle:register "jeremy-compostella/project-manager"
                 '(:tag ("project")))
(vendle:register "Fuco1/better-jump"
                 '(:tag ("ace-jump")
                   :deps ("ShingoFukuyama/ov.el")))
(vendle:register "kentaro/auto-save-buffers-enhanced")
(vendle:register "cosmicexplorer/js-beautify-emacs"
                 '(:tag ("javascript")))
(vendle:register "josteink/csharp-mode"
                 '(:tag ("C#")))
(vendle:register "Bruce-Connor/camcorder.el"
                 '(:tag ("screencast")
                   :deps ("Bruce-Connor/names")))
(vendle:register "matthewlmcclure/dircmp-mode")
(vendle:register "agpchil/url-preview.el"
                 '(:deps (("magnars/dash.el" ( :compile nil)))))
(vendle:register "emacsfodder/kurecolor"
                 '(:deps ("magnars/s.el")))
(vendle:register "cmpitg/emnode")
(vendle:register "wasamasa/shackle"
                 '(:compile nil))
(vendle:register "sabof/stripe-buffer")
(vendle:register "chrisbarrett/skeletor.el"
                 '(:build ("gmake")))
(vendle:register "promethial/paxedit"
                 '(:deps ("http://mumble.net/~campbell/git/paredit.git")))
(vendle:register "ellerh/xref")
;; (vendle:register "capitaomorte/yasnippet")

;;;;; evil
(vendle:register "git://gitorious.org/evil/evil.git"
                 '(:build ("gmake doc all")
                   :info "doc"
                   :deps ("emacsmirror/goto-chg"
                          "http://www.dr-qubit.org/git/undo-tree.git")
                   :tag "evil"))
(vendle:register "cofi/evil-leader"
                 '(:tag "evil"))
(vendle:register "timcharper/evil-surround"
                 '(:tag "evil"))
(vendle:register "redguardtoo/evil-nerd-commenter"
                 '(:tag "evil"))
(vendle:register "redguardtoo/evil-matchit"
                 '(:tag "evil"))
(vendle:register "Dewdrops/evil-exchange"
                 '(:tag "evil"))
(vendle:register "edwtjo/evil-org-mode"
                 '(:tag "evil"))
(vendle:register "bling/evil-visualstar"
                 '(:tag "evil"))
(vendle:register "tarao/evil-plugins"
                 '(:tag "evil"))
(vendle:register "tarleb/evil-rebellion"
                 '(:tag "evil"))
(vendle:register "AshleyMoni/evil-sneak"
                 '(:tag "evil"))
;;(vendle:register "juanjux/evil-search-highlight-persist"
;;                 '(:tag "evil"
;;                   :deps ("emacsmirror/highlight")))
(vendle:register "sunesimonsen/evil-walk-on-the-edge"
                 '(:tag "evil"))
(vendle:register "bling/evil-jumper"
                 '(:tag "evil"))
(vendle:register "roman/evil-paredit"
                 '(:tag "evil"))
(vendle:register "Dewdrops/evil-extra-operator"
                 '(:tag "evil"))
(vendle:register "cofi/evil-indent-textobject"
                 '(:tag "evil"))
(vendle:register "linktohack/evil-space"
                 '(:tag "evil"))
(vendle:register "jschaf/evil-smartparens"
                 '(:tag "evil"))
(vendle:register "edwtjo/evil-projectile"
                 '(:tag "evil"))
(vendle:register "nadavspi/evil-linewise"
                 '(:deps ("emacsmirror/move-text")
                   :tag "evil"))
(vendle:register "TheBB/evil-paragraph-textobject"
                 '(:tag "evil"))
(vendle:register "syl20bnr/evil-lisp-state"
                 '(:deps ("magnars/expand-region.el")
                   :compile nil
                   :tag "evil"))
(vendle:register "syl20bnr/evil-escape"
                 '(:tag "evil"
                   :deps ("emacsmirror/key-chord")))
(vendle:register "gridaphobe/evil-god-state"
                 '(:tag "evil"
                   :deps ( "chrisdone/god-mode" )))
(vendle:register "tarleb/evil-scout")
(vendle:register "PythonNut/evil-easymotion"
                 '(:tag "evil"))


;;;;; org
(vendle:register "git://orgmode.org/org-mode.git"
                 '(:load-path ("lisp" "contrib/lisp")
                   :compile nil
                   :build ("gmake cleanall" "gmake" "gmake autoloads" "gmake doc")
                   :info "doc"
                   :tag "org"))
(vendle:register "tj64/org-hlc")
(vendle:register "tj64/outshine" '(:compile nil
                                   :tag ("org" "outline")))
(vendle:register "tj64/outorg" '(:compile nil
                                 :tag ("org" "outline")))
(vendle:register "omouse/org-doing"
                 '(:tag "org"))
(vendle:register "Fuco1/org-pretty-table"
                 '(:compile nil :tag "org"))
(vendle:register "rlister/org-present"
                 '(:deps (("git://orgmode.org/org-mode.git"
                           (:load-path ("lisp" "contrib/lisp")
                                       :compile nil
                                       :build ("gmake cleanall" "gmake" "gmake autoloads" "gmake doc")
                                       :info "doc"
                                       :tag "org")))))
;; (vendle:register "jleechpe/outorg-export")
(vendle:register "tj64/navi"
                 '(:tag ("org" "outline")))
(vendle:register "kawabata/ox-pandoc"
                 '(:deps ("Wilfred/ht.el"
                          "magnars/dash.el")
                   :tag ( "org" "pandoc" )))

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
(vendle:register-theme "gchp/flatland-emacs")
(vendle:register-theme "mswift42/busybee-theme")
(vendle:register-theme "byels/emacs-cherry-blossom-theme")
(vendle:register-theme "startling/firebelly")
(vendle:register-theme "Greduan/emacs-theme-gruvbox")
(vendle:register-theme "donderom/jazz-theme")
(vendle:register-theme "andre-richter/emacs-lush-theme")
(vendle:register-theme "Lokaltog/distinguished-theme")
(vendle:register-theme "mswift42/warm-night-theme")
(vendle:register-theme "jasonm23/emacs-bubbleberry-theme")
(vendle:register-theme "n3mo/cyberpunk-theme.el")
(vendle:register-theme "Fanael/colorsarenice-theme")
(vendle:register-theme "kodx/TangoDark")
(vendle:register-theme "wasamasa/gotham-theme")
(vendle:register-theme "neil477/base16-emacs")
(vendle:register-theme "oneKelvinSmith/monokai-emacs")
(vendle:register-theme "hbin/molokai-theme")
(vendle:register-theme "jordonbiondo/ample-theme")
(vendle:register-theme "mjwall/ample-zen")
(vendle:register-theme "bruce/emacs-spacegray-theme")
(vendle:register-theme "juba/color-theme-tangotango")
(vendle:register-theme "ccann/badger-theme")
(vendle:register-theme "xzerocode/hipster-theme")
(vendle:register-theme "fommil/darcula-theme-emacs")
(vendle:register-theme "emacsfodder/emacs-waher-theme")
(vendle:register-theme "emacsfodder/emacs-purple-haze-theme")
(vendle:register-theme "emacsfodder/emacs-clues-theme")
(vendle:register-theme "emacsfodder/emacs-soothe-theme")
(vendle:register-theme  "emacsfodder/emacs-slime-theme" )
(vendle:register-theme  "emacsfodder/emacs-peacock-theme" )
(vendle:register-theme  "emacsfodder/emacs-mustard-theme" )
(vendle:register-theme  "emacsfodder/emacs-mellow-theme" )
(vendle:register-theme  "emacsfodder/emacs-lavender-theme" )
(vendle:register-theme  "emacsfodder/emacs-firecode-theme" )
(vendle:register-theme  "emacsfodder/emacs-dark-krystal-theme" )
(vendle:register-theme  "emacsfodder/emacs-colonoscopy-theme" )
(vendle:register-theme  "emacsfodder/emacs-boron-theme" )
(vendle:register-theme  "emacsfodder/emacs-bliss-theme" )
(vendle:register-theme  "emacsfodder/emacs-flatland-black-theme" )
(vendle:register-theme "emacsfodder/emacs-mbo70s-theme")
(vendle:register-theme "uwabami/darkpastel-theme")
(vendle:register-theme "dev-plvlml/zenburn-care")

;;;;; local packages
(cl-labels ((add-project-root (path &optional option)
              (vendle:register-local (expand-file-name path "~/huone/projektit")
                                     option)))
  (add-project-root  "emacs-flatline")
  (add-project-root "helm-ypv" '(:tag "helm"))
  (add-project-root "company-scheme" '(:tag ("company" "scheme")))
  (add-project-root "emacs-scheme-keywords" '(:tag "scheme"))
  (add-project-root "emacs-lehtifile-mode")
  (add-project-root "helm-alku" '(:tag ("helm")))
  (add-project-root "emacs-navi2ch-file-mode" '(:tag "navi2ch"))
  (add-project-root "emacs-eshell-session" '(:tag "eshell"))
  (add-project-root "emacs-eshell-alias" '(:tag "eshell"))
  (add-project-root "helm-project-buffer" '(:tag "helm"))
  (add-project-root "emacs-eshellar" '(:tag ( "eshell" "shellar" ))))

(cond
  ((file-directory-p (muki:user-emacs-directory "vendle/ddskk"))
   (vendle:register-local (muki:user-emacs-directory "vendle/ddskk")
                          '(:build ("gmake elc info")
                            :info "info")))
  ((file-directory-p "/usr/local/share/emacs/24.3/site-lisp/skk")
   (vendle:register-local "/usr/local/share/emacs/24.3/site-lisp/skk")))

(vendle:register-local "~/.stumpwm.d/modules/util/swm-emacs")

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
(vendle:fetch "ahmadseleem/ViMacs"
              '(:tag ("evil" "dotifles")))
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
(vendle:fetch "11111000000/emacs-d")
(vendle:fetch "Shougo/neobundle.vim"
              '(:tag "vim"))
(vendle:fetch "Shougo/vimshell.vim"
              '(:tag ("vim" "shell")))
(vendle:fetch "gmarik/Vundle.vim"
              '(:tag "vim"))
(vendle:fetch "guns/vim-sexp"
              '(:tag "vim"))
(vendle:fetch "tpope/vim-sexp-mappings-for-regular-people"
              '(:tag "vim"))
(vendle:fetch "kovisoft/paredit"
              '(:tag ("vim" "paredit")))
(vendle:fetch "kovan/dopemacs")
(vendle:fetch "AshleyMoni/dotfiles"
              '(:tag ( "evil" "dotfiles" )))
;; (vendle:fetch "EricGebhart/emacs-setup"
;;               '(:tag ( "evil" "dotfiles" )))
(vendle:fetch "nadavspi/dotfiles"
              '(:tag ( "evil" "dotfiles" )))
(vendle:fetch "gridaphobe/dotfiles"
              '(:tag ("evil" "dotifles")))
(vendle:fetch "farisnasution/.evil-pack"
              '(:tag ("evil" "dotifles")))
(vendle:fetch "takaishi/.emacs.d"
              '(:tag "dotfiles"))
(vendle:fetch "nanasess/dot.emacs")
(vendle:fetch "technomancy/better-defaults")
(vendle:fetch "chrismccord/dot_emacs")
(vendle:fetch "thomasf/dotfiles-thomasf-emacs"
              '(:tag ( "dotfiles" "evil" )))
(vendle:fetch "xcwen/site-lisp"
              '(:tag ("evil")))
(vendle:fetch "yangchenyun/emacs-prelude"
              '(:tag ( "dotfiles" "evil" )))
(vendle:fetch "gabriel-laddel/masamune-os"
              '(:tag ( "lisp" "nix" "stumpwm")))
(vendle:fetch "gabriel-laddel/masamune")
(vendle:fetch "Fanael/init.el"
              '(:tag "dotfiles"))
(vendle:fetch "deftsp/.emacs.d"
              '(:tag ("dotfiles" "evil")))
(vendle:fetch "zhen-qin/.emacs.d"
              '(:tag ("dotfiles" "evil")))
(vendle:fetch "LeifAndersen/Emacs")
(vendle:fetch "uwabami/emacs-config")
(vendle:fetch "farseer90718/dotemacs")
(vendle:fetch "bixuanzju/emacs.d")
(vendle:fetch "mahinshaw/emacsd"
              '(:tag ("evil")))
(vendle:fetch "bosko/boem")
(vendle:fetch "jceb/vim-orgmode"
              '(:tag ("vim" "org")))
;; (vendle:fetch "borntorock/UI-toolkit-using-orgmode"
;;               '(:tag ("org")))
(vendle:fetch "bodil/emacs.d")
(vendle:fetch "jixiuf/emacs_conf"
              '(:tag ("evil")))
(vendle:fetch "m00natic/dot-emacs")
(vendle:fetch "holguinj/evil-clojure-emacs"
              '(:tag ("evil" "clojure")))
(vendle:fetch "jfeltz/emacs.d"
              '(:tag ("evil" "haskell")))
(vendle:fetch "rolandwalker/emacs-travis"
              '(:tag ("travis")))
(vendle:fetch "wcsmith/dotemacs"
              '(:tag ("evil")))
(vendle:fetch "takaxp/emacs.d")
(vendle:fetch "senny/cabbage")
(vendle:fetch "tsu-nera/dotfiles")
(vendle:fetch "capitaomorte/holy"
              '(:tag ("stumpwm")))
(vendle:fetch "avendael/dotemacs"
              '(:tag ("evil")))
(vendle:fetch "VincentToups/emacs-utils")
(vendle:fetch "bamos/dotfiles")
(vendle:fetch "bradyt/basic-computing-notes"
              '(:tag ("org")))
(vendle:fetch "Fuco1/.emacs.d")
(vendle:fetch "nlamirault/scame")
(vendle:fetch "dtan4/dot.emacs.d")
(vendle:fetch "jimm/elisp")
(vendle:fetch "magnars/.emacs.d")
(vendle:fetch "steventlamb/lamb-horned-beast")
(vendle:fetch "Bruce-Connor/emacs-online-documentation")
(vendle:fetch "unbalancedparentheses/lunfardo")
(vendle:fetch "emacsimize/org-admin"
              '(:tag ("org" "server")))
(vendle:fetch "garaud/foggycowinn")
(vendle:fetch "ardumont/org"
              '(:tag ("org")))
(vendle:fetch "TheBB/dotfiles"
              '(:tag ("evil" "org")
                :desc "https://github.com/TheBB/dotfiles/blob/master/emacs/init.el#L841-975"))
(vendle:fetch "grettke/home"
              '(:tag ("org")))
(vendle:fetch "lunaryorn/.emacs.d"
              '(:tag ("smartparens")))
(vendle:fetch "fgallina/dotemacs")
(vendle:fetch "ghoseb/dotemacs")
(vendle:fetch "meteor1113/dotemacs")
(vendle:fetch "bzg/dotemacs")
(vendle:fetch "CestDiego/spacemacs_conf")
(vendle:fetch "waymondo/hemacs")
(vendle:fetch "davidvilla/emacs-pills")
(vendle:fetch "cdlm/vitamined-mode-line")

(provide 'init-vendle-registers)

;;; init-vendle-registers.el ends here
