;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(hoarder:fetch "onodera-punpun/dotfiles"
  '(:download nil)) 
(hoarder:fetch "purcell/emacs.d")
(hoarder:fetch "redguardtoo/mastering-emacs-in-one-year-guide")
(hoarder:fetch "git://git.savannah.nongnu.org/emacs-tiny-tools.git")
(hoarder:fetch "bbatsov/emacs-lisp-style-guide")
(hoarder:fetch "davvil/.emacs.d")
(hoarder:fetch "hico-horiuchi/dotemacs")
(hoarder:fetch "juanjux/emacs-dotfiles")
(hoarder:fetch "redguardtoo/emacs.d"
  '(:memo "[[https://github.com/redguardtoo/emacs.d/blob/master/lisp/init-evil.el][emacs.d/init-evil.el at master · redguardtoo/emacs.d · GitHub]]"))
(hoarder:fetch "sachac/.emacs.d")
(hoarder:fetch "sachac/sharing"
  '(:tags ["org"]))
(hoarder:fetch "sachac/sketched-books"
  '(:tags ["org"]
    :download nil))
(hoarder:fetch "serras/emacs-haskell-tutorial")
(hoarder:fetch "supermomonga/dot-emacs")
(hoarder:fetch "thierryvolpiatto/emacs-tv-config")
(hoarder:fetch "xiaohanyu/oh-my-emacs")
(hoarder:fetch "bling/emacs-evil-bootstrap")
;; (hoarder:fetch "capdevc/dotfiles-cc")
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
  '(:tags ["evil" "dotifles"]))
(hoarder:fetch "febuiles/dotemacs")
(hoarder:fetch "git://orgmode.org/worg.git")
(hoarder:fetch "roman/emacs.d")
(hoarder:fetch "iconpin/dotemacs")
;; (hoarder:fetch "jpace121/evil-ed")
(hoarder:fetch "sunesimonsen/evil-config")
(hoarder:fetch "gbarta/evil-my-shims")
(hoarder:fetch "novoid/Memacs")
(hoarder:fetch "novoid/dot-emacs"
  '(:tags ["org"]))
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
;; (hoarder:fetch "11111000000/emacs-d")
(hoarder:fetch "Shougo/neobundle.vim"
  '(:tags ["vim" "plugin_manager"]))
(hoarder:fetch "Shougo/vimshell.vim"
  '(:tags ["vim" "shell"]))
(hoarder:fetch "sunaku/vim-unbundle"
  '(:tags ["vim" "plugin_manager"]))
(hoarder:fetch "kamichidu/vim-hariti"
  '(:tags ["vim" "plugin_manager"]))
(hoarder:fetch "gmarik/Vundle.vim"
  '(:tags ["vim"]))
(hoarder:fetch "guns/vim-sexp"
  '(:tags ["vim"]))
(hoarder:fetch "tpope/vim-sexp-mappings-for-regular-people"
  '(:tags ["vim"]))
(hoarder:fetch "kovisoft/paredit"
  '(:tags ["vim" "paredit"]))
(hoarder:fetch "goldfeld/vim-seek"
  '(:tags ["vim"]))
(hoarder:fetch "justinmk/vim-sneak"
  '(:tags ["vim"]))
(hoarder:fetch "miripiruni/vimi"
  '(:tags ["vim"]))
(hoarder:fetch "junegunn/vim-plug"
  '(:tags ["vim"]))
(hoarder:fetch "bling/vim-airline"
  '(:tags ["vim" "statusline"]))
(hoarder:fetch "itchyny/lightline.vim"
  '(:tags["vim" "statusline"]))
(hoarder:fetch "yuratomo/w3m.vim"
  '(:tags ["vim" "browser" "web"]))
(hoarder:fetch "kovan/dopemacs")
(hoarder:fetch "AshleyMoni/dotfiles"
  '(:tags ["evil" "dotfiles"]))
(hoarder:fetch "EricGebhart/emacs-setup"
  '(:tags ["evil" "dotfiles"]))
(hoarder:fetch "nadavspi/dotfiles"
  '(:tags ["evil" "dotfiles"]
    :recursive nil))
(hoarder:fetch "gridaphobe/dotfiles"
  '(:tags ["evil" "dotifles"]))
(hoarder:fetch "takaishi/.emacs.d"
  '(:tags ["dotfiles"]))
(hoarder:fetch "nanasess/dot.emacs")
(hoarder:fetch "technomancy/better-defaults")
(hoarder:fetch "chrismccord/dot_emacs"
  '(:tags ["dotfiles" "evil"]))
(hoarder:fetch "thomasf/dotfiles-thomasf-emacs"
  '(:tags ["dotfiles" "evil"]))
(hoarder:fetch "xcwen/site-lisp"
  '(:tags ["evil"]))
(hoarder:fetch "yangchenyun/emacs-prelude"
  '(:tags ["dotfiles" "evil"]))

(hoarder:fetch "stumpwm/stumpwm"
  '(:tags ["common_lisp" "stumpwm"]))
(hoarder:fetch "stumpwm/stumpwm-contrib"
  '(:tags ["common_lisp" "stumpwm"]
    :load-path "util/swm-emacs"))
(hoarder:fetch "stumpwm/stumpwm.wiki"
  '(:tags ["common_lisp" "stumpwm"]))
(hoarder:fetch "deepfire/cl-org-mode"
  '(:tags ["common_lisp" "org"]))
(hoarder:fetch "Ramarren/cl-parser-combinators"
  '(:tags ["common_lisp" "parser"]))
(hoarder:fetch "https://gitlab.common-lisp.net/alexandria/alexandria.git"
  '(:tags ["common_lisp"]
    :depth nil))
(hoarder:fetch "robert-strandh/SICL"
  '(:tags ["common_lisp"]
    :memo "[[https://www.youtube.com/watch?v=1Isx7n3KJCg][ELS - Fast, Maintainable, and Portable Sequence Functions - - YouTube]]"))
(hoarder:fetch "Shirakumo/radiance"
  '(:description "A Common Lisp web application environment"
    :tags ["common-lisp" "web" "web-framework"]
    :memo "[[https://www.youtube.com/watch?v=GEr7FrTuAps][ELS - Radiance - a Web Application Environment - YouTube]]"))
(hoarder:fetch "robert-strandh/Second-Climacs"
  '(:tags ["common_lisp" "climacs" "clim"]))
(hoarder:fetch "robert-strandh/CLIMatis"
  '(:tags ["common_lisp" "climacs" "clim"]))
(hoarder:fetch "edicl/cl-unicode"
  '(:tags ["common_lisp" "unicode"]))
(hoarder:fetch "edicl/cl-fad"
  '(:tags ["common_lisp"]))

(hoarder:fetch "gabriel-laddel/masamune")
(hoarder:fetch "Fanael/init.el"
  '(:tags ["dotfiles"]))
(hoarder:fetch "deftsp/.emacs.d"
  '(:tags ["dotfiles" "evil"]))
(hoarder:fetch "zhen-qin/.emacs.d"
  '(:tags ["dotfiles" "evil"]))
(hoarder:fetch "LeifAndersen/Emacs")
(hoarder:fetch "uwabami/emacs-config"
  '(:recursive nil))
(hoarder:fetch "farseer90718/dotemacs")
(hoarder:fetch "bixuanzju/emacs.d")
(hoarder:fetch "mahinshaw/emacsd"
  '(:tags ["evil"]))
(hoarder:fetch "bosko/boem")
(hoarder:fetch "jceb/vim-orgmode"
  '(:tags ["vim" "org"]))
;; (hoarder:fetch "borntorock/UI-toolkit-using-orgmode"
;;               '(:tags ["org"]))
(hoarder:fetch "bodil/emacs.d")
(hoarder:fetch "jixiuf/emacs_conf"
  '(:tags ["evil"]
    :download nil))
(hoarder:fetch "m00natic/dot-emacs")
(hoarder:fetch "holguinj/evil-clojure-emacs"
  '(:tags ["evil" "clojure"]))
(hoarder:fetch "rolandwalker/emacs-travis"
  '(:tags ["travis"]))
(hoarder:fetch "wcsmith/dotemacs"
  '(:tags ["evil"]))
(hoarder:fetch "takaxp/emacs.d")
(hoarder:fetch "senny/cabbage"
  '(:recursive nil))

(hoarder:fetch "avendael/dotemacs"
  '(:tags ["evil"]))
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
  '(:tags ["org" "server"]))
(hoarder:fetch "garaud/foggycowinn")
(hoarder:fetch "ardumont/org"
  '(:tags ["org"]))
(hoarder:fetch "TheBB/dotfiles"
  '(:tags ["evil" "org"]
    :description "https://github.com/TheBB/dotfiles/blob/master/emacs/init.el#L841-975"
    :recursive nil))
;; (hoarder:fetch "grettke/home"
;;   '(:tags ["org"]))
(hoarder:fetch "lunaryorn/.emacs.d"
  '(:tags ["smartparens"]))
(hoarder:fetch "fgallina/dotemacs")
(hoarder:fetch "ghoseb/dotemacs")
(hoarder:fetch "meteor1113/dotemacs")
(hoarder:fetch "bzg/dotemacs")
;; (hoarder:fetch "CestDiego/spacemacs_conf")
(hoarder:fetch "waymondo/hemacs")
(hoarder:fetch "davidvilla/emacs-pills")
(hoarder:fetch "cdlm/vitamined-mode-line")
(hoarder:fetch "wasamasa/dotemacs"
  '(:memo "[[https://github.com/wasamasa/dotemacs][GitHub - wasamasa/dotemacs: Literate Emacs configuration]]"))
(hoarder:fetch "fniessen/orgmk"
  '(:tags ["org"]))
(hoarder:fetch "fniessen/org-macros"
  '(:tags ["org"]))
(hoarder:fetch "fniessen/refcard-org-babel"
  '(:tags ["org"]))
(hoarder:fetch "https://gitlab.com/egh/org-cook.git"
  '(:tags ["org" "cooking"]
    :depth nil))
(hoarder:fetch "https://gitlab.com/egh/org-brew.git"
  '(:tags ["org" "brewing"]
    :depth nil))
(hoarder:fetch "krisajenkins/EvilBegins"
  '(:tags ["evil"]))
(hoarder:fetch "bzg/org-mode-rr"
  '(:tags ["org" "reproducible_research"]))
;; (hoarder:fetch "jkitchin/jmax"
;;   '(:tags ["org"]
;;     :recursive nil))
(hoarder:fetch "ihodes/emacs.org"
  '(:tags ["org"]))
(hoarder:fetch "tsu-nera/dotfiles"
  '(:tags ["org"]))
(hoarder:fetch "roman/birdseye.el"
  '(:tags ["configuration"]))
(hoarder:fetch "tonini/owl.el"
  '(:tags ["documentation"]))
;; (hoarder:fetch "JarrodCTaylor/monster"
;;   '(:tags ["evil"]))
(hoarder:fetch "git://git.code.sf.net/p/cedet/git"
  '(:name "cedet"
    :tags ["eieio" "cedet"]))
;; (hoarder:fetch "http://git.randomsample.de/cedet.git") 
(hoarder:fetch "scymtym/rudel"
  '(:tags ["eieio"]))
(hoarder:fetch "scymtym/moped"
  '(:tags ["clos" "eieio"]))
(hoarder:fetch "scymtym/zencoding")
(hoarder:fetch "kiwanami/emacs-elroutine"
  '(:tags ["process"]))
(hoarder:fetch "holtzermann17/metaca"
  '(:tags ["automata"]))
(hoarder:fetch "Prismatic/plumbing"
  '(:tags ["clojure"]))
(hoarder:fetch "jkitchin/org-ref"
  '(:tags ["org" "bibtex"]))
(hoarder:fetch "emacsmirror/eoops"
  '(:tags ["oop"]))
(hoarder:fetch "WildCarrot/OrgThings"
  '(:tags ["org"]))
(hoarder:fetch "kiwanami/emacs-widget-mvc"
  '(:tags ["widget" "gui"]))
(hoarder:fetch "vapniks/org-dotemacs"
  '(:tags ["org" "configuration"]))
;; (hoarder:fetch "ellerh/xref")
(hoarder:fetch "kelvinh/org-page"
  '(:tags ["org"]))
(hoarder:fetch "abedra/emacs.d")
(hoarder:fetch "emacsmirror/xclip"
  '(:tags ["clipboard"]))
;;(hoarder:fetch "emacsmirror/uni-confusables"
;;              '(:tags ["unicode"]))
(hoarder:fetch "funcool/cats"
  '(:tags ["clojure" "monad"]))
(hoarder:fetch "jonnay/emagicians-starter-kit"
  '(:tags ["org" "configuration"]))
(hoarder:fetch "julfy/scopid")
(hoarder:fetch "holomorph/transmission"
  '(:tags ["transmisson"]))
(hoarder:fetch "tromey/emacs-module"
  '(:tags ["module"]))
(hoarder:fetch "vikasrawal/orgpaper"
  '(:tags ["org"]))
(hoarder:fetch "tuhdo/emacs-c-ide-demo")
(hoarder:fetch "tkf/emacs-ipython-notebook"
  '(:tags ["python"]
    :recursive nil))
(hoarder:fetch "ryzzn/sydi-site"
  '(:tags ["org" "html"]))
(hoarder:fetch "tonini/emacs.d")
(hoarder:fetch "Lindydancer/e2ansi"
  '(:tags ["terminal" "escape_sequence"]
    :description "Syntax highlighting support for terminals, powered by Emacs"))
(hoarder:fetch "mlf176f2/EmacsMate")
(hoarder:fetch "https://gitlab.com/emacs-stuff/fasd-shell.git"
  '(:tags ["fasd" "shell" "ido"]
    :description "Use ido completion for the fasd utility in an emacs shell."
    :depth nil))
(hoarder:fetch "coldnew/eshell-autojump"
  '(:tags ["eshell" "autojump"]))
(hoarder:fetch "impaktor/unison-mode"
  '(:tags ["unison"]))
(hoarder:fetch "Sodaware/beeminder.el"
  '(:tags ["beeminder" "org"]))
(hoarder:fetch "skwp/dotfiles"
  '(:tags ["tmux" "vim" "zsh"]))
(hoarder:fetch "git://git.savannah.gnu.org/guix.git"
  '(:tags ["guix" "package_manager"]
    :site "http://www.gnu.org/software/guix/"
    :description "This is Guix! Purely functional package manager for GNU, and distribution of the GNU system."))
(hoarder:fetch "yuratomo/w3m.vim"
  '(:tags ["vim" "w3m"]))

(hoarder:fetch "abo-abo/org-fu"
  '(:tags ["org"]))
(hoarder:fetch "tumashu/chinese-fonts-setup"
  '(:tags ["chinese" "font"]))
;; (hoarder:fetch "aoksh/weblauncher"
;;   '(:tags ["web" "bookmark"]))
;; repository not working
;; (hoarder:fetch "git://git01.fort.kickass.systems/fsem.git"
;;               '(:tags ["org"]
;;                 :site "http://doc.rix.si/org/fsem.html"))
(hoarder:fetch "thartman83/org-filer"
  '(:tags ["org"]))
(hoarder:fetch "chrisdone/elisp-guide"
  '(:tags ["elisp" "programming" "guide"]))
;; (hoarder:fetch "baohaojun/system-config"
;;   '(:tags ["chinese" "font"]))
(hoarder:fetch "emacsmirror/swbuff-x"
  '(:tags ["buffer"]))
(hoarder:fetch "alezost/emacs-utils"
  '(:tags ["utility"]))
(hoarder:fetch "defaultxr/tracker.el"
  '(:tags ["osc" "music" "tracker"]))
(hoarder:fetch "steckerhalter/steckemacs.el"
  '(:tags ["configuration" "quelpa"]))
(hoarder:fetch "DamienCassou/unify-opening"
  '(:description "Emacs package to make everything use the same mechanism to open files"))
(hoarder:fetch "steckerhalter/steckemacs"
  '(:tags ["org" "org-babel"]))
(hoarder:fetch "atykhonov/dtc.el")
(hoarder:fetch "hillgreen012/xinix"
  '(:tags ["configuration"]))
(hoarder:fetch "nsaeki/dotemacs")
(hoarder:fetch "lambdasakura/emacs")
(hoarder:fetch "julienchastang/dotemacs"
  '(:tags ["org"]))
(hoarder:fetch "howardabrams/dot-files"
  '(:tags ["org" "emacs" "configuration"]))
(hoarder:fetch "howardabrams/demo-it"
  '(:tags ["org" "presentation"]))
(hoarder:fetch "ikame/dotfiles"
  '(:tags ["org" "conkeror"]))
(hoarder:fetch "kuanyui/.emacs.d")
(hoarder:fetch "emacsmirror/disptime")
(hoarder:fetch "xahlee/xah_emacs_init")
(hoarder:fetch "lisp/de.setf.utility"
  '(:tags ["common_lisp"]))
(hoarder:fetch "tarao/el-get-cli"
  '(:tags ["el-get" "cli"]))
(hoarder:fetch "coldasparagus/face-schemes"
  '(:tags ["face" "font"]))
(hoarder:fetch "sbcl/specializable"
  '(:tags ["common_lisp" "clos"]))
(hoarder:fetch "jave/xwidget-aux"
  '(:tags ["xwidget"]))
(hoarder:fetch "tomoyuki28jp/stumpwm"
  '(:tags ["stumpwm"]))
(hoarder:fetch "joelagnel/stumpwm-goodies"
  '(:tags ["stumpwm"]))
(hoarder:fetch "eggcaker/pelm"
  '(:tags ["org"]))
(hoarder:fetch "bodil/ohai-emacs")
(hoarder:fetch "jwiegley/dot-emacs")
(hoarder:fetch "expez/.emacs.d")
(hoarder:fetch "fjyuu/dotfiles")
(hoarder:fetch "wasamasa/xbm-life")
(hoarder:fetch "bodil/microkanrens"
  '(:tags ["logic" "kanren"]))
(hoarder:fetch "edrx/eev"
  '(:site "http://angg.twu.net/#eev"))
(hoarder:fetch "laynor/smotitah"
  '(:tags ["configuration"]))
(hoarder:fetch "snosov1/dot-emacs")
(hoarder:fetch "pierre-lecocq/emacs.d")
(hoarder:fetch "meteor1113/dotemacs")
(hoarder:fetch "jeffgran/elscreen-bg"
  '(:description "defadvice"))
(hoarder:fetch "Idorobots/mode-line-stats"
  '(:tags ["mode-line"]))
(hoarder:fetch "dz/dotfiles")
(hoarder:fetch "git://gist.github.com/5264829.git"
  '(:tags ["emms" "sabof" "gist"]))
(hoarder:fetch "NightBlues/deploy-framework"
  '(:tags ["deploy"]
    :dependencies ["sviridov/undercover.el"]))
(hoarder:fetch "https://bitbucket.org/hoangtu/.emacs.d.git"
  '(:download nil))
(hoarder:fetch "wiedzmin/stumpwm-config"
  '(:tags ["stumpwm"]))
(hoarder:fetch "abo-abo/oremacs"
  '(:tags ["configuration" "org" "lispy" "hydra"]))
(hoarder:fetch "inlinestyle/lifted.el")
(hoarder:fetch "luxbock/spacemacs-luxbock"
  '(:tags ["spacemacs" "evil" "evil-cleverparens"]))
(hoarder:fetch "emacsmirror/minibuffer-line"
  '(:tags ["minibuffer" "timer"]))
(hoarder:fetch "dfeich/org-babel-examples"
  '(:tags ["org" "org-babel"]))
(hoarder:fetch "renard/o-blog"
  '(:tags ["org" "blog"]))
(hoarder:fetch "tuhdo/tuhdo.github.io"
  '(:tags ["org" "emacs-tutor"]
    :download nil))
(hoarder:fetch "olewhalehunter/kommissar"
  '(:tags ["common_lisp" "browser" "mozrepl"]))
(hoarder:fetch "caiorss/Emacs-Elisp-Programming"
  '(:tags ["elisp" "guilde" "programming"]))
(hoarder:fetch "weavejester/medley"
  '(:tags ["clojure" "map" "utility"]))
(hoarder:fetch "bbatsov/clojure-style-guide"
  '(:tags ["clojure" "style_guide"]))
(hoarder:fetch "flatland/useful"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "prismatic/plumbing"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "marick/suchwow"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "aphyr/merkle"
  '(:tags ["clojure" "map" "tree"]))
(hoarder:fetch "zweifisch/enlive"
  '(:tags ["html" "dom" "xpath"]))
(hoarder:fetch "hyPiRion/fairbrook"
  '(:tags ["clojure" "map" "utility"]))
(hoarder:fetch "mthom/shen-minikanren"
  '(:tags ["shen" "logic" "kanren"]))
(hoarder:fetch "dakrone/cheshire"
  '(:tags ["clojure" "json"]))
(hoarder:fetch "razum2um/awesome-clojure"
  '(:tags ["awesome_list" "clojure"]))
(hoarder:fetch "pogin503/emacs-test-sample"
  '(:tags ["test" "ert" "development" "elisp"]))
(hoarder:fetch "boxed/instar"
  '(:tags ["clojure" "map" "utility"]))
(hoarder:fetch "hick/emacs-chinese"
  '(:tags ["chinese"]))
(hoarder:fetch "elimik31/geohashing_el"
  '(:tags ["geohashing"]))
(hoarder:fetch "nathanmarz/specter"
  '(:tags ["clojure" "map" "utility"]))
(hoarder:fetch "mattduck/generic-css"
  '(:tags ["css" "html" "org"]))
(hoarder:fetch "capitaomorte/holy"
  '(:tags ["sly" "common_lisp" "emacs" "configuration" "stumpwm"]))
(hoarder:fetch "emacsmirror/shop"
  '(:tags ["todo" "shop_list"]))
(hoarder:fetch "eschulte/org-scraps"
  '(:tags ["org" "snippets"]
    :site "http://eschulte.github.com/org-scraps/"
    :description "Collection of Org-mode snippets"))
(hoarder:fetch "ptaoussanis/encore"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "jneen/variants-slides"
  '(:tags ["clojure" "variants" "elixir"]))
(hoarder:fetch "supermomonga/darui.io"
  '(:tags ["elnode" "blog" "org" "web" "docker"]))
(hoarder:fetch "ctford/traversy"
  '(:tags ["clojure"]))
(hoarder:fetch "tallesl/Rich-Hickey-fanclub"
  '(:tags ["clojure" "video" "youtube" "rich hickey"]))
(hoarder:fetch "https://gitlab.com/com-informatimago/com-informatimago.git"
  '(:tags ["common-lisp"]
    :depth nil))
(hoarder:fetch "git://git.savannah.gnu.org/emacs/elpa.git"
  '(:tags ["elpa" "gnu" "emacs"]))
(hoarder:fetch "clojure/data.zip"
  '(:tags ["clojure" "zipper"]))
(hoarder:fetch "clojure/data.xml"
  '(:tags ["clojure" "xml"]))
(hoarder:fetch "webpro/awesome-dotfiles"
  '(:tags ["awesome-list" "dotfiles"]))
(hoarder:fetch "maitria/packthread"
  '(:tags ["clojure" "threading"]))
(hoarder:fetch "zkat/sheeple"
  '(:tags ["common_lisp" "oop" "clos"]
    :description "[[https://vimeo.com/7242003&sa=U&ved=0ahUKEwjPjLn82ejJAhUKXRQKHffmDAk4ChC3AggfMAM&usg=AFQjCNERuNfycIl8dKGz0e8t_abMO48R2A]]"))
(hoarder:fetch "Shinmera/.emacs"
  '(:tags ["dotemacs" "emacs" "common_lisp"]))
(hoarder:fetch "SiCKRAGETV/SiCKRAGE"
  '(:tags ["nzb" "torrent"]))
(hoarder:fetch "sferik/active_emoji"
  '(:tags ["ruby" "emoji"]))
(hoarder:fetch "https://git.fleshless.org/frozenbar"
  '(:type :git
    :tags ["lemonbar" "statusbar"]))
(hoarder:fetch "noctuid/dotfiles"
  '(:tags ["dotfiles" "emacs"]))
(hoarder:fetch "gstk/siji"
  '(:tags ["font" "icon" "bitmap" "dwm"]))
(hoarder:fetch "phallus/fonts"
  '(:tags ["font" "icon"]))
(hoarder:fetch "Abhishaker17/Awesome-APIs"
  '(:tags ["awesome" "list" "api"]))
(hoarder:fetch "https://gitgud.io/Nagru/Manga-Organizer.git")
(hoarder:fetch "xyl0n/iris"
  '(:tags ["gtk" "theme"]))
(hoarder:fetch "lxde/pcmanfm-qt"
  '(:tags ["desktop" "qt" "lxde"]))
(hoarder:fetch "http://git.suckless.org/farbfeld"
  '(:tags ["image" "format"]
    :type :git))
(hoarder:fetch "git://git.2f30.org/lel.git"
  '(:tags ["image" "viewer" "farbfeld"]))
(hoarder:fetch "FLIF-hub/FLIF"
  '(:tags ["image" "format"]))
(hoarder:fetch "parro-it/awesome-micro-npm-packages"
  '(:tags ["node" "npm" "awesome-list"]))
(hoarder:fetch "pyllyukko/user.js"
  '(:tags ["firefox" "javascript" "security"]))
(hoarder:fetch "dylanaraps/neofetch"
  '(:tags ["screenfetch"]))
(hoarder:fetch "TheReverend403/rice-stuff"
  '(:tags ["rice" "desktop"]))
(hoarder:fetch "uncomplicate/fluokitten"
  '(:tags ["clojure" "haskell" "monad" "category"]))
(hoarder:fetch "purnam/brahmin"
  '(:tags ["clojure" "haskell" "monad" "category"]))
(hoarder:fetch "eosrei/emojione-color-font"
  '(:tags ["font" "emoji" "emojione"]))
(hoarder:fetch "ramda/ramda"
  '(:tags ["javascript"]))
(hoarder:fetch "janestreet/core_kernel"
  '(:tags ["ocaml"]))
(hoarder:fetch "ocaml-batteries-team/batteries-included"
  '(:tags ["ocaml"]))
(hoarder:fetch "fukamachi/qlot"
  '(:tags ["common_lisp" "bundlr"]))
(hoarder:fetch "fantasyland/fantasy-land"
  '(:tags ["monad" "javascript"]))
(hoarder:fetch "fantasyland/fantasy-birds"
  '(:tags ["combinator" "javascript"]))
(hoarder:fetch "maio/smagit"
  '(:tags ["magit" "git"]))
(hoarder:fetch "http://git.tukaani.org/xz.git"
  '(:tags ["archive" "xz" "lzma"]
    :depth nil))
(hoarder:fetch "brabadu/awesome-fonts"
  '(:tags ["font"]))
;; (hoarder:fetch "chrissimpkins/codeface"
;;   '(:tags ["font"]))
(hoarder:fetch "Tecate/bitmap-fonts"
  '(:tags ["font"]))
(hoarder:fetch "roberoonska/dotfiles"
  '(:tags ["dotfiles" "colorscript" ]))
(hoarder:fetch "geommer/yabar"
  '(:tags ["bar" "wm" "desktop"]))
(hoarder:fetch "Anachron/i3blocks"
  '(:tags ["i3" "wm" "bar" "desktop"]))
(hoarder:fetch "deviantfero/wpgtk"
  '(:tags ["gtk" "colorscheme"]))
(hoarder:fetch "gstk/color-scripts")
(hoarder:fetch "Floens/uchan"
  '(:tags ["4chan" "chan" "bbs"]
    :site "https://uchan.plebco.de/"))
(hoarder:fetch "get-iplayer/get_iplayer"
  '(:tags ["radio" "bbc"]
    :memo "[[http://raspi.tv/2016/get_iplayer-on-raspberry-pi-update-november-2016][403 Forbidden]]"))
(hoarder:fetch "fanglingsu/vimb"
  '(:tags ["web" "browser" "vim" "webkit"]))
(hoarder:fetch "storax/emaci"
  '(:tags ["CI" "continuous integration"]))
(hoarder:fetch "mizzy/specinfra"
  '(:tags ["itamae" "configuration" "provisioning" "chef" "puppet" "ssh" "freebsd"]))
(hoarder:fetch "capistrano/sshkit"
  '(:tags ["ssh"]))
(hoarder:fetch "caffo/org-minimal-html-theme"
  '(:tags ["org-mode" "html"]))
(hoarder:fetch "DaveDavenport/rofi"
  '(:tags ["desktop" "utility" "dmenu"]))
(hoarder:fetch "jloughry/Unicode"
  '(:tags ["font" "unicode" "power_symbol" "iec"]))
(hoarder:fetch "ripienaar/free-for-dev"
  '(:tags ["devops" "SaaS" "PaaS" "IaaS"]))
(hoarder:fetch "rizo/awesome-ocaml"
  '(:tags ["ocaml" "awesome_list"]))
(hoarder:fetch "melling/ComputerLanguages"
  '(:tags ["notes" "languages" "haskell" "ocaml"]))
(hoarder:fetch "sugano-nu/tofu"
  '(:tags ["game"]))
(hoarder:fetch "ImageMagick/ImageMagick"
  '(:tags ["image" "graphic" "conversion"]))
(hoarder:fetch "sjsyrek/maryamyriameliamurphies.js"
  '(:tags ["javascript" "monad" "haskell"]))
(hoarder:fetch "cgrand/xforms"
  '(:tags ["clojure" "transducer" ]))
(hoarder:fetch "DrBoolean/pointfree-fantasy"
  '(:tags ["fantasy-land" "javascript" "combinator"]))
(hoarder:fetch "ggreer/the_silver_searcher"
  '(:tags ["ag" "grep" "ack"]))
(hoarder:fetch "googlei18n/noto-emoji"
  '(:tags ["font" "emoji"]))
(hoarder:fetch "mietek/charity-language"
  '(:tags ["charity" "language" "paramorphism" ]))
(hoarder:fetch "libressl-portable/portable"
  '(:tags ["openssl" ]))
(hoarder:fetch "rg3/youtube-dl"
  '(:tags ["youtube"]))
(hoarder:fetch "phillipberndt/pqiv"
  '(:tags ["image" "viewer"]))
(hoarder:fetch "taglib/taglib")
(hoarder:fetch "jart/hiptext"
  '(:tags ["image" "text" "sixel"]))
(hoarder:fetch "toddmotto/public-apis"
  '(:tags ["api" "public" "data"]))
(hoarder:fetch "chriskite/anemone"
  '(:tags ["ruby" "crawler" "scraping"]))
(hoarder:fetch "MihailJP/Inconsolata-LGC"
  '(:tags ["font"]))
(hoarder:fetch "jodrell/unbound-block-hosts"
  '(:tags ["unbound" "dns" "hosts" "adblock"]))
(hoarder:fetch "StevenBlack/hosts"
  '(:tags ["unbound" "dns" "hosts" "adblock"]
    :download nil))
(hoarder:fetch "lodash/lodash"
  '(:tags ["javascript"]))
(hoarder:fetch "l3ib/nitrogen")
(hoarder:fetch "jjk-jacky/donnatella")
(hoarder:fetch "https://git.lysator.liu.se/nettle/nettle.git"
  '(:tags ["gnutls" "crypto" "security"]))
;; (hoarder:fetch "emacs-mirror/emacs"
;;   '(:branch "master"))
(hoarder:fetch "git://git.sv.gnu.org/emacs.git"
  '(:branch "emacs-26"))
(hoarder:fetch "kentaro/cinnamon")
(hoarder:fetch "aharris88/awesome-cli-apps")
(hoarder:fetch "zythum/mama2"
  '(:tags ["bilibili" "youku"]))
(hoarder:fetch "yangyangwithgnu/hardseed"
  '(:tags ["porn" ]))
(hoarder:fetch "akameco/pixiv.js"
  '(:tags ["javascript" "pixiv"]))
(hoarder:fetch "akameco/npm-pixiv"
  '(:tags ["javascript" "pixiv" "npm"]))
(hoarder:fetch "vdemedes/gifi"
  '(:tags ["javascript" "gif" "npm" "image"]))
(hoarder:fetch "https://bitbucket.org/arakiken/mlterm"
  '(:type :hg
    :tags ["terminal"]))
(hoarder:fetch "trueos/lumina"
  '(:tags ["freebsd" "pcbsd" "fluxbox" "de"]
    ;; :branch "qt4/0.7.2"
    :branch "qt5/0.8.8"
    ))
(hoarder:fetch "git://git.fluxbox.org/fluxbox.git"
  '(:tags ["WM" "desktop"]))
(hoarder:fetch "RareAMV/WeebIRC"
  '(:tags ["irc" "anime"]))
(hoarder:fetch "git://git.sv.gnu.org/coreutils.git"
  '(:tags ["gnu" "coreutils"]))
(hoarder:fetch "git://git.samba.org/rsync.git"
  '(:depth nil))
(hoarder:fetch "seebi/dircolors-solarized"
  '(:tags ["solarized" "dircolors" "ls" "colorscheme"]))
(hoarder:fetch "novoid/org-mode-workshop"
  '(:tags ["orgmode"]))
(hoarder:fetch "minetest/minetest"
  '(:tags ["game" "minecraft"]
    :download nil))
(hoarder:fetch  "glennrp/libpng"
  '(:tags ["png" "graphic"]))
(hoarder:fetch "gapan/xdgmenumaker"
  '(:tags ["desktop" "xdg" "fluxbox"]))
(hoarder:fetch "txt2tags/txt2tags"
  '(:tags ["man" "python"]))
(hoarder:fetch "scheme-requests-for-implementation/srfi-133"
  '(:tags ["srfi" "vector" "scheme"]))
(hoarder:fetch "stathissideris/dali"
  '(:tags ["svg" "clojure" "xml" "hiccup"]))
(hoarder:fetch "sbocq/predicat"
  '(:tags ["clojure" "validation" "schema"]))
(hoarder:fetch "mgi/wm"
  '(:tags ["desktop" "wm" "common-lisp"]))
(hoarder:fetch "akroshko/emacs-otdb"
  '(:tags ["org"]))
(hoarder:fetch "seven332/EhViewer")
(hoarder:fetch "txus/kleisli"
  '(:tags ["category" "kleisli" "ruby" "ruby"]))
(hoarder:fetch "sdiehl/protolude"
  '(:tags ["haskell" "prelude"]
    :site "http://www.stephendiehl.com/posts/protolude.html"))
(hoarder:fetch "MrS0m30n3/youtube-dl-gui")
(hoarder:fetch "cask/cask")
(hoarder:fetch "git://g.blicky.net/ncdc.git"
  '(:tags ["DC" "download"]))
(hoarder:fetch "ThomasMeier/falcon"
  '(:tags ["clojure" "dom" "html" ]))
(hoarder:fetch "davidsantiago/hickory"
  '(:tags ["clojure" "dom" "html" "hiccup"]))
(hoarder:fetch "mattduck/splitscreen"
  '(:tags ["tmux" "vim" "emacs"]))
(hoarder:fetch "anubiann00b/AnimeDownloader"
  '(:tags ["anime" "download" "pyhton"]))
(hoarder:fetch "Juniper/libxo"
  '(:tags ["printf"]))
(hoarder:fetch "cloojure/tupelo"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "m-khvoinitsky/dark-background-light-text-extension"
  '(:tags ["firefox" "theme" "addon" "css"]))
(hoarder:fetch "yjh0502/comic"
  '(:tags ["image" "viewer" "comic" "archive"]))
;; (hoarder:fetch "lucy/af"
;;   '(:tags ["ag" "grep"]))
(hoarder:fetch "tsudoko/pixivrss"
  '(:tags ["pixiv" "rss"]))
(hoarder:fetch "Hamuko/nyaamagnet"
  '(:tags ["torrent" "magnet_link"]))
(hoarder:fetch "Fuuzetsu/h-booru"
  '(:tags ["haskell" "booru" "downloader"]))
(hoarder:fetch "Fuuzetsu/heee-lisp"
  '(:tags ["haskell" "monad" "emacs"]))
(hoarder:fetch "ivoarch/conkeror-theme-zenburn"
  '(:tags ["conkeror"]))
(hoarder:fetch "lotz84/haskell"
  '(:tags ["hasell" "reference"]))
(hoarder:fetch "note103/dirmove"
  '(:tags ["cd" "cli" "peco" "sentaku"]))
;; (hoarder:fetch "https://gitlab.com/MovingBlocks/Terasology.git"
;;   '(:tags ["minecraft" "java" "voxel" "game"]
;;     :depth nil))
(hoarder:fetch "https://gitlab.com/procps-ng/procps.git"
  '(:tags ["linux" "procfs"]
    :depth nil))
(hoarder:fetch "ruricolist/spinneret"
  '(:tags ["common-lisp" "html" "html5"]))
(hoarder:fetch "nebukazar/OneeChan"
  '(:tags ["4chan" "css" "firefox" "addon"]))
(hoarder:fetch "Cloudef/monsterwm"
  '(:tags ["wm" "x11"]))
(hoarder:fetch "LemonBoy/bar"
  '(:tags ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "moetunes/Some_sorta_bar"
  '(:tags ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "moetunes/bipolarbar"
  '(:tags ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "c00kiemon5ter/mopag"
  '(:tags ["wm" "tiling" "x11" "bar" "panel"]))
(hoarder:fetch "ahushh/Monaba"
  '(:tags ["imageboard" "haskell" "yesod" "kusaba"]
    :site "https://haibane.ru"))
(hoarder:fetch "driftyco/ionicons"
  '(:tags ["icon" "font"]))
(hoarder:fetch "gwkkwg/cl-containers"
  '(:tags ["common_lisp" "data_structure"]))
(hoarder:fetch "dustinspecker/awesome-eslint"
  '(:tags ["javascript" "eslint"]))
(hoarder:fetch "stoeffel/awesome-fp-js"
  '(:tags ["javascript" "functional" "immutable"]))
(hoarder:fetch "https://git.xiph.org/flac.git"
  '(:tags ["audio"]
    :depth nil))
(hoarder:fetch "https://git.xiph.org/opus.git"
  '(:tags ["audio"]
    :depth nil))
(hoarder:fetch "https://git.xiph.org/opus-tools.git"
  '(:tags ["audio" "opus"]
    :depth nil))
(hoarder:fetch "bbidulock/icewm"
  '(:tags ["wm" "desktop" "x11"]))
(hoarder:fetch "clowwindy/Awesome-Networking"
  '(:tags ["awesome_list" "network"]))
(hoarder:fetch "zenozeng/Free-Chinese-Fonts"
  '(:tags ["font" "chinese"]))
(hoarder:fetch "vurtun/nuklear"
  '(:tags ["gui" "toolkit"]))
(hoarder:fetch "hayderctee/masalla-icon-theme"
  '(:tags ["icon" "theme" "x11" "desktop"]
    :download nil))
(hoarder:fetch "xenlism/wildfire"
  '(:tags ["icon" "theme" "x11" "desktop"]
    :download nil))
(hoarder:fetch "xenlism/Storm"
  '(:tags ["icon" "theme" "x11" "desktop"]
    :download nil))
(hoarder:fetch "baurigae/polar-night"
  '(:tags ["gtk" "theme" "x11" "desktop"]))
(hoarder:fetch "anexation/menda-icon-themes"
  '(:tags ["icon" "theme" "x11" "desktop"]
    :download nil))
(hoarder:fetch "DrBoolean/RecursionTalk"
  '(:tags ["javascript" "fold"]))
(hoarder:fetch "mpv-android/mpv-android"
  '(:ag ["mpv" "android"]))
(hoarder:fetch "gwkkwg/metabang-bind"
  '(:tags ["common-lisp" "macro" "let" "binding"]))
(hoarder:fetch "https://gitla.in/nano/Craft.git"
  '(:tags ["minecraft"]))
(hoarder:fetch "morishitter/stylefmt"
  '(:tags ["css" "formatter" "web"]))
(hoarder:fetch "alphapapa/reddit-emacs-css"
  '(:tags ["css" "reddit"]))
(hoarder:fetch "jrockway/dotfiles"
  '(:tags ["perl"]))
(hoarder:fetch "ertugrulcetin/kezban"
  '(:tags ["clojure"]))
(hoarder:fetch "pi-hole/pi-hole"
  '(:tags ["raspberrypi" "adblock"]))
(hoarder:fetch "emcrisostomo/fswatch"
  '(:tags ["freebsd" "inotify"]))
(hoarder:fetch "emcrisostomo/FreeBSD-Ports"
  '(:tags ["freebsd" "fswatch"]))
(hoarder:fetch "dmatveev/libinotify-kqueue"
  '(:tags ["freebsd" "inotify" "kqueue"]))
(hoarder:fetch "faelys/filewatcherd"
  '(:tags ["freebsd" "inotify"]))
(hoarder:fetch "ogham/exa"
  '(:tags ["rust" "ls" "cli"]))
(hoarder:fetch "AurelienLourot/uncommitted"
  '(:tags ["git" "pythhon"]))
(hoarder:fetch "iCHAIT/awesome-subreddits"
  '(:tags ["awesome_list" "reddit"]))
(hoarder:fetch "feross/webtorrent-desktop"
  '(:tags ["webtorrent" "torrent"]))
(hoarder:fetch "sindresorhus/refined-github"
  '(:tags ["github" "chrome" "css"]))
(hoarder:fetch "https://gitlab.com/NTPSec/ntpsec.git"
  '(:tags ["ntp"]))
;; (hoarder:fetch "git://erdgeist.org/opentracker") 
(hoarder:fetch "git://git.2f30.org/colors") 
(hoarder:fetch "LubosD/fatrat"
  '(:description "an open source download manager for Linux written in C++ and built on top of the Qt 4 library (Git version uses Qt 5). It is rich in features and is continuously extended. "
    :site "http://fatrat.dolezel.info/"
    :tags ["qt" "downloader" "download"])) 
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
(hoarder:fetch "https://neetcode.org/chibi/sshchan.git"
  '(:type :git
    :download nil)) 
(hoarder:fetch "cjdelisle/cjdns") 
(hoarder:fetch "symbolset/ss-emoji-beta") 
(hoarder:fetch "https://notabug.org/koz.ross/awesome-c.git") 
;; (hoarder:fetch "https://notabug.org/koz.ross/awesome-cl.git") 
(hoarder:fetch "aleksandar-todorovic/awesome-c")
(hoarder:fetch "CodyReichert/awesome-cl")
(hoarder:fetch "https://notabug.org/wubthecaptain/deathwatch-pomf.git") 
(hoarder:fetch "git://repo.or.cz/abduco.git") 
(hoarder:fetch "git://repo.or.cz/conkeror.git") 
(hoarder:fetch "git://repo.or.cz/dvtm.git") 
(hoarder:fetch "json-porn-api/demo"
  '(:tags ["json" "porn" "api"]))
(hoarder:fetch "kana/vim-submode"
  '(:tags ["vim"]))
(hoarder:fetch "jedisct1/dnscrypt-proxy"
  '(:tags ["dns" "dnscrypt" "dnssec"])) 
(hoarder:fetch "Cofyc/dnscrypt-wrapper"
  '(:tags ["dns" "dnscrypt" "dnssec"]))
(hoarder:fetch "DaveDavenport/rofi-themes"
  '(:tags ["rofi"])) 
(hoarder:fetch "Jehops/swm-freebsd-battery-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-cpu-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-mem-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-net-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-volume-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-freebsd-zfs-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-hostname-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "Jehops/swm-maildir-modeline"
  '(:tags ["stumpwm" "freebsd"])) 
(hoarder:fetch "MirBSD/mksh") 
(hoarder:fetch "NitruxSA/luv-icon-theme") 
(hoarder:fetch "derf/feh") 
(hoarder:fetch "fish-shell/fish-shell") 
(hoarder:fetch "git/git"
  '(:branch "pu")) 
(hoarder:fetch "git://git.kernel.org/pub/scm/git/git.git"
  '(:branch "pu"))
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
  '(:tags ["privoxy" "adblock"])) 
(hoarder:fetch "Andrwe/privoxy-blocklist"
  '(:tags ["privoxy" "adblock"]))
(hoarder:fetch "snmsts/roswell") 
(hoarder:fetch "solus-project/evopop-gtk-theme") 
(hoarder:fetch "solus-project/evopop-icon-theme") 
(hoarder:fetch "stumpwm/stumpwm") 
(hoarder:fetch "stumpwm/stumpwm-contrib") 
(hoarder:fetch "whatyouhide/gotham-contrib"
  '(:tags ["colorscheme"])) 
(hoarder:fetch "zovt/papier-gtk-theme") 
(hoarder:fetch "libav/libav"
  '(:tags ["multimedia" "video"])) 

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
(hoarder:fetch "Argon-/mpv-config"
  '(:memo "[[https://github.com/Argon-/mpv-config/blob/master/mpv.conf][mpv-config/mpv.conf at master · Argon-/mpv-config · GitHub]]"))
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
(hoarder:fetch "FFmpeg/FFmpeg") 
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
  '(:tags ["decentralized" "p2p" "bittorrent" "bitcoin"])) 
(hoarder:fetch "Hiroyuki-Nagata/XrossBoard"
  '(:download nil)) 
(hoarder:fetch "Hund/Userstyles"
  '(:download nil)) 
(hoarder:fetch "IgnorantGuru/spacefm"
  '(:branch "alpha")) 
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
  '(:description "A cross platform manga/doujinshi manager with namespace & tag support"))
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
(hoarder:fetch "DrabWeb/Booru-chan"
  '(:description "A Booru browser for macOS"
    :tags ["booru" "macos" "swift"]))
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
(hoarder:fetch "ashinn/chibi-scheme"
  '(:download nil)) 
(hoarder:fetch "atextor/icat"
  '(:download nil)) 
(hoarder:fetch "aziz/tmuxinator"
  '(:download nil)) 
(hoarder:fetch "azu/awesome-commit-english"
  '(:download nil)) 
(hoarder:fetch "b4b4r07/zplug"
  '(:memo "[[https://github.com/zplug/zplug/blob/master/init.zsh][zplug/init.zsh at master · zplug/zplug · GitHub]]"
    :download nil)) 
(hoarder:fetch "badele/gitcheck"
  '(:download nil)) 
(hoarder:fetch "bamos/dotfiles"
  '(:download nil)) 
(hoarder:fetch "baskerville/bspwm"
  '(:download nil)) 
(hoarder:fetch "baskerville/diana"
  '(:download nil
    :description "A command line interface to the aria2 daemon"))
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
(hoarder:fetch "github/hub"
  '(:tags ["github" "git" "golang"])) 
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
  '(:download nil
    :site "http://guipdutra.github.io/awesome-geek-podcasts/")) 
(hoarder:fetch "ghosh/awesome-podcasts"
  '(:description "🎵 Curated podcasts for designers, developers, product managers, entrepreneurs and hustlers"
    :site "http://ghosh.github.io/awesome-podcasts/"))
(hoarder:fetch "gustavnikolaj/keepass-dmenu"
  '(:download nil)) 
(hoarder:fetch "hchbaw/auto-fu.zsh"
  '(:download nil)) 
(hoarder:fetch "heyalexej/awesome-images"
  '(:download nil)) 
(hoarder:fetch "hishamhm/htop") 
(hoarder:fetch "holman/dotfiles"
  '(:download nil)) 
(hoarder:fetch "huyz/less.vim"
  '(:download nil)) 
(hoarder:fetch "hydride0/yamazaki"
  '(:download nil)) 
(hoarder:fetch "hydrusnetwork/hydrus"
  '(:download nil)) 
(hoarder:fetch "CuddleBear92/Hydrus-Presets-and-Scripts"
  '(:description "collection of presets and scripts for Hydrus"
    :tags ["booru" "hydrus" "imageboard" "namespaces" "presets" "repository" "scripts" "scripts-collection" "tags"]))
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
  '(:tags [ "lua" "package" "package_manager"])) 
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
(hoarder:fetch "lastpass/lastpass-cli") 
(hoarder:fetch "laurikari/tre"
  '(:download nil)) 
(hoarder:fetch "leafo/moonscript") 
(hoarder:fetch "letsgetrandy/DICSS"
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
(hoarder:fetch "mitmproxy/mitmproxy") 
(hoarder:fetch "miyagawa/cpanminus"
  '(:download nil)) 
(hoarder:fetch "mo-ya/tmux-agent"
  '(:download nil)) 
(hoarder:fetch "mobile-shell/mosh") 
(hoarder:fetch "monacoinproject/monacoin"
  '(:download nil)) 
(hoarder:fetch "mooz/percol"
  '(:download nil)) 
(hoarder:fetch "motemen/ghq"
  '(:download nil)) 
(hoarder:fetch "moul/awesome-ssh"
  '(:download nil)) 
(hoarder:fetch "mps-youtube/mps-youtube") 
(hoarder:fetch "mps-youtube/pafy") 
(hoarder:fetch "mpv-player/mpv"
  ) 
(hoarder:fetch "mrowa44/emojify"
  '(:download nil)) 
(hoarder:fetch "msiemens/tinydb"
  '(:download nil)) 
(hoarder:fetch "muennich/sxiv") 
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
(hoarder:fetch "https://gitgud.io/nixx/WebMConverter"
  '(:type :git
    :tags ["webm" "video"]))

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
(hoarder:fetch "git://anongit.mindrot.org/openssh.git"
  '(:tags ["ssh" "openbsd"])) 
(hoarder:fetch "pallet/thread-expr"
  '(:download nil)) 
(hoarder:fetch "pannon/iocage"
  '(:download nil)) 
(hoarder:fetch "iocage/iocage"
  '(:description "A FreeBSD jail manager written in Python"
    :tags ["freebsd" "jail" "python"]))
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
(hoarder:fetch "robfig/config"
  '(:download nil)) 
(hoarder:fetch "robfig/pathtree"
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
  '(:tags ["common-lisp"])) 
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
  '(:tags ["scheme"])) 
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
(hoarder:fetch "soimort/you-get") 
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
(hoarder:fetch "tmux/tmux") 
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
(hoarder:fetch "unot/WebRadioRecorder") 
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
(hoarder:fetch "videolan/x265") 
(hoarder:fetch "vikasrawal/orgpaper"
  '(:download nil)) 
(hoarder:fetch "vstakhov/libucl"
  '(:download nil)) 
(hoarder:fetch "weavejester/medley"
  '(:download nil)) 
(hoarder:fetch "webyrd/miniKanren"
  '(:download nil)) 
(hoarder:fetch "windelicato/dotfiles"
  '(:tags ["dotfiles" "fvwm"])) 
(hoarder:fetch "windymelt/p2p2ch"
  '(:download nil)) 
(hoarder:fetch "wooorm/alex"
  '(:download nil)) 
(hoarder:fetch "xero/dotfiles"
  '(:download nil
    :memo "https://www.reddit.com/r/unixporn/comments/6r6gxn/colorcontest2bwm_blaque_magick/")) 
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
  '(:tags ["python" "xml"]))
(hoarder:fetch "sindresorhus/cows"
  '(:tags ["ascii_art" "cows"]))
(hoarder:fetch "machakann/vim-colorscheme-tatami"
  '(:tags ["vim" "colorscheme" "theme"]))
(hoarder:fetch "syncthing/syncthing"
  '(:tags ["p2p" "file_sharing"]
    :download nil))
(hoarder:fetch "sugitak/appdo"
  '(:description "http://qiita.com/sugitak/items/7503f4c0b99fce29293e"))
(hoarder:fetch "tomerfiliba/plumbum"
  '(:tags ["shell" "python"]))
(hoarder:fetch "freebsd/freebsd-wifi-build"
  '(:tags ["freebsd" "onionΩ"]))
(hoarder:fetch "freebsd/freebsd-wifi-build.wiki"
  '(:tags ["freebsd" "onionΩ"]))
(hoarder:fetch "MagikBSD/please"
  '(:tags ["sudo" "pam"]))
(hoarder:fetch "yacy/yacy_search_server"
  '(:tags ["search_engine" ]
    :download nil))
(hoarder:fetch "spolu/dwm.vim"
  '(:tags ["vim" "dwm"]))
(hoarder:fetch "nghttp2/nghttp2")
(hoarder:fetch "belluzj/fantasque-sans"
  '(:tags ["font"]))
(hoarder:fetch "Tlaster/OneEchan"
  '(:tags ["anime" "android"]))
(hoarder:fetch "rizo/awesome-ocaml"
  '(:tags ["ocaml"]))
(hoarder:fetch "StylishThemes/GitHub-Dark"
  '(:tags ["firefox" "css" "github"]))
(hoarder:fetch "git://git.code.sf.net/p/cdesktopenv/code"
  '(:tags ["cde" "desktop" "x11"]
    :description ["https://sourceforge.net/p/cdesktopenv/wiki/FreeBSDBuild/"]
    :download nil))
(hoarder:fetch "xbmc/xbmc"
  '(:download nil))
(hoarder:fetch "exdownloader/exDownloader"
  '(:tags ["download" "ehen" "doujin"]))
(hoarder:fetch "ugexe/zef"
  '(:tags ["perl6" "package_manager"]))
(hoarder:fetch "Mononofu/P2P-DNS"
  '(:tags ["p2p" "dns"]))
(hoarder:fetch "dirruk1/gnome-breeze"
  '(:tags ["theme" "gtk" "x11"]))
(hoarder:fetch "Cloudef/macopix-fork")
(hoarder:fetch "nixers-projects/podcast"
  '(:tags ["unix" "nixers" "podcast"]
    :description "https://nixers.net/showthread.php?tid=1656"
    :download nil))
;; (hoarder:fetch "git://arcetera.moe/bin.git"
;;   '(:description "https://www.reddit.com/r/unixporn/comments/4h5aai/cwm_lacking/"
;;     :tags ["OpenBSD"]))
;; (hoarder:fetch "git://arcetera.moe/etc.git"
;;   '(:description "https://www.reddit.com/r/unixporn/comments/4h5aai/cwm_lacking/
;; https://www.reddit.com/r/unixporn/comments/4jkw3a/cwm_i_hate/ "
;;     :tags ["OpenBSD" "cwm"]))
(hoarder:fetch "IonicaBizau/scrape-it"
  '(:tags ["javascript" "scraping"]))
(hoarder:fetch "looterz/grimd"
  '(:tags ["dns" "proxy" "advertisements"]))
(hoarder:fetch "racaljk/hosts"
  '(:tags ["dns" "hosts"]))
(hoarder:fetch "kciter/awesome-style-guide"
  '(:tags ["style-guide" "awesome_list"]))
(hoarder:fetch "gavindinubilo/jam-api"
  '(:tags ["scraping" "api"]))
(hoarder:fetch "LibreELEC/LibreELEC.tv"
  '(:tags ["mediacenter" "htpc" "linux" "openelec"]
    :download nil))
(hoarder:fetch "greymd/egzact.git"
  '(:tags ["shellscript" "egison" "haskell" "cli"]
    :description "http://qiita.com/greymd/items/3515869d9ed2a1a61a49"))
(hoarder:fetch "askucher/nixar"
  '(:tags ["shellscript" "linux" "cli"]))
(hoarder:fetch "usp-engineers-community/Open-usp-Tukubai"
  '(:tags ["shellscript" "cli"]))
(hoarder:fetch "sriramkswamy/dotemacs"
  '(:tags ["dotemacs" "emacs" "hydra" "evil" "modalka"]
    :description "[[https://www.reddit.com/r/emacs/comments/4hmmla/how_much_evil_in_emacs/d2rdj2p][aerobug comments on how much evil in emacs]]
[[https://github.com/sriramkswamy/dotemacs/blob/master/config/sk-org-hydra.el][dotemacs/sk-org-hydra.el at master · sriramkswamy/dotemacs · GitHub]] "))
(hoarder:fetch "Project-ShangriLa/shangrila_api_doc"
  '(:tags ["anime" "api" "project_shangrila"]
    :site "http://akibalab.info/"))
(hoarder:fetch "TomokiAburatani/anime-api-cl"
  '(:tags ["anime" "api"  "project_shangrila" "common_lisp"]
    :site "http://dbym4820.hatenablog.com/entry/2016/05/04/132241"
    :download nil))
(hoarder:fetch "spf13/cobra"
  '(:tags ["golang" "cli" "script"]))
(hoarder:fetch "mecab/emspect"
  '(:tags ["emoji" "javascript" "node"]))
(hoarder:fetch "tredly/tredly-host"
  '(:tags ["freebsd" "container" ]))
(hoarder:fetch "Sonerezh/sonerezh"
  '(:tags ["music" "streaming"]))
(hoarder:fetch "Libresonic/libresonic"
  '(:tags ["music" "streaming" "subsonic"]
    :download nil))
(hoarder:fetch "devsnd/cherrymusic"
  '(:tags ["music" "streaming"]))
(hoarder:fetch "mhiramat/mincs"
  '(:tags ["container" "shellscript"]
    :description "https://www.youtube.com/watch?v=69sEJZb2i-E"))
(hoarder:fetch "jshawl/updog"
  '(:tags ["dropbox" "website"]))
(hoarder:fetch "wdenton/conforguration"
  '(:tags ["emacs" "org-mode" "configuration"]))
(hoarder:fetch "carrotflakes/cleson"
  '(:tags ["common_lisp" "egison"]))
(hoarder:fetch "https://bitbucket.org/luisangelsm/yacreader"
  '(:tags ["comic" "image_viewer"]
    :type :hg
    :download nil))
(hoarder:fetch "davide-romanini/comictagger"
  '(:tags ["comic" "tag" "comic_vine"]
    :description "fork of original
[[https://code.google.com/p/comictagger/][original site]]"))
(hoarder:fetch "cbanack/comic-vine-scraper"
  '(:tags ["comic_vine" "api" "comicrack"]))
(hoarder:fetch "http://hg.code.sf.net/p/quivi/code"
  '(:tags ["comic" "viewer"]
    :type :hg
    :download nil))
(hoarder:fetch "davide-romanini/comicapi"
  '(:tags ["comictagger" "comic" "comic_vine" "comic_book_info" "api"
           "metadata"]))
(hoarder:fetch "iComics/comicbookinfo"
  '(:tags ["comic_book_info" "comic" "metadata"]))
(hoarder:fetch "git://git.code.sf.net/p/bdreader/code"
  '(:tags ["comic" "viewer"]))
(hoarder:fetch "funcool/lentes"
  '(:tags ["clojure" "lens" "monad" "haskell"]))
(hoarder:fetch "yuki-kimoto/gitprep"
  '(:tags ["github" "perl" ]))
(hoarder:fetch "thestinger/termite"
  '(:tags ["terminal"]))
(hoarder:fetch "dbohdan/structured-text-tools"
  '(:tags ["awesome_list"]))
(hoarder:fetch "zkat/sheeple"
  '(:tags ["common_lisp" "clos" "oop"]))
(hoarder:fetch "mmontone/descriptions"
  '(:tags ["common_lisp"]))
(hoarder:fetch "vseloved/rutils"
  '(:tags ["common_lisp"]))
(hoarder:fetch "F1LT3R/youtube-to-gif"
  '(:tags ["youtube" "gif"]))
(hoarder:fetch "cbednarski/hostess"
  '(:tags ["dns" "/etc/hosts"]
    :description "[[https://www.youtube.com/watch?v=A-TxiI5Ja9E][OSDC 2016 - DNS for Developers by Jan-Piet Mens - YouTube]]"))
(hoarder:fetch "silverwind/normalize-git-url"
  '(:tags ["node" "javascript" "git"]))
(hoarder:fetch "silverwind/overlay-scrollbars"
  '(:tags ["firefox" "css"]))
(hoarder:fetch "rmloveland/hn2org"
  '(:tags ["org-mode" "hacker_news"]))
(hoarder:fetch "slburson/misc-extensions"
  '(:tags ["common-lisp"]))
(hoarder:fetch "et2010/Han"
  '(:tags ["spacemacs" "chinese"]))
(hoarder:fetch "MediaBrowser/Emby"
  '(:tags ["htpc" "kodi" "plex"]
    :download nil))
(hoarder:fetch "pr1ntf/iohyve"
  '(:tags ["freebsd" "bhyve" "zfs"]))
(hoarder:fetch "Flat/daunroda"
  '(:tags ["golang" "danbooru"]))
(hoarder:fetch "filebot/filebot"
  '(:tags ["tv" "drama" "anime" "renamer"]
    :description "http://www.filebot.net/"
    :download nil))
(hoarder:fetch "git://git.code.sf.net/p/sox/code"
  '(:name "sox"))
(hoarder:fetch "icy/pacapt"
  '(:tags ["arch" "pacman" "freebsd" "pkgng"]))
(hoarder:fetch "jschx/ufetch"
  '(:tags ["screenfetch" "rice"]))
(hoarder:fetch "enna-project/Enna-Media-Server"
  '(:tags ["xbmc" "plex" "htpc"]
    :description "http://enna.geexbox.org/index.html"))
(hoarder:fetch "ytaniike/mlterm_conf_with_ja.utf8"
  '(:tags ["mlterm" "japanese" "configuration"]))
(hoarder:fetch "ManuelSchneid3r/albert"
  '(:tags ["qt" "launcher"]))
(hoarder:fetch "igoradamenko/awsm.css"
  '(:tags ["css"]))
(hoarder:fetch "savonet/liquidsoap"
  '(:tags ["streaming" "ffmpeg" "video"]
    :description "http://liquidsoap.fm/"))
(hoarder:fetch "deech/shen-elisp"
  '(:tags ["shen"]))
(hoarder:fetch "ctjhoa/spacevim"
  '(:tags ["vim" "spacemacs"]))
(hoarder:fetch "GNOME/adwaita-icon-theme"
  '(:tags ["x11" "desktop" "theme"]
    :download nil))
(hoarder:fetch "KaOSx/midna"
  '(:tags ["x11" "desktop" "theme"]))
(hoarder:fetch "KDE/peruse"
  '(:tags ["comic" "viewer" "kde" "qt"]
    :download nil))
(hoarder:fetch "KDE/breeze-icons"
  '(:tags ["x11" "kde" "icon" "theme"]))
(hoarder:fetch "GNOME/girl"
  '(:tags ["gnome" "radio" "streaming"]
    :download nil))
(hoarder:fetch "xenlism/Xdwaita"
  '(:tags ["x11" "desktop" "theme"]))
(hoarder:fetch "MartinBriza/adwaita-qt"
  '(:tags ["x11" "kde" "theme" "qt" "gnome"]))
(hoarder:fetch "axxapy/Adwaita-dark-gtk2"
  '(:tags ["x11" "desktop" "theme"]))
(hoarder:fetch "rgcjonas/adwaita-semidark"
  '(:tags ["x11" "desktop" "theme"]))
(hoarder:fetch "chekavy/cheser-gtk2-theme"
  '(:tags ["x11" "desktop" "theme"]))
(hoarder:fetch "GNOME/gnome-themes-standard"
  '(:tags ["x11" "desktop" "theme" "gnome"]
    :download nil))
(hoarder:fetch "GNOME/gtk"
  '(:tags ["x11" "desktop" "theme" "gnome"]
    :download nil))
(hoarder:fetch "diegogangl/adwaita-neutral"
  '(:tags ["x11" "desktop" "theme" "gnome"]))
(hoarder:fetch "madmalik/mononoki"
  '(:tags ["font"]))
(hoarder:fetch "ewust/telex"
  '(:tags ["tor" "censorship" "proxy"]
    :description "https://telex.cc
 https://www.youtube.com/feed/subscriptions"))
(hoarder:fetch "https://gitlab.com/gnutls/gnutls.git"
  '(:tags ["tls" "security"]
    :recursive t
    :download nil))
(hoarder:fetch "novoid/filetags"
  '(:tags ["tagging" "file_management"]
    :memo "[[http://karl-voit.at/2017/08/28/filetags-tagtrees/][Filetags now features tagtrees as well]]
[[http://karl-voit.at/managing-digital-photographs/][Managing Digital Files (Like Photographs) in Files and Folders]]"))
(hoarder:fetch "key-amb/clenv"
  '(:tags ["shell" "rbenv"]))
(hoarder:fetch "git://git.xfce.org/xfce/thunar"
  '(:tags ["xfce" "file_manager"]))
(hoarder:fetch "git://git.xfce.org/xfce/xfce4-dev-tools"
  '(:tags ["xfce" "file_manager"]))
(hoarder:fetch " https://git.torproject.org/tor.git")
(hoarder:fetch "https://code.qt.io/qt/qt5.git"
  '(:tags ["qt" "qt5" "desktop" "toolkit"]))
(hoarder:fetch "ryukinix/mal"
  '(:tags ["python" "MyAnimeList" "MAL" "lainchan"]
    :description "https://lainchan.org/%CE%BB/res/16486.html"))
(hoarder:fetch "cutestrap/cutestrap"
  '(:tags ["css" "bootstrap" "framework"]))
(hoarder:fetch "andlabs/libui"
  '(:tags ["gui" "gtk" "linux" "mac" "windows"]))
(hoarder:fetch "caskroom/homebrew-fonts"
  '(:tags ["homebrew" "font"]))
(hoarder:fetch "Lacsap-/4scanner"
  '(:tags ["4chan" "lainchan" "python"]))
(hoarder:fetch "c-cube/sequence"
  '(:tags ["ocaml" "sequence" "utility"]
    :description "http://cedeela.fr/%7Esimon/software/sequence/Sequence.html"))
(hoarder:fetch "cute-jumper/monad.el"
  '(:tags ["monad" "emacs"]))
(hoarder:fetch "blyxxyz/remotely")
(hoarder:fetch "ciromattia/kcc"
  '(:tags ["kindle" "mobi" "epub"]))
(hoarder:fetch "ballsackwm/ballsackwm"
  '(:tags ["wm" "x11"]))
(hoarder:fetch "bhilburn/powerlevel9k"
  '(:tags ["zsh" "powerline"]))
(hoarder:fetch "gabrielelana/awesome-terminal-fonts"
  '(:tags ["terminal" "powerline" "font" "icon"]))
(hoarder:fetch "Lokaltog/powerline-fonts"
  '(:tags ["powerline" "font" "icon"]))
(hoarder:fetch "Mayccoll/Gogh"
  '(:tags ["colorscheme" "gnome" "elementaryos" "terminal"]))
(hoarder:fetch "supermarin/YosemiteSanFranciscoFont"
  '(:tags ["font" "OSX"]))
(hoarder:fetch "horst3180/arc-firefox-theme"
  '(:tags ["theme" "firefox"]))
(hoarder:fetch "derekstavis/plugin-fonts"
  '(:tags ["fish" "font" "oh-my-fish"]))
(hoarder:fetch "flok99/httping"
  '(:tags ["http" "ping"]))
(hoarder:fetch "farrokhi/dnsdiag"
  '(:recursive t
    :tags ["dns" "ping" "network"]))
(hoarder:fetch "mozilla/gecko-dev"
  '(:tags ["firefox" "browser"]
    :download nil))
(hoarder:fetch "tudurom/rainbou"
  '(:tags ["colorscheme" "firefox" "st" "urxvt" "vimperator" "webcolors"]))
(hoarder:fetch "tudurom/cloudy-gtk"
  '(:tags ["theme" "gtk"]))
(hoarder:fetch "uasi/skk-emoji-jisyo"
  '(:tags ["skk" "emoji"]))
(hoarder:fetch "Fuuzetsu/torrentinfo"
  '(:tags ["python" "torrent"]))
(hoarder:fetch "dymatic/Archimedes"
  '(:tags ["haskell"]))
(hoarder:fetch "git://git.openbox.org/mikachu/openbox"
  '(:tags ["openbox"]
    :depth nil))
(hoarder:fetch "git://git.openbox.org/dana/obconf"
  '(:depth nil
    :tags ["openbox"]))
(hoarder:fetch "https://gitlab.com/o9000/tint2.git"
  '(:tags ["panel" "openbox" "x11" "wm"]))
(hoarder:fetch "dglava/arc-openbox"
  '(:tags ["theme" "openbox"]))
(hoarder:fetch "https://bitbucket.org/fabriceT/openbox-menu"
  '(:type :hg
    :tags ["openbox"]))
(hoarder:fetch "https://chromium.googlesource.com/webm/libvpx"
  '(:tags ["video" "format" "webm"]
    :type :git
    :depth nil))
(hoarder:fetch "grassmunk/Platinum9"
  '(:tags ["theme" "gtk" "icon" "macos9"]))
(hoarder:fetch "actionless/oomox"
  '(:tags ["theme" "gtk" "openbox"]))
(hoarder:fetch "dylanaraps/dotfiles"
  '(:tags ["openbox"]))
(hoarder:fetch "jurassicplayer/Weeb-Themes"
  '(:tags ["gtk" "openbox" "SDDM" "ksplashx"]))
(hoarder:fetch "fvwmorg/fvwm"
  '(:tags ["wm" "desktop" "x11"]))
(hoarder:fetch "itstaken/dot-files"
  '(:tags ["dotfiles" "fvwm"]))
(hoarder:fetch "vakuum/fvwm-mtp"
  '(:tags ["fvwm"]))
(hoarder:fetch "dkeg/crayolo"
  '(:tags ["xresources" "colorscheme"]))
(hoarder:fetch "awesomeWM/awesome")
(hoarder:fetch "agentd00nut/watch_shows"
  '(:tags ["anime" "anime_on_hand" "python" "mpv"]))
(hoarder:fetch "bellflower2015/pspkg"
  '(:tags ["freebsd" "pkgng" "ports"]
    :description "http://qiita.com/bellflower2015/items/4aa2f388a29b1702dc0e"))
(hoarder:fetch "bibanon/BASC-py4chan"
  '(:tags ["python" "4chan"]))
(hoarder:fetch "snwh/paper-icon-theme"
  '(:tags ["icon"]
    :download nil))
(hoarder:fetch "snwh/paper-gtk-theme"
  '(:tags ["gtk" "theme"]))
(hoarder:fetch "usk81/cook_recipe"
  '(:tags ["recipe" "cooking"]))
(hoarder:fetch "baedert/corebird"
  '(:tags ["gtk" "twitter"]
    :site "http://corebird.baedert.org/"))
(hoarder:fetch "Turpial/Turpial"
  '(:tags ["qt" "gtk" "twitter"]
    :site "http://turpial.org.ve/"))
(hoarder:fetch "lyricat/Hotot"
  '(:tags ["gtk" "qt" "twitter"]))
(hoarder:fetch "muan/emojilib"
  '(:tags ["emoji" "javascript"]))
(hoarder:fetch "notwaldorf/emoji-translate"
  '(:tags ["emoji" "javascript"]))
(hoarder:fetch "chneukirchen/cwm"
  '(:tags ["openbsd" "wm"]))
(hoarder:fetch "Keyamoon/IcoMoon-Free"
  '(:tags ["icon" "font"]))
(hoarder:fetch "tudurom/dotfiles"
  '(:tags ["cwm" "bspwm" "firefox" "reddit" "unixporn"]
    :download nil))
;; (hoarder:fetch "git://arcetera.moe/pg.git"
;;   '(:tags ["pager"]))
(hoarder:fetch "cboxdoerfer/fsearch"
  '(:tags ["qt" "gtk" "everything" "search"]))
(hoarder:fetch "urob/fvwm-tiling"
  '(:tags ["fvwm" "tiling" "wm"]
    :description "https://www.reddit.com/r/unixporn/comments/1oxszb/debian_fvwm2_what_lives_on_my_stable_partition/ccwrtt6"))
(hoarder:fetch "rubykat/FvwmPiazza"
  '(:tags ["fvwm" "tiling" "wm"]
    :description "https://www.reddit.com/r/unixporn/comments/1oxszb/debian_fvwm2_what_lives_on_my_stable_partition/ccwrtt6"))
(hoarder:fetch "u-ra/bar"
  '(:tags ["bar" "panel" "lemonbar" "wm" "desktop"]))
(hoarder:fetch "venam/2bwm"
  '(:tags ["wm" "bar" "panel" "desktop"]))
(hoarder:fetch "cursedhydra/dotfiles-Dracula"
  '(:tags ["i3" "lemonbar" "termite"]
    :description "https://www.reddit.com/r/unixporn/comments/4lsuj1/i3my_first_rice/"))
(hoarder:fetch "robm/dzen"
  '(:tags ["bar" "panel" "wm"])) 
(hoarder:fetch "jaagr/lemonbuddy"
  '(:tags ["bar" "panel" "lemonbar" "wm"]))
(hoarder:fetch "jaagr/dots"
  '(:tags ["dotfiles" "lemonbuddy"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/57g6wp/bspwm_lemonbuddy_my_current_setup/][Too Many Requests]]"
    :download nil))
(hoarder:fetch "dcat/swm"
  '(:tags ["wm"]))
(hoarder:fetch "arcetera/wmrc"
  '(:tags ["wm" "wmutils"]
    :memo "[[https://forum.voidlinux.eu/t/offical-desktop-screenshot-thread/30/27][{Offical} Desktop Screenshot Thread - Applications & Desktop Environments - Void Linux Forum]]"))
(hoarder:fetch "antonio-malcolm/satin"
  '(:tags ["gtk" "theme" "openbox"]))
(hoarder:fetch "antonio-malcolm/corgi-scripts"
  '(:tags ["openbox" "menu" "pipe"]))
(hoarder:fetch "mrshampoo/jeti-filemanager"
  '(:tags ["file" "manager" "ncurses" "cli"]
    :description "https://www.youtube.com/watch?v=5ejIgvBTOc8"))
(hoarder:fetch "moviuro/net-tools"
  '(:tags ["dns"]
    :description "lie-to-me"))
(hoarder:fetch "noctuid/evil-guide"
  '(:tags ["evil" "guide"]))
(hoarder:fetch "MorbZ/OpenSansEmoji"
  '(:tags ["font" "opensans" "emoji" "android"]))
(hoarder:fetch "isaacs/nave"
  '(:tags ["setup" "node" "javascript"]))
(hoarder:fetch "fullermd/ctwm-mirror"
  '(:tags ["twm" "ctwm" "mirror" "wm"]))
(hoarder:fetch "git://git.savannah.nongnu.org/ratpoison.git"
  '(:tags ["wm" "tiling" "stumpwm"]))
(hoarder:fetch "gandelman-a/ratpoison"
  '(:tags ["wm" "ratpoison" "configuration"]))
(hoarder:fetch "git://z3bra.org/dotfiles"
  '(:tags ["dotfiles"]))
(hoarder:fetch "dimatura/rpbar"
  '(:tags ["bar" "ratpoison" "panel"]))
(hoarder:fetch "jbaber/ratpoison_scripts"
  '(:tags ["ratpoison"]))
(hoarder:fetch "raboof/notion"
  '(:tags ["tiling" "wm"]))
(hoarder:fetch "http://git.suckless.org/dwm"
  '(:type :git
    :depth nil
    :tags ["dwm" "wm" "tiling"]))
(hoarder:fetch "http://www.6809.org.uk/repos/evilwm.git"
  '(:tags ["wm"]
    :depth nil))
(hoarder:fetch "bwesterb/claviger"
  '(:tags ["ssh" "python"]))
(hoarder:fetch "Shinmera/portacle"
  '(:tags ["lisp" "sbcl" "emacs" "build" "portable"]
    :description "static building of emacs memo https://github.com/Shinmera/portacle/blob/master/build/STATICEMACS.md"))
(hoarder:fetch "http://offog.org/git/vdesk.git"
  '(:tags ["virtual_desktop" "workspace" "twm"]
    :depth nil))
(hoarder:fetch "git://git.code.sf.net/p/vtwm/code"
  '(:name "vtwm"
    :tags ["wm" "twm"]))
(hoarder:fetch "git://git.code.sf.net/p/flwm/flwm"
  '(:tags ["wm" "fltk"]))
(hoarder:fetch "teracow/googliser"
  '(:tags ["bash" "wget" "google" "image" "search" "download" "shellscript"]))
(hoarder:fetch "http://projects.pekdon.net/git/geh.git"
  '(:depth nil
    :tags ["image" "viewer" "feh"]))
(hoarder:fetch "syythe/tangerine"
  '(:tags ["artwiz" "lemon" "font" "bitmap"]))
(hoarder:fetch "http://www.pekwm.org/git/pekwm.git"
  '(:tags ["wm"]
    :depth nil))
(hoarder:fetch "http://projects.pekdon.net/git/pekwm_menu_tools.git"
  '(:tags ["pekwm"]
    :depth nil))
(hoarder:fetch "tbilik/timix-dark"
  '(:tags ["gtk" "theme" "numix" "oomox"]))
(hoarder:fetch "tbilik/Linux-Configs"
  '(:tags ["i3" "dotfiles" "emacs"]))
(hoarder:fetch "https://bitbucket.org/portix/dwb.git"
  '(:depth nil
    :tags ["browser" "webkit" "gtk"]))
(hoarder:fetch "xero/stylez"
  '(:tags ["css" "firefox" "stylish"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/617bj8/how_do_you_deal_with_white_background_objects/][Too Many Requests]]"))
(hoarder:fetch "http://hack.org/mc/git/mcwm"
  '(:type :git
    :tags ["wm" "2bwm"]
    :depth nil))
(hoarder:fetch "nealey/9wm"
  '(:tags ["wm" "plan9" "rio"]))
(hoarder:fetch "Cloudef/monsterwm-xcb"
  '(:tags ["wm" "monsterwm" "xcb"]))
(hoarder:fetch "c00kiemon5ter/monsterwm"
  '(:tags ["wm"]))
(hoarder:fetch "hchargois/gohufont"
  '(:tags ["font" "bitmap"]))
(hoarder:fetch "kori/metis-font"
  '(:tags ["font" "gofu" "bitmap" "tewi" "profont"]))
(hoarder:fetch "lucy/tewi-font"
  '(:tags ["font" "bitmap"]))
(hoarder:fetch "conformal/xombrero"
  '(:tags ["browser" "webkit"]))
(hoarder:fetch "git://git.osdn.jp/gitroot/ninix-aya/ruby-gtk3.git"
  '(:tags ["ukagaka" "gtk" "ruby" "python"]
    :name "ninix-ruby"))
(hoarder:fetch "pomf/pomf"
  '(:tags ["image" "uploader" "pomf"]))
(hoarder:fetch "Nutomic/ensichat"
  '(:tags ["android" "chat" "p2p"]))
(hoarder:fetch "https://notabug.org/zPlus/freepost"
  '(:type :git
    :depth nil
    :tags ["news" "hacker_news"]))
(hoarder:fetch "cquanu/github-dark"
  '(:tags ["github" "css" "theme"]))
(hoarder:fetch "https://notabug.org/zPlus/meta"
  '(:tags ["metadata" "information" "database" ]
    :description "http://meta.peers.community/"
    :type :git
    :depth nil))
(hoarder:fetch "schandinat/green"
  '(:tags ["pdf" "terminal" "cli"]))
(hoarder:fetch "https://notabug.org/desktopd/hls-fetch"
  '(:type :git
    :depth nil
    :tags ["hls" "http_live_streaming" "download" "ios"]))
(hoarder:fetch "Usuka/Dotfiles-Ricing"
  '(:tags ["rice" "firefox" "dotfiles" "4chan" "desktop"]
    :memo "[[https://lainchan.org/tech/res/32046.html#32177][tech - Desktops]]"))
(hoarder:fetch "joewing/jwm"
  '(:tags ["wm"]))
(hoarder:fetch "i3/i3"
  '(:tags ["wm" "tiling" "i3bar" "ldjson" "json"]
    :memo "[[https://i3wm.org/docs/i3bar-protocol.html][i3: i3bar input protocol]]"))
(hoarder:fetch "melezhik/sparrow"
  '(:tags ["make" "task"]))
(hoarder:fetch "kbrgl/scroller"
  '(:tags ["panel" "bar" "lemonbar"]))
(hoarder:fetch "RizonRice/rizonrice.github.io"
  '(:tags ["rice" "desktop" "x11" "linux"]
    :description " http://rizonrice.github.io/resources#wallpapers
https://github.com/RizonRice/rizonrice.github.io/blob/master/resources.md"))
(hoarder:fetch "azu/JavaScript-Plugin-Architecture"
  '(:tags ["javascript" "reading" "plugin"]))
(hoarder:fetch "br101/horst"
  '(:tags ["network" "lan" "analyzer"]))
(hoarder:fetch "https://notabug.org/GNU/FM"
  '(:tags ["gnufm" "streaming" "music"]
    :type :git
    :depth nil))
(hoarder:fetch "https://notabug.org/kl3/scripts"
  '(:tags ["dwm" "shellscript"]
    :type :git
    :depth nil))
(hoarder:fetch "https://neetcode.org/killthejava/yourec"
  '(:tags ["live" "streamnig" "younow"]
    :type :git
    :depth nil
    :download nil))
(hoarder:fetch "https://neetcode.org/killthejava/comix-plus"
  '(:tags ["comix" "comic" "python" "gtk"]
    :type :git
    :depth nil
    :download nil))
(hoarder:fetch "https://neetcode.org/apt-get/touhou-linux-guide"
  '(:tags ["touhou" "linux" "wine" "playonlinux" "game"]
    :type :git
    :depth nil
    :download nil))
(hoarder:fetch "https://neetcode.org/apt-get/visual-novel-linux-guide"
  '(:tags ["visual_novel" "linux" "wine" "playonlinux" "game"]
    :type :git
    :depth nil
    :download nil))
(hoarder:fetch "https://neetcode.org/softashell/patchy"
  '(:tags ["mpd" "golang"]
    :description "A synchronized online jukebox - Forked from tenshi"
    :type :git
    :depth nil
    :download nil))
(hoarder:fetch "https://neetcode.org/appwl/nyaa-cli"
  '(:tags ["nyaa" "torrent" "golang"]
    :type :git
    :depth nil
    :download nil))
(hoarder:fetch "TaylanUB/misc"
  '(:tags ["dotfiles"]))
(hoarder:fetch "pfraze/beaker"
  '(:tags ["p2p" "hyperdrive"]))
(hoarder:fetch "nodejs/node"
  '(:download nil))
(hoarder:fetch "ubuntufag/System6-theme"
  '(:tags ["theme" "xfce" "macintosh"]))
(hoarder:fetch "SamVerschueren/listr"
  '(:tags ["task" "make" "javascript"]))
(hoarder:fetch "sargon/trayer-srg"
  '(:tags ["tray" "panel" "desktop"]))
(hoarder:fetch "raboof/notion"
  '(:tags ["lua" "wm" "tiling" "tabbed"]))
(hoarder:fetch "ncw/rclone"
  '(:tags ["cloud" "storage" "dropbox" "google_drive" "golang"]
    :download nil))
(hoarder:fetch "i3/i3lock"
  '(:tags ["i3" "desktop" "screen" "lock"]))
(hoarder:fetch "lahwaacz/sxlock"
  '(:tags ["desktop" "screen" "lock" "screen_locker"]))
(hoarder:fetch "https://notabug.org/Digit/nightman.git"
  '(:type :git
    :depth nil
    :tags ["css"]))
(hoarder:fetch "https://notabug.org/isengaara/qtau.git"
  '(:type :git
    :depth nil
    :tags ["UTAU" "qt"]))
(hoarder:fetch "ln-north/svg_font"
  '(:tags ["svg" "font" "javascript"]))
(hoarder:fetch "CristianHenzel/ClipIt"
  '(:tags ["clipboard" "clipboard_manager" "gtk" "desktop"]))
(hoarder:fetch "manjaro/desktop-settings"
  '(:tags ["dotfiles" "configuration" "i3wm" "desktop" "manjaro"]
    :description "https://forum.manjaro.org/t/manjaro-i3-16-06-rc-stable/537/78"))
(hoarder:fetch "tvraman/emacspeak"
  '(:tags ["audio" "emacs" "audible" "speech" "synthesis" "flite" "festival"]
    :description "https://opensource.com/life/16/6/emacspeak-brings-linux-blind"
    :download nil))
(hoarder:fetch "googlei18n/noto-fonts"
  '(:tags ["font" "google"]
    :download nil))
(hoarder:fetch "dj95/lemonbarpy"
  '(:tags ["lemonbar" "i3status" "python" "bar" "panel" "x11"]))
(hoarder:fetch "base16-builder/base16-builder"
  '(:tags ["base16" "colorscheme" "theme"]))
(hoarder:fetch "seenaburns/dex-ui"
  '(:tags ["desktop" "openframeworks"]))
(hoarder:fetch "janbrennen/rice"
  '(:tags ["rice" "desktop" "x11"]))
(hoarder:fetch "rrooij/youtube-dl-qt"
  '(:tags ["youtube-dl" "qt" "youtube"]))
(hoarder:fetch "atareao/youtube-indicator"
  '(:tags ["youtube-dl" "youtube" "python" "gtk"]))
(hoarder:fetch "fent/node-youtube-dl"
  '(:tags ["node" "javascript" "youtube-dl"]))
(hoarder:fetch "4k1k0/homepage"
  '(:tags ["homepage" "startpage" "website" "css" "javascript"]))
(hoarder:fetch "urbit/urbit"
  '(:tags ["p2p" "os" ]
    :description "https://www.youtube.com/watch?v=I94qbWBGsDs"))
(hoarder:fetch "kevinarefunny/my-homepage"
  '(:tags ["homepage" "startpage" "website" "css" ]))
(hoarder:fetch "arclanguage/anarki"
  '(:tags ["scheme" "racket" "arc"]))
(hoarder:fetch "curl/curl"
  '(:tags ["web" "http" "request"]))
(hoarder:fetch "alejandroerickson/spacemacs"
  '(:memo "https://github.com/alejandroerickson/spacemacs/tree/myconfig/layers/media"
    :branch "myconfig"
    :tags ["emms" "spacemacs" "configuration"]))
(hoarder:fetch "jkbrzt/httpie"
  '(:tags ["http" "curl" "web" "request"]))
(hoarder:fetch "buunguyen/octotree"
  '(:tags ["github" "addon" "firefox" "chrome"]))
(hoarder:fetch "libretro/Lakka"
  '(:tags ["game" "emulation" "console" "linux" "openelec" "libretro" "raspberrypi"]
    :download nil))
(hoarder:fetch "jfurrow/flood"
  '(:tags ["rtorrent" "node" "react" "javascript"]))
(hoarder:fetch "dhowe/AdNauseam"
  '(:tags ["adblock" "addon" "firefox" "chrome"]
    :download nil))
(hoarder:fetch "https://notabug.org/SylvieLorxu/Pext.git"
  '(:tags ["python3" "python" "qt" "qml" "gopass" "dmenu" "rofi"]))
(hoarder:fetch "sector-f/admiral"
  '(:tags ["lemonbar" "i3" "i3bar" "bar" "panel" "rust"]))
(hoarder:fetch "zsisco/maxwelm"
  '(:tags ["dwm" "catwm" "wm"]))
(hoarder:fetch "Sonarr/Sonarr"
  '(:tags ["usenet" "torrent" "tv" "movie" "download" "couchpotato" "sickbeard"]))
(hoarder:fetch "Airblader/i3"
  '(:tags ["i3wm" "wm" "tiling" "gap"]))
(hoarder:fetch "qrac/yakuhanjp"
  '(:tags ["font" "noto_sans"]))
(hoarder:fetch "GitAlias/gitalias"
  '(:tags ["git" "alias" "shell"]))
(hoarder:fetch "https://gitlab.com/someshell/someshell.git"
  '(:tags ["common-lisp" "shell" "eshell"]))
(hoarder:fetch "noctuid/evil-guide"
  '(:tags ["evil" "reading" "tutorial"]))
(hoarder:fetch "tista500/Adapta"
  '(:tags ["gtk" "gnome" "theme"]))
(hoarder:fetch "antirez/dump1090"
  '(:tags ["rtl-sdr" "radio" "ham"]
    :description " [[http://adrianchadd.blogspot.jp/PRIVOXY-FORCE/2015/06/rtl-sdr-on-freebsd-or-hey-cool-i-live.html][Adrian Chadd's Ramblings]] "))
(hoarder:fetch "https://notabug.org/PangolinTurtle/prometheus-r7rs.git"
  '(:tags ["scheme" "oop" "r7rs"]))
(hoarder:fetch "scheme/scsh"
  '(:tags ["scheme" "shell" "scheme48"]))
(hoarder:fetch "https://notabug.org/PangolinTurtle/yasos-r7rs.git"
  '(:tags ["scheme" "oop" "r7rs"]))
(hoarder:fetch "pindexis/marker"
  '(:tags ["zsh" "bash" "python" "shell" "tldr"]))
(hoarder:fetch "tldr-pages/tldr"
  '(:tags ["man" "tldr"]))
(hoarder:fetch "torbsd/openbsd-ports"
  '(:tags ["tor" "tor_browser_bundle" "firefox" "openbsd"]))
(hoarder:fetch "sindresorhus/conf"
  '(:tags ["configuration" "npm" "javascript"]))
(hoarder:fetch "sindresorhus/env-paths"
  '(:tags ["npm" "javascript" "evironment" "variable" "path" "xdg"]))
(hoarder:fetch "gentoo/portage"
  '(:tags ["gentoo" "portage" "package"]))
(hoarder:fetch "reyjrar/CLI-Helpers"
  '(:tags ["prel" "cli" "color"]
    :description "[[https://www.youtube.com/watch?v=DzRYGudfu0s][2016 - Writing Command Line Tools for Other People‎ - BradLhotsky - YouTube]]"))
(hoarder:fetch "PurpleI2P/i2pd"
  '(:tags ["i2p" "c++" ]))
(hoarder:fetch "ManrajGrover/SingleDivProject"
  '(:tags ["html" "css"]))
(hoarder:fetch "https://git.xiph.org/libao.git"
  '(:tags ["audio" "wav"]
    :depth nil))
;; (hoarder:fetch "tbds/FreeContributor"
;;   '(:tags ["dns" "adblock" "hosts" "dnsmasq" "unbound" "pdnsd"]))
(hoarder:fetch "https://gist.github.com/xguse/6259275.git"
  '(:type :git
    :tags ["noise" "sox" "audio" "synthesis"]
    :name "noise.sh"))
(hoarder:fetch "https://gist.github.com/rsvp/1209835.git"
  '(:type :git
    :tags ["noise" "sox" "audio" "synthesis"]
    :name "noise.sh"))
(hoarder:fetch "sindresorhus/emoj"
  '(:tags ["emoji" "npm" "javascript" "deep_learning" "suggestion"]))
(hoarder:fetch "sleepypikachu/still-good-food"
  '(:tags ["cooking" "bbc" "bbc_good_food" "recipe" "open_recpe_format" "json" "golang" "scraping"]))
(hoarder:fetch "fictivekin/openrecipes"
  '(:tags ["cooking" "recipe" "json" "schema"]
    :description "[[http://schema.org/Recipe]]"))
(hoarder:fetch "torque/mpv-progressbar"
  '(:tags ["mpv" "lua" "moonscript"]))
(hoarder:fetch "donmaiq/mpv-scripts"
  '(:description "A collection of mpv scripts"
    :tags ["lua" "mpv" "mpv-script" "script"]
    :memo "https://github.com/donmaiq/mpvconfigs/blob/master/radio.lua"))
(hoarder:fetch "rossy/mpv-repl"
  '(:description "A graphical REPL for mpv input commands"
    :tags ["isc" "lua" "mpv" "mpv-script" "repl" "script"]))
(hoarder:fetch "donmaiq/Mpv-Playlistmanager"
  '(:tags ["mpv" "lua" "playlist"]))
(hoarder:fetch "https://gist.github.com/haasn/7919afd765e308fa91cbe19a64631d0f.git"
  '(:tags ["mpv" "image" "image_viewer" "lua"]
    :name "image.lua"))
(hoarder:fetch "substack/hyperkv"
  '(:tags ["hyperlog" "p2p" "npm" "javascript" "database" "key_value_store"]))
(hoarder:fetch "substack/hyperlog-talk"
  '(:tags ["hyperlog" "p2p" "npm" "javascript" ]
    :description " [[https://www.youtube.com/watch?v=5jA6vSOwY1Y][JSCamp Romania 2016 - \"P2P ARCHITECTURE\" with James Halliday - YouTube]] "))
(hoarder:fetch "https://gist.github.com/khoomeister/5010943.git"
  '(:name "the-way-of-the-substack.md"
    :tags ["substack" "npm" "development" "javascript"]))
(hoarder:fetch " https://gist.github.com/substack/5075355.git"
  '(:name "substack-12stepes"
    :description "Substack’s 12 Steps"
    :tags ["substack" "npm" "development" "javascript"]))
(hoarder:fetch "yasm/yasm"
  '(:tags ["assembler"]))
(hoarder:fetch "https://bitbucket.org/multicoreware/x265"
  '(:type :hg
    :tags ["multimedia" "video" "codec" "h265" "hevc"]
    :download nil))
(hoarder:fetch "NixOS/patchelf"
  '(:tags ["elf" "binary" "library" "rpath" "ldconfig" "homebrew" "ld_library_path"]))
(hoarder:fetch "neeasade/xst"
  '(:tags ["st" "terminal"]))
(hoarder:fetch "AleXoundOS/mpv-cut"
  '(:tags ["mpv" "video" "video_editing" "lua" "haskell"]))
(hoarder:fetch "Kagami/mpv_slicing"
  '(:tags ["mpv" "video" "video_editing" "lua" ]))
(hoarder:fetch "ccd0/mpv-cutting-scripts"
  '(:tags ["mpv" "video" "video_editing" "lua" ]))
(hoarder:fetch "Matroska-Org/libmatroska"
  '(:tags ["mkv" "video" "format" "container"]))
(hoarder:fetch "Matroska-Org/libebml"
  '(:tags ["mkv" "video" "format" "container"]))
(hoarder:fetch "gcc-mirror/gcc"
  '(:tags ["c" "compiler"]
    :download nil))
(hoarder:fetch "kovetskiy/spin"
  '(:tags ["golang" "cli" "spinner" "indicator" "progress"]))
(hoarder:fetch "rxse/crud"
  '(:tags ["slop" "x11" "desktop"]))
(hoarder:fetch "https://gist.github.com/XVilka/8346728.git"
  '(:tags ["color" "colorscheme" "cui" "terminal" "tmux" "urxvt" "st"]))
(hoarder:fetch "digidem/osm-p2p-db"
  '(:tags ["osm" "open_street_map" "p2p" "hyperlog"]))
;; (hoarder:fetch "https://notabug.org/koz.ross/awesome-gamedev.git"
;;   '(:tags ["game" "awesome_list"]))
(hoarder:fetch "nholstein/OpenDoas"
  '(:tags ["openbsd" "sudo" "doas" "root"]))
(hoarder:fetch "slicer69/doas"
  '(:tags ["openbsd" "sudo" "doas" "root" "freebsd"]))
(hoarder:fetch "SawfishWM/sawfish"
  '(:tags ["wm" "rep" "scheme"]))
(hoarder:fetch "SawfishWM/librep"
  '(:description "fast, lightweight, versatile lisp environment"))
(hoarder:fetch "i-tu/Hasklig"
  '(:tags ["font" "ligature" "haskell"]
    :download nil))
(hoarder:fetch "nikolas/jmk-x11-fonts"
  '(:tags ["font" "neep"]))
(hoarder:fetch "https://bitbucket.org/pandozer/rofi-clipboard-manager.git"
  '(:tags ["rofi" "clipboard" "python"]))
(hoarder:fetch "cantino/huginn"
  '(:tags ["ifttt" "yahoo_pipes" "automation"]))
(hoarder:fetch "salty-horse/ibus-uniemoji"
  '(:tags ["unicode" "emoji" "ibus" "python" "input_method"]))
(hoarder:fetch "mpv-player/mpv-build"
  '(:tags ["mpv" "build" "compile"]))
(hoarder:fetch "Jerry-SDC/fvwmx"
  '(:tags ["fvwm" "configuration"]))
(hoarder:fetch "RaoulSchaffranek/Modelling-A-Purely-Functional-Subset-Of-ECMAScript-2015"
  '(:tags ["functional_programming" "javascript"]))
(hoarder:fetch "domus123/hashDiskDB"
  '(:tags ["common_lisp" "database" "hash"]))
(hoarder:fetch "A1phaZer0/monsterwm-xinerama"
  '(:tags ["monsterwm" "wm" "tiling_wm"]))
(hoarder:fetch "https://notabug.org/kl3/dwm.git"
  '(:tags ["fork" "dwm" "wm" "tilling_wm"]))
(hoarder:fetch "https://notabug.org/rain1/catbuf.git"
  '(:tags ["c" "programming" "string"]))
(hoarder:fetch "https://notabug.org/shymega/dotfiles.git"
  '(:tags ["dotfiles" "configuration" "stumpwm" "tmux" "mpv" ]))
(hoarder:fetch "tewe/uroboro"
  '(:tags ["uroboro" "haskell" "pattern_match" "language"]))
(hoarder:fetch "Homebrew/homebrew-core"
  '(:tags ["macOS" "package" "package_manager"]))
(hoarder:fetch "Linuxbrew/homebrew-core"
  '(:tags ["package" "package_manager" "homebrew" "linux"]
    :memo "[[http://qiita.com/thermes/items/926b478ff6e3758ecfea][Linuxbrew のススメ - Qiita]]"
    :download nil))
(hoarder:fetch "vitalif/grive2"
  '(:tags ["google_drive" "grive"]))
(hoarder:fetch "koroshiya/batoto-downloader-py"
  '(:tags ["download" "python" "batoto" "manga"]))
(hoarder:fetch "inbasic/turbo-download-manager"
  '(:tags ["download_manager" "addon" "firefox" "linux" "android"]))
(hoarder:fetch "freebsd/pkg"
  '(:tags ["pkgng" "freebsd" "package" "package_manager"]))
(hoarder:fetch "Bionus/imgbrd-grabber"
  '(:tags ["booru" "image_board" "qt"]))
(hoarder:fetch "https://gist.github.com/jabranham/31279f60d490b10d101652923706ba19.git"
  '(:tags ["evernote" "org-mode"]
    :name "evernote-to-org-mode.org"
    :memo "[[https://www.reddit.com/r/emacs/comments/4qmi0u/evernote_to_org_mode/][Evernote to org mode : emacs]]"))
(hoarder:fetch "Wildog/Ariafred"
  '(:tags ["macOS" "alfred" "aria2"]))
(hoarder:fetch "gini-modules/image-cache"
  '(:tags ["aria2" "server" "image"]))
(hoarder:fetch "https://bitbucket.org/alekseyt/leech.git"
  '(:tags ["torrent" "rss" "feed" "aria2"]))
(hoarder:fetch "orangeduck/imgcurses"
  '(:tags ["ncurses" "image" "terminal" "image_viewer"]))
(hoarder:fetch "https://gitgud.io/RomeIsBurning/ClearView-Qt.git"
  '(:tags ["qt" "image" "image_viewer"]))
(hoarder:fetch "https://gitgud.io/jangoknight7/uranium-browser.git"
  '(:tags ["browser" "chromium"]
    :download nil))
(hoarder:fetch "https://gitgud.io/drylemon/bitslut.git"
  '(:tags ["torrent" "libtorrent"]))
(hoarder:fetch "https://gitgud.io/sn0w75/MMP.git"
  '(:tags ["MMD" "MikuMikuDance" "linux" "PMX" "VMD"]))
(hoarder:fetch "https://gitgud.io/fbt/sx-open.git"
  '(:tags ["xdg-open"]))
;; (hoarder:fetch "https://gitgud.io/dwarvenbuffet/80s-skeleton.git"
;;   '(:tags ["game" "lua" "löve"]))
(hoarder:fetch "https://gitgud.io/KonaKona/nettool.git"
  '(:tags ["network" "linux"]))
;; (hoarder:fetch "https://gitgud.io/Apogate/saguaro.git")
(hoarder:fetch "spootTheLousy/saguaro"
  '(:tags ["imageboard"]
    :memo "[[http://saguaroimgboard.tk/][Saguaro Imageboard Software]]"))
;; (hoarder:fetch "https://gitgud.io/dtluna/soundgasm-dl.git"
;;   '(:tags ["soundgasm" "download" "javascript"]))
(hoarder:fetch "ocochard/BSDRP"
  '(:tags ["freebsd" "bsd" "router" "quagga" "bird"]))
(hoarder:fetch "https://gist.github.com/10553721.git"
  '(:name "box-linux.sh"))
(hoarder:fetch "xtetsuji/encoreutils"
  '(:tags ["perl" "coreutils" "xargs" "rm" "rmdir"]
    :memo "[[http://post.tetsuji.jp/2016/06/gentle_unlink/][穏やかな速度でファイルを削除するプログラム gentle_unlink を書いた | #interest_ae]]"))
(hoarder:fetch "haasn/gentoo-conf"
  '(:tags ["mpv"]
    :memo "[[https://github.com/haasn/gentoo-conf/blob/nanodesu/home/nand/.mpv/scripts/avail/skipchapters.lua][gentoo-conf/skipchapters.lua at nanodesu · haasn/gentoo-conf · GitHub]]"))
(hoarder:fetch "Nakilon/mll"
  '(:tags ["ruby" "utility" "function" "wolfram" "wolfram_mathematica" "haskell"]))
(hoarder:fetch "git://git.code.sf.net/p/roxterm/code"
  '(:name "roxterm"
    :tags ["terminal" "x11"]))
(hoarder:fetch "moka-project/faba-icon-theme"
  '(:tags ["moka" "icon" "x11"]))
(hoarder:fetch "moka-project/faba-mono-icons"
  '(:tags ["moka" "icon" "x11"]))
(hoarder:fetch "moka-project/moka-icon-theme"
  '(:tags ["moka" "icon" "x11"]
    :download nil))
(hoarder:fetch "tahoe-lafs/tahoe-lafs"
  '(:tags ["storage" "dropbox" "backup" "python"]
    :memo "[[https://archive.org/details/DecentralizedWeb20160609pt1?start=21490][Decentralized Web Summit Meetup - June 9 - Day 3 : Internet Archive : Free Do...]]"))
(hoarder:fetch "mediachain/mediachain"
  '(:tags ["database" "ipfs" "media"]
    :memo "[[https://archive.org/details/DecentralizedWeb20160609pt1?start=21490][Decentralized Web Summit Meetup - June 9 - Day 3 : Internet Archive : Free Do...]]"))
(hoarder:fetch "dloa/alexandria-browser"
  '(:tags ["p2p" "media" "ipfs" "decentralized" "decentralized_library_of_alexandria" "alexandria" "bitcoin" "florincoin" "imogen_heap"]
    :site "http://alexandria.io/browser/#/media"
    :memo "[[https://archive.org/details/DecentralizedWeb20160609pt1?start=21490][Decentralized Web Summit Meetup - June 9 - Day 3 : Internet Archive : Free Do...]]"   ))
(hoarder:fetch "openannotation/annotator"
  '(:tags ["annotation" "chrome" "javascript" "open_annotation"]
    :site "http://annotatorjs.org/"
    :memo "[[https://archive.org/details/DecentralizedWeb20160609pt1?start=21490][Decentralized Web Summit Meetup - June 9 - Day 3 : Internet Archive : Free Do...]]"))
(hoarder:fetch "zcash/zcash"
  '(:tags ["bitcoin" "ethereum" "currency"]
    :site "https://z.cash"
    :memo "[[https://archive.org/details/DecentralizedWeb20160609pt1?start=21490][Decentralized Web Summit Meetup - June 9 - Day 3 : Internet Archive : Free Do...]]"))

(hoarder:fetch "kgryte/awesome-peer-to-peer"
  '(:tags ["p2p" "awesome_list"]))
(hoarder:fetch "nginnever/swarmchan"
  '(:tags ["ipfs" "chan" "bbs" "ethereum"]))
(hoarder:fetch "fazo96/ipfs-boards"
  '(:tags ["ipfs" "chan" "bbs"]))
(hoarder:fetch "ipfs/examples"
  '(:tags ["ipfs"]))
(hoarder:fetch "ipfs/awesome-ipfs"
  '(:tags ["awesome_list" "ipfs"]))
(hoarder:fetch "joshbuchea/HEAD"
  '(:tags ["head" "html"]))
(hoarder:fetch "https://gist.github.com/nownabe/85d8595fd142adc426fbfaf2bab015e0.git"
  '(:name "git_commit_template"
    :site "http://memo.goodpatch.co/2016/07/beautiful-commits-with-emojis/"))
(hoarder:fetch "kokoko3k/xt7-player-mpv"
  '(:tags ["mpv" "qt" "gambas" "gui"]))
(hoarder:fetch "u8sand/Baka-MPlayer"
  '(:tags ["mpv" "qt" "gui"]))
(hoarder:fetch "gnome-mpv/gnome-mpv"
  '(:tags ["mpv" "gnome" "gtk" "gui"]))
(hoarder:fetch "git://git.sv.gnu.org/autoconf-archive.git"
  '(:tags ["gnu" "autoconf"]))
(hoarder:fetch "https://gist.github.com/ElegantMonkey/bba287693830055a6bad90081c1ad4e2.git"
  '(:name "peerflix-hook.lua"
    :tags ["peerflix" "mpv" "lua"]))
(hoarder:fetch "sindresorhus/matcher"
  '(:tags ["javascript" "glob" "regex"]))
(hoarder:fetch "you-dont-need/You-Dont-Need-Javascript"
  '(:tags ["javascript" "css" "example"]
    :download nil))
(hoarder:fetch "vifm/vifm"
  '(:tags ["vim" "file_manager"]))
(hoarder:fetch "pornel/giflossy"
  '(:tags ["gif" "image" "gifsicle"]))
(hoarder:fetch "scheme-requests-for-implementation/srfi-116"
  '(:tags ["scheme" "srfi" "list" "immutable"]))
(hoarder:fetch "VictorBjelkholm/ipfscrape"
  '(:tags ["ipfs" "wget" "bash"]))
(hoarder:fetch "c-base/ipfs-ringpin"
  '(:tags ["ipfs"]))
(hoarder:fetch "orinocoz/pirateflix"
  '(:tags ["javascript" "npm"]))
(hoarder:fetch "haadcode/orbit"
  '(:tags ["ipfs" "chat"]))
(hoarder:fetch "download13/ipfstube"
  '(:tags ["ipfs" "video"]
    :site "http://ipfstube.erindachtler.me/"))
(hoarder:fetch "kohler/gifsicle"
  '(:tags ["gif" "image"]))
(hoarder:fetch "https://gist.github.com/mcandre/eab4166938ed4205bef4.git"
  '(:tags ["torrent" "tracker"]
    :memo " reddit: https://www.reddit.com/r/opentrackerproject/
udp://trackr.sytes.net:80
http://trackr.sytes.net/
udp://tracker.ccc.de:80/announce
 http://tracker.edoardocolombo.eu:6969/announce
udp://tracker.bittor.pw:1337
http://tracker.bittor.pw:1337/announce
udp://tracker.grepler.com:6969/announce
http://tracker.grepler.com:6969/announce
udp://tracker.openbittorrent.com:80/announce
http://opentracker-milanesi.rhcloud.com/announce "))
(hoarder:fetch "ngosang/trackerslist"
  '(:tags ["torrent" "tracker"]))
(hoarder:fetch "cyber-user/Amber"
  '(:tags ["css" "firefox" "cyberpunk"]))
(hoarder:fetch "https://gist.github.com/4430197.git"
  '(:name "inspector-only-black-text.css"
    :tags ["firefox" "css" ]))
(hoarder:fetch "icu-project/icu4c"
  '(:tags ["unicode"]
    :download nil))
(hoarder:fetch "pypa/virtualenv"
  '(:tags ["python"]))
(hoarder:fetch "indiehosters/awesome-librehosters"
  '(:tags ["free" "libre" "server" "code_hosting"]))
(hoarder:fetch "bitwhacker/Anizb"
  '(:tags ["anime" "usenet" "news"]
    :site "https://anizb.org/"))
(hoarder:fetch "ployground/bsdploy"
  '(:tags ["freebsd" "python" "ansible" "amazon_ec2" "ezjail"]))
(hoarder:fetch "https://git.sayonara-player.com/sayonara.git"
  '(:depth nil
    :tags ["qt" "music" "music_player"]))
(hoarder:fetch "bpkg/bpkg"
  '(:tags ["package" "package_manager" "bash"]))
(hoarder:fetch "Pita/ueberDB"
  '(:tags ["database" "couchdb" "elasticsearch" "leveldb" "mongodb" "mysql" "postgres" "redis" "rethinkdb" "sqlite"]))
(hoarder:fetch "i2p/i2p.i2p"
  '(:tags ["p2p"]
    :download nil))
(hoarder:fetch "Continuities/adarkroom"
  '(:tags ["text_adventure" "a_dark_room" "browser"]))
(hoarder:fetch "dragonstudio/ADarkRoomAndroid"
  '(:tags ["text_adventure" "a_dark_room" "a_dark_night" "android"]))
(hoarder:fetch "mafintosh/subleveldown"
  '(:tags ["leveldb" "sublevel" "leveldown" "levelup" "namespace"  "node" "javascript"]))
(hoarder:fetch "juliangruber/level-secondary"
  '(:tags ["leveldb" "sublevel" "multilevel" "index" "node" "javascript"]))
(hoarder:fetch "rvagg/level-spaces"
  '(:tags ["leveldb" "sublevel" "leveldown" "levelup" "namespace"  "node" "javascript"]))
(hoarder:fetch "zimbatm/ffmpeg-static"
  '(:tags ["ffmpeg" "compilation" "static"]))
(hoarder:fetch "false-git/libstudy"
  '(:tags ["freebsd" "library" "gcc" "compilation" "ldconfig"]
    :site "http://qiita.com/false-git@github/items/4b531467788b446a18d2"))
(hoarder:fetch "thcipriani/stdgif"
  '(:tags ["terminal" "gif" "image_viewer" "python" "pillow"]))
(hoarder:fetch "1egoman/biome"
  '(:tags ["node" "javascript" "environment" "environment_variable" "project"]))
(hoarder:fetch "uwm-utility/core"
  '(:tags ["wm" "utility" "uwm"]))
(hoarder:fetch "https://gist.github.com/DeLaGuardo/fe1f3d9397d6ef7468460d54d5601156.git"
  '(:tags ["font" "pragmatapro" "ligature" "emacs" "font-lock"]
    :name "pragmatapro-font-lock-symbols.el"))
(hoarder:fetch "https://gist.github.com/kwf/dea7bc51101083acb95c875140e2a96d.git"
  '(:tags ["font" "pragmatapro" "ligature" "emacs" "font-lock"]
    :name "pretty-pragmata.el"))
(hoarder:fetch "kaushalmodi/.emacs.d"
  '(:tags ["emacs" "dotfiles" "configuration" "org-mode" "outline" "outhsine"]
    :memo "https://github.com/kaushalmodi/.emacs.d/blob/master/setup-files/setup-outshine.el
http://lists.gnu.org/archive/html/help-gnu-emacs/2016-07/msg00093.html "))
(hoarder:fetch "https://notabug.org/Sorch/PyESPEAK"
  '(:tags ["python" "espeak"]
    :type :git
    :depth nil))
(hoarder:fetch "https://notabug.org/mthl/cuirass"
  '(:tags ["guile" "hydra" "scheme" "guix"]
    :type :git
    :depth nil))
(hoarder:fetch "lisp/de.setf.asdf.x"
  '(:tags ["common_lisp" "asdf" "xcvb"]))
(hoarder:fetch "triclops200/quickapp"
  '(:tags ["common_lisp" "project"]))
(hoarder:fetch "fare/xcvb"
  '(:tags ["common_lisp" "asdf"]))
(hoarder:fetch "fare/cl-scripting"
  '(:tags ["common_lisp" "script" "cli"]))
(hoarder:fetch "fare/fare-scripts"
  '(:tags ["common_lisp" "script" "cli"]))
(hoarder:fetch "fare/cl-launch"
  '(:tags ["common_lisp" "script" "cli"]))
(hoarder:fetch "0ncorhynchus/subcmd"
  '(:tags ["common_lisp" "script" "cli"]))
(hoarder:fetch "erjoalgo/erjoalgo-stumpwmrc"
  '(:tags ["common_lisp" "stumpwm" "dotfiles" "configuration"]))
(hoarder:fetch "hmdev/AozoraEpub3"
  '(:tags ["novel" "epub" "java"]))
(hoarder:fetch "whiteleaf7/narou"
  '(:tags ["novel" "epub" "ruby" "aozora_epub"]))
(hoarder:fetch "hashcat/hashcat"
  '(:tags ["password" "crack"]))
(hoarder:fetch "xen0l/awesome-dtrace"
  '(:tags ["dtrace" "freebsd" "trace" "macos" "solaris" "awesome_list"]))
(hoarder:fetch "detailyang/awesome-cheatsheet"
  '(:tags ["awesome_list" "cheatsheet"]))
(hoarder:fetch "libwww-perl/URI"
  '(:tags ["uri" "url" "uri-heuristic" "perl"]
    :memo " URI::Heuristic https://github.com/libwww-perl/URI/blob/master/lib/URI/Heuristic.pm"))
(hoarder:fetch "cafe01/xml-libxml-jquery"
  '(:tags ["xml" "libxml" "jquery" "perl"]))
(hoarder:fetch "ligurio/ttygames"
  '(:tags ["tty" "cli" "terminal" "game"]
    :site "https://bronevichok.ru/ttygames/"))
(hoarder:fetch "bolknote/shellgames"
  '(:tags ["tty" "cli" "terminal" "game" "bash"]))
(hoarder:fetch "0p1pp1/mplayer"
  '(:tags ["mplayer" "tv" "isdb"]))
(hoarder:fetch "possatti/pokemonsay"
  '(:tags ["cowsay" "pokemon"]))
(hoarder:fetch "dvehrs/podget"
  '(:tags ["podcast" "linux"]))
(hoarder:fetch "alexanderby/darkreader"
  '(:tags ["chrome" "css" "theme"]))
(hoarder:fetch "venam/Ascii-Arts"
  '(:tags ["ascii_art"]))
(hoarder:fetch "luminousmen/Kgif"
  '(:tags ["gif" "screen" "screen_capture"]))
(hoarder:fetch "ichinaski/pxl"
  '(:tags ["image" "terminal" "golang"]))
(hoarder:fetch "https://git.pwmt.org/pwmt/zathura.git"
  '(:tags ["pdf"]
    :depth nil))
(hoarder:fetch "egoist/hack"
  '(:tags ["css" "html" "javascript"]))
(hoarder:fetch "tonsky/FiraCode"
  '(:tags ["font" "programming" "ligature"]
    :download nil))
(hoarder:fetch "tonsky/FiraCode.wiki"
  '(:tags ["firacode" "font" "wiki"]))
(hoarder:fetch "AvisoNovate/pretty"
  '(:tags ["clojure" "color" "ansi_color"]))
(hoarder:fetch "razum2um/aprint"
  '(:tags ["clojure" "pretty_print" "color"]))
(hoarder:fetch "sindresorhus/cli-spinners"
  '(:tags ["cli" "terminal" "spinner" "node" "javascript"]))
(hoarder:fetch "sindresorhus/ora"
  '(:tags ["cli" "terminal" "spinner" "node" "javascript"]))
(hoarder:fetch "cmdrkotori/mpc-qt"
  '(:tags  ["mpc" "qt" "mpv"]))
(hoarder:fetch "The-Compiler/qutebrowser"
  '(:tags ["qt" "qt5" "pyqt5" "browser" "webkit"]))
(hoarder:fetch "AeroNotix/lispkit"
  '(:tags ["common_lisp" "webkit" "gtk"]))
(hoarder:fetch "uzbl/uzbl"
  '(:tags ["gtk" "web_browser" "webkit"]
    :site "http://www.uzbl.org/"))
(hoarder:fetch "olzraiti/dotfiles"
  '(:tags ["qutebrowser" "bspwm" "vim"]
    :memo "https://www.reddit.com/r/unixporn/comments/4tklii/bspwm_workflowgif/"))
(hoarder:fetch "https://notabug.org/anthk/dotfiles"
  '(:tags ["fvwm" "libertybsd" "openbsd"]
    :type :git))
(hoarder:fetch "tofuness/Toshocat"
  '(:tags ["node" "electron" "desktop"]))
(hoarder:fetch "shadowproject/shadow"
  '(:tags ["bitcoin" "currency" "anonymity"]))
(hoarder:fetch "mpeterv/hererocks"
  '(:tags ["lua"]))
(hoarder:fetch "un-def/luamb"
  '(:tags ["lua"]))
(hoarder:fetch "https://gist.github.com/livibetter/4fc92125d672da3b392583bfd1035fe8.git"
  '(:name "gh-watch.py"
    :tags ["github" "python"]
    :memo "https://www.youtube.com/watch?v=zNNHO5z650w"))
(hoarder:fetch "https://gist.github.com/livibetter/7140262.git"
  '(:name "gh-trend.py"
    :tags ["github" "python"]))
(hoarder:fetch "dbjergaard/stumpwm-freetype-fonts"
  '(:tags ["stumpwm" "freetype" "font"]))
(hoarder:fetch "Hamuko/nyaamagnet"
  '(:tags ["torrent" "magnet_link" "python"]))
(hoarder:fetch "Hamuko/cum"
  '(:tags ["comic"]))
(hoarder:fetch "Nandaka/PixivUtil2"
  '(:tags ["pixiv" "python"]))
(hoarder:fetch "sketchpunk/opencomicreader"
  '(:tags ["comic" "android"]))
(hoarder:fetch "e40/tget"
  '(:tags ["flexget" "torrent" "common_lisp"]))
(hoarder:fetch "Shinmera/ubiquitous"
  '(:tags ["common_lisp" "configuration"]))
(hoarder:fetch "nibbula/useless-pile-of-junk-with-a-catchy-name"
  '(:tags ["common_lisp" "utility"]))
(hoarder:fetch "OlafMerkert/ol-utils"
  '(:tags ["common_lisp" "utility" "on_lisp" "let_over_lambda"]))
(hoarder:fetch "singy15/lclos"
  '(:tags ["common_lisp" "clos" "oop" "prototypal" "prototype"]))
(hoarder:fetch "sotojuan/excows"
  '(:tags ["elixir" "cows"]))
(hoarder:fetch "tobiasbueschel/awesome-pokemon"
  '(:tags ["pokemon" "awesome_list"]))
(hoarder:fetch "sotojuan/tapes"
  '(:tags ["download" "african" "music"]))
(hoarder:fetch "sotojuan/nani"
  '(:tags ["anilist" "node" "javascript"]))
(hoarder:fetch "https://notabug.org/kl3/dotfiles"
  '(:type :git
    :tags ["dotfiles" "configuration"]))
(hoarder:fetch "https://neetcode.org/Tomoko/fourchex.git"
  '(:tags ["4chan" "elixir"]
    :depth nil
    :download nil))
(hoarder:fetch "nbari/freebsd"
  '(:tags  ["freebsd" "configuration" "kernel" "jail"]))
(hoarder:fetch "hemanth/functional-programming-jargon"
  '(:tags ["functional" "programming" "jargon" "term" "reference" "example" "javascript" "monad"]))
(hoarder:fetch "sindresorhus/pure"
  '(:tags ["zsh" "pure" "terminal" "prompt"]))
(hoarder:fetch "Ranks/emoji-alpha-codes"
  '(:tags ["emoji" "emoji_alpha_codes" "github" "json" "csv"]))
(hoarder:fetch "sindresorhus/superb"
  '(:tags ["json" "word" "english"]))
(hoarder:fetch "meh/screenruster-saver-laughing_man"
  '(:tags ["screensaver" "rust"]
    :memo "https://www.reddit.com/r/unixporn/comments/4ugrqt/oc_ive_been_doing_some_testing_of_animated/"))
(hoarder:fetch "BasedArno/scripts"
  '(:tags ["script" "wallpaper" "screensaver" "webm" "gif" "xwinwrap"]
    :memo " https://github.com/BasedArno/scripts/blob/master/wp
https://www.reddit.com/r/unixporn/comments/4ugrqt/oc_ive_been_doing_some_testing_of_animated/"))
(hoarder:fetch "sxthe/yuki"
  '(:tags ["bitmap" "font"]))
(hoarder:fetch "jsphsnkr/dotfiles"
  '(:tags ["bspwm"]
    :memo "https://www.reddit.com/r/unixporn/comments/4ue769/bspwm_minimowl/"))
(hoarder:fetch "Luke-Nukem/dot_configs2"
  '(:memo "https://www.reddit.com/r/unixporn/comments/4uf9gy/difference_between_bspwm_and_i3wm/"))
(hoarder:fetch "k2jp/abp-japanese-filters"
  '(:tags ["advertisement" "adblock"]))
(hoarder:fetch "git://git.gnome.org/gucharmap"
  '(:tags ["unicode" "character" "font"]))
(hoarder:fetch "mochi-player/mochi-player"
  '(:tags ["mpv" "qt" "qml" "qt5"]
    :depth nil))
(hoarder:fetch "KingSann/CLD"
  '(:tags ["common_lisp" "database"]))
(hoarder:fetch "SamSkulls/cl-searx"
  '(:tags ["searx" "common_lisp"]
    :site "searx.me"))
(hoarder:fetch "zhongke/spacemacs_shortcut"
  '(:tags ["spacemacs" "cheatsheet"]))
(hoarder:fetch "ticki/termion"
  '(:tags ["terminal" "color" "escape_sequence" "rust"]))
(hoarder:fetch "redox-os/ransid"
  '(:tags ["terminal" "color" "escape_sequence" "rust" "redox"]))
(hoarder:fetch "redox-os/coreutils"
  '(:tags ["coreutils" "gnu" "rust" "redox"]))
(hoarder:fetch "gotbletu/shownotes"
  '(:tags ["linux" "youtube"]
    :memo "[[https://github.com/gotbletu/shownotes/blob/master/.autostartrc][shownotes/.autostartrc at master · gotbletu/shownotes · GitHub]]
[[https://www.youtube.com/watch?v=snF7U-Ug4Qk][autostartrc - Manage Startup Applications - Linux SHELLSCRIPT - YouTube]]"))
(hoarder:fetch "SteamOnFreeBSD/SteamOnFreeBSD"
  '(:tags ["freebsd" "steam"]))
(hoarder:fetch "chros73/rtorrent-ps"
  '(:tags ["rtorrent" "pyroscope"]))
(hoarder:fetch "haecker-felix/gradio"
  '(:tags ["radio" "gtk"]))
(hoarder:fetch "wooorm/vfile"
  '(:tags ["vinyl" "node" "javascript" "object"]))
'(:tags ["ffmpeg" "video" "vp9" "webm"])
(hoarder:fetch "https://bitbucket.org/dhellmann/virtualenvwrapper.git"
  '(:tags ["python" "virtualenv"]))
(hoarder:fetch "https://gitlab.com/corbie/twitch-curses.git"
  '(:tags ["twitch" "livestreamer" "ncurses"]))
(hoarder:fetch "kulpae/cloudruby"
  '(:tags ["ruby" "soundcloud" "mpg123"]))
(hoarder:fetch "FedeDP/ncursesFM"
  '(:tags ["ncurses" "file_manager"]))
(hoarder:fetch "vain/katriawm"
  '(:tags ["wm" "tiling_wm"]))
(hoarder:fetch "vain/xiate"
  '(:tags ["terminal" "vte"]))
(hoarder:fetch "orthecreedence/cl-rethinkdb"
  '(:tags ["rethinkdb" "common_lisp" "database"]))
(hoarder:fetch "apa512/clj-rethinkdb"
  '(:tags ["rethinkdb" "clojure" "database"]))
(hoarder:fetch "fintechdev/Milieu"
  '(:tags ["configuration" "node" "javascript" "rc" "ini"]))
(hoarder:fetch "sindresorhus/likes"
  '(:tags ["sindresorhus" "project" "interest" "favorite"]))
(hoarder:fetch "VoLuong/Awesome-Linux-Software"
  '(:tags ["linux" "awesome_list"]))
(hoarder:fetch "AshyIsMe/enex2org"
  '(:tags ["evernote" "org"]))
(hoarder:fetch "dkeg/inspin"
  '(:tags ["script" "shell"]))
(hoarder:fetch "michael-lazar/rtv"
  '(:tags ["terminal" "cli" "reddit"]))
(hoarder:fetch "shiyanhui/dht"
  '(:tags ["dht" "p2p"]))
(hoarder:fetch "https://gitlab.namibsun.net/namboy94/toktokkie.git"
  '(:tags ["python" "media"]))
(hoarder:fetch "flipflop97/Mato"
  '(:tags ["icon" "theme"]))
(hoarder:fetch "micheloosterhof/cowrie"
  '(:tags ["ssh" "honeypot"]))
(hoarder:fetch "https://gitlab.com/manaplus/manaplus.git"
  '(:tags ["game"]
    :download nil))
(hoarder:fetch "https://notabug.org/koz.ross/fp-in-js"
  '(:type :git
    :tags ["functional_programming" "javascript" "video"]
    :download nil))
(hoarder:fetch "https://framagit.org/tuxicoman/googleplaydownloader.git"
  '(:tags ["android" "google" "play_store" "apk"]))
(hoarder:fetch "https://framagit.org/tuxicoman/mysearch.git"
  '(:tags ["google" "wikipedia" "openstreetmap" "yacy" "search" "search_engine"]
    :site "https://search.jesuislibre.net/"))
(hoarder:fetch "Librevault/librevault"
  '(:tags ["p2p" "sync"]
    :memo "[[https://news.ycombinator.com/item?id=12261409][Librevault: Open source zero-knowledge peer-to-peer file sync | Hacker News]]"))
(hoarder:fetch "andreberg/Meslo-Font"
  '(:tags ["font" "menlo"]))
(hoarder:fetch "jimmay5469/vim-spacemacs"
  '(:tags ["vim" "spacemacs"]))
(hoarder:fetch "sthysel/vim-spacemacs"
  '(:tags ["vim" "spacemacs"]))
(hoarder:fetch "meitham/vim-spacemacs"
  '(:tags ["vim" "spacemacs"]))
(hoarder:fetch "be5invis/Iosevka"
  '(:tags ["font"]))
(hoarder:fetch "fredokun/lisp-list-comprehensions"
  '(:tags ["common_lisp" "python" "list_comprehension"]))
(hoarder:fetch "tlikonen/tagdb"
  '(:tags ["tag" "database" "cli"]))
(hoarder:fetch "y2q-actionman/symbolic-object"
  '(:tags ["common_lisp" "oop"]
    :site "http://y2q-actionman.hatenablog.com/entry/2016/07/31/Mathematica%E3%81%AE%E3%82%AA%E3%83%96%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E6%8C%87%E5%90%91%E7%9A%84%E6%A9%9F%E8%83%BD%E3%82%92Common_Lisp%E3%81%A7%E7%9C%9F%E4%BC%BC%E3%81%A6%E3%81%BF%E3%81%9F"))
(hoarder:fetch "eadmund/cl-sxml"
  '(:tags ["common_lisp" "xml" "sxml"]))
(hoarder:fetch "data-x-ware/xdb2"
  '(:tags ["database" "memory" "common_lisp" "document"]))
(hoarder:fetch "orthecreedence/vom"
  '(:tags ["common_lisp" "logging"]))
(hoarder:fetch "rajasegar/cl-simple-database"
  '(:tags ["common_lisp" "database"]))
(hoarder:fetch "dakrone/eos"
  '(:tags ["configuration" "org-mode"]))
(hoarder:fetch "Usuka/Homepage"
  '(:tags ["css" "homepage" "twily"]))
(hoarder:fetch "https://gitlab.com/gitlab-org/gitlab-shell.git"
  '(:tags ["gitlab" "ruby"]))
(hoarder:fetch "https://gitlab.com/luspi/photoqt.git"
  '(:tags ["photo" "qt5" "viewer"]))
(hoarder:fetch "mrjoelkemp/awesome-paid-open-source"
  '(:tags ["awesome_list" "opensource"]))
(hoarder:fetch "https://gitlab.com/j-pb/franz.git"
  '(:tags ["logging" "reframe" "samza" "kafka" "clojurescript"]))
(hoarder:fetch "fitojb/anka-coder-fonts"
  '(:tags ["font"]))
(hoarder:fetch "json-ld/json-ld.org"
  '(:tags ["json" "schema" "linked_data" "json-ld"]))
(hoarder:fetch "dbpedia/dbpedia"
  '(:tags ["database" "wikipedia" "wiki" "json-ld"]
    :download nil))
(hoarder:fetch "papers-we-love/papers-we-love"
  '(:tags ["paper" "science" "math" "pdf" "document"]
    :memo "'Out of the Tar Pit' mentioned in [[https://www.youtube.com/watch?v=Cym4TZwTCNU][Rich Hickey: Deconstructing the Database - YouTube]] "
    :download nil))
(hoarder:fetch "git://git.freebsoft.org/git/speechd"
  '(:tags ["speech_synthesis"]))
(hoarder:fetch "Shinmera/for"
  '(:tags ["common_lisp" "loop" "for"]))
(hoarder:fetch "matthunz/riceinator"
  '(:tags ["configuration" "template" "rice" "desktop"]))
(hoarder:fetch "matthunz/dotfiles"
  '(:tags ["dotfiles"]))
(hoarder:fetch "guarinogabriel/Mac-CLI"
  '(:tags ["macos" "cli" "shellscript"]))
(hoarder:fetch "rgcr/m-cli"
  '(:tags ["macos" "cli" "shellscript"]))
(hoarder:fetch "rpominov/static-land"
  '(:tags ["javascript" "fantasyland" "monad" "type"]))
(hoarder:fetch "gcanti/flow-static-land"
  '(:tags ["javascript" "static-land" "monad" "type" "flow"]
    :memo "https://www.cl.cam.ac.uk/%7Ejdy22/papers/lightweight-higher-kinded-polymorphism.pdf"))
(hoarder:fetch "gnunn1/terminix"
  '(:tags ["terminal" "gtk" "gtk3" "vte"]))
(hoarder:fetch "ligurio/openbsd-awesome"
  '(:tags ["openbsd" "awesome_list"]))
(hoarder:fetch "mirrorer/libbpg"
  '(:tags ["image" "gif" "bpg" "hevc"]))
(hoarder:fetch "mchav/with"
  '(:tags ["cli" "shell" "repl"]))
(hoarder:fetch "danklammer/bytesize-icons"
  '(:tags ["icon" "svg"]))
(hoarder:fetch "tomahawk-player/tomahawk"
  '(:tags ["music" "player" "youtube" "lastfm" "spotify" "soundcloud" "qt5"]
    :download nil))
(hoarder:fetch "urwid/urwid"
  '(:tags ["python" "cli"]
    :memo " [[https://www.youtube.com/watch?v=4UwhXC1OP2A][Console Applications with Urwid - YouTube]] "))
(hoarder:fetch "Wildefyr/mpvc"
  '(:tags ["mpv" "mpc"]))
(hoarder:fetch "ElessarWebb/positron-bar"
  '(:tags ["javascript" "bar" "panel"]))
(hoarder:fetch "https://gitlab.com/larchlinux/bark.git"
  '(:tags ["javascript" "bar" "panel" "electron"]
    :memo "https://www.reddit.com/r/unixporn/comments/4y2prp/im_creating_a_new_bar_what_would_you_most_like_to/"))
(hoarder:fetch "ndantam/sycamore"
  '(:tags ["common_lisp" "binary_tree" "set" "queue" "data_structure"]))
(hoarder:fetch "ksjogo/ksjogo-guix"
  '(:tags ["guix" "emacs" "package"]))
(hoarder:fetch "l-n-s/transmission-i2p"
  '(:tags ["i2p" "i2pd" "transmission"]))
(hoarder:fetch "l-n-s/libtorrent-i2p"
  '(:tags ["i2p" "libtorrent"]))
(hoarder:fetch "shule517/PeerstPlayer"
  '(:tags ["peercast"]))
(hoarder:fetch "mfikes/planck"
  '(:tags ["clojure" "clojurescript" "repl" "macos" "linux" "script"]))
(hoarder:fetch "https://notabug.org/zorro/radioslibres-mpv.bash"
  '(:type :git
    :depth nil
    :tags ["radio" "spanish" "bash" "shellscript"]))
(hoarder:fetch "nelkana/PurePlayer_As"
  '(:tags ["peercast"]))
(hoarder:fetch "mcandre/cl-quickcheck"
  '(:tags ["common_lisp" "quickcheck" "test"]))
(hoarder:fetch "cbaggers/pathology"
  '(:tags ["path" "common_lisp"]))
(hoarder:fetch "https://gitla.in/zannix/neews.git"
  '(:tags ["common_lisp" "feed"]))
(hoarder:fetch "https://gitla.in/nilesrogoff/lain-ipfs-scraper.git"
  '(:tags ["python" "scraping" "lainchan"]))
(hoarder:fetch "shamazmazum/image-downloader"
  '(:tags ["common_lisp" "4chan"]))
(hoarder:fetch "chancejs/chancejs"
  '(:tags ["javascript" "generator" "random"]))
(hoarder:fetch "sindresorhus/guides")
(hoarder:fetch "shinkwhek/Cipher"
  '(:tags ["algorithm" "cipher" "common_lisp"]))
(hoarder:fetch "ccqpein/Arithmetic-Exercises"
  '(:tags ["common_lisp" "swift" "go" "python" "algorithm"]))
(hoarder:fetch "jieverson/animeapi"
  '(:tags ["javascript"]
    :download nil))
(hoarder:fetch "creationix/nvm"
  '(:tags ["javascript" "node"]))
(hoarder:fetch "rakanalh/dotemacs"
  '(:memo "https://github.com/rakanalh/dotemacs/blob/master/vendor/spacemacs-startup.el"
    :tags ["emacs" "scratch" "splash" "spacemacs"]))
(hoarder:fetch "andywer/npm-launch"
  '(:tags ["npm" "javascript" "task_runner" "listr" "make"]))
;; (hoarder:fetch "wifiextender/pinky-bar"
;;   '(:tags ["bar" "panel" "wm"]
;;     :description "https://forums.freebsd.org/threads/57370/"))
(hoarder:fetch "Truttix/AhriStartpage"
  '(:tags ["homepage"]))
(hoarder:fetch "DrummerHead/DHomepage"
  '(:tags ["homepage"]))
(hoarder:fetch "kevinarefunny/my-homepage"
  '(:tags ["homepage"]))
(hoarder:fetch "Blue-Sky-Skunkworks/cl-ascii-art"
  '(:tags ["common_lisp" "ascii_art"]))
(hoarder:fetch "GiedriusS/TwitchNotifier"
  '(:tags ["twitch" "notification"]))
(hoarder:fetch "jrmarino/synth"
  '(:tags ["ports" "freebsd"]))
(hoarder:fetch "HaCk3Dq/spectrumyzer"
  '(:tags ["desktop"]))
(hoarder:fetch "tayumpee/start_page2_firefox_and_chrome"
  '(:tags ["homepage" "firefox" "chrome"]))
(hoarder:fetch "https://gitlab.com/iain/hamburger-menu-mode"
  '(:type :git))
(hoarder:fetch "apngasm/apngasm"
  '(:tags ["png" "gif" "apng" "animated_png"]))
(hoarder:fetch "aborn/learn-elisp-by-examples"
  '(:tags ["emacs_lisp" "example"]))
(hoarder:fetch "jagracey/Awesome-Unicode"
  '(:tags ["awesome_list" "unicode"]))
(hoarder:fetch "finnishtransportagency/harja"
  '(:tags ["clojure" "clojurescript"]))
(hoarder:fetch "mewo2/naming-language"
  '(:tags ["language" "generator" "random" "javascript"]
    :description "A generator for naming languages"))
(hoarder:fetch "mewo2/terrain"
  '(:tags ["javascript" "map" "generator"]
    :description "Fantasy map generator"))
(hoarder:fetch "Chinachu/Chinachu"
  '(:tags ["tv"]))
(hoarder:fetch "niieani/bash-oo-framework"
  '(:tags ["bash" "oop"]))
(hoarder:fetch "rancher/trash"
  '(:tags ["golang" "package_manager"]))
(hoarder:fetch "dschep/ntfy"
  '(:tags ["notification" "android" "pushbullet" "pushover" "xmpp"]
    :memo "[[https://ntfy.readthedocs.io/en/latest/][About ntfy — ntfy 2.3.0 documentation]]"))
(hoarder:fetch "repl-electric/d-_-b"
  '(:tags ["clojure" "overtone" "repl_electric"]
    :memo "https://twitter.com/josephwilk/status/769271489594068996"))
(hoarder:fetch "thejameskyle/itsy-bitsy-data-structures"
  '(:tags ["data_structure" "algorithm" "javascript"]
    :memo "[[https://www.youtube.com/watch?v=bM5Wfmh9i5k][James Kyle: From Zero To Binary Search Tree - JSConf.Asia 2016 - YouTube]]"))
(hoarder:fetch "golang/crypto"
  '(:tags ["ssh" "golang"]
    :memo "https://github.com/golang/crypto/tree/master/ssh"))
;; (hoarder:fetch "GNUnet/gnunet"
;;   '(:tags ["p2p"]))
(hoarder:fetch "git://git.savannah.gnu.org/wget.git"
  '(:tags ["wget" "downloader" "curl"]))
(hoarder:fetch "politza/ealias"
  '(:tags ["shell" "bash" "alias"]))
(hoarder:fetch "HollyAdele/awesome-programming-for-kids"
  '(:tags ["awesome_list" "programming" "education"]))
(hoarder:fetch "alandipert/intension"
  '(:tags ["datascript" "query" "database" "clojure"]))
(hoarder:fetch "takoeight0821/octo"
  '(:tags ["utility" "common_lisp"]))
;; (hoarder:fetch "vtomole/cl-puri-1.5.5"
;;   '(:tags ["uri" "common_lisp" "urll"]))
(hoarder:fetch "rudolfochrist/nancy"
  '(:tags ["web" "ningle" "clack" "common_lisp"]))
(hoarder:fetch "git-tips/tips"
  '(:tags ["git" "tips"]))
(hoarder:fetch "scrapy/scrapy"
  '(:tags ["crawler" "scraping" "python" "cli"]))
(hoarder:fetch "daleroberts/tv"
  '(:tags ["terminal" "image" "image_viewer"]))
(hoarder:fetch "hzeller/timg"
  '(:tags ["terminal" "image" "image_viewer"]))
(hoarder:fetch "DoTheEvo/ANGRYsearch"
  '(:tags ["search" "linux"]))
(hoarder:fetch "karandesai-96/yolog"
  '(:tags ["git" "log" "cli" "python"]))
(hoarder:fetch "kimmel/colordiff"
  '(:tags ["diff" "color" "cli"]))
(hoarder:fetch "jeffkaufman/icdiff"
  '(:tags ["diff" "color" "cli" "git" "svn"]))
(hoarder:fetch "qqueue/ANSICHAN"
  '(:tags ["4chan" "terminal" "cli"]))
(hoarder:fetch "jarun/googler"
  '(:tags ["google" "cli"]))
(hoarder:fetch "git://git.2f30.org/noice.git"
  '(:tags ["file_manager" "cli"]))
(hoarder:fetch "http://www.brettcsmith.org/2007/dtrx/dtrx"
  '(:type :hg
    :tags ["archive" "extractor" "zip" "tar"]))
(hoarder:fetch "tumugi/tumugi"
  '(:tags ["task_runner" "workflow"]))
(hoarder:fetch "fcarlier/fbida"
  '(:tags ["image_viewer" "image" "framebuffer" "terminal"]))
(hoarder:fetch "djjolicoeur/datamaps"
  '(:tags ["map" "query" "datascript" "clojure"]))
(hoarder:fetch "astoeckley/Eat-Static"
  '(:tags ["clojure" "map" "validation" "type_checking"]))
(hoarder:fetch "elarkin/fw.matching"
  '(:tags ["clojure" "let" "map" "destructuring"]))
(hoarder:fetch "foretagsplatsen/emacs-js"
  '(:tags ["javascript" "emacs" "configuration"]))
(hoarder:fetch "scymtym/configuration.options"
  '(:tags ["common_lisp" "configuration"]))
(hoarder:fetch "robert-strandh/Clump"
  '(:tags ["common_lisp" "btree" "tree_structure"]))
(hoarder:fetch "ewwhite/zfs-ha.wiki"
  '(:tags ["zfs" "wiki" "linux"]))
(hoarder:fetch "moosotc/llpp"
  '(:description " PDF pager "
    :tags ["pdf" "pager" "mupdf"]))
(hoarder:fetch "mobius-eng/keyword-dispatch"
  '(:tags ["keyword" "dispatch" "common_lisp" "protocol" "method" "oop"]))
(hoarder:fetch "pyr/emenv"
  '(:tags ["emacs" "package" "package_manager" "golang" "dependency"]))
(hoarder:fetch "pyr/unilog"
  '(:tags ["clojure" "logging"]))
(hoarder:fetch "git://fsociety.info/dotfiles.git"
  '(:tags ["dotfiles" "configuration" "bspwm"]
    :site "https://code.fsociety.info/"
    :memo "[[https://www.reddit.com/r/unixporn/comments/50x8pa/bspwm_way_too_much_synthwave_lately/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/5ysh47/bspwm_in_progress_ryzen_i_mean_rice/][Too Many Requests]]"))
(hoarder:fetch "alexbooker/awesome-urxvt"
  '(:tags ["awesome_lisp" "urxvt" "terminal"]))
(hoarder:fetch "bayandin/awesome-awesomeness"
  '(:tags ["awesome_list"]))
(hoarder:fetch "tmrts/go-patterns"
  '(:tags ["golang" "awesome_list"]))
(hoarder:fetch "rizo/awesome-ocaml"
  '(:tags ["awesome_list" "ocaml"]
    :description "[[https://www.reddit.com/r/ocaml/comments/50n3wm/whats_missing_in_the_ecosystem/][What's missing in the ecosystem? : ocaml]]"))
(hoarder:fetch "areina/elfeed-cljsrn"
  '(:tags ["elfeed" "clojurescript" "clojure" "react" "rss"]))
(hoarder:fetch "iampox/androidapps"
  '(:tags ["android"]))
(hoarder:fetch "NanXiao/FreeBSD-101-Hacks"
  '(:tags ["freebsd" "tips" ]))
(hoarder:fetch "ta2gch/UFO"
  '(:tags ["common_lisp" "roswell" "script" "gist"]))
(hoarder:fetch "fukamachi/shelly"
  '(:tags ["common_lisp" "script"]))
(hoarder:fetch "eshamster/kv-kneader"
  '(:tags ["common_lisp" "alist"]))
(hoarder:fetch "sixteencolors/sixteencolors-archive"
  '(:tags ["ascii_art" "ansi_color"]
    :download nil))
(hoarder:fetch "halgari/odin"
  '(:tags ["clojure" "logic" "logic_programming" "minikanren" "datalog"]
    :site "https://www.youtube.com/channel/UC6yONKYeoE2P3bsahDtsimg"))
(hoarder:fetch "https://gitlab.com/zuozam/kogaion-theme.git"
  '(:tags ["gtk" "xfce" "openbox" "theme"]))
(hoarder:fetch "okabeR/configs"
  '(:tags ["configuration" "dotfiles" "colorscheme"]
    :memo "https://github.com/okabeR/configs/blob/master/.Xresources
https://www.reddit.com/r/unixporn/comments/51v0pg/herbstluftwm_leaves_n_stuff/"))
(hoarder:fetch "matburt/mobileorg-android"
  '(:tags ["android" "mobile" "org-mode"]))
(hoarder:fetch "wizmer/syncorg"
  '(:tags ["android" "mobile" "org-mode"]))
(hoarder:fetch "missingfaktor/akar"
  '(:tags ["clojure" "pattern_match" "variant"]
    :memo "https://skillsmatter.com/skillscasts/7854-london-clojurians-meetup"))
(hoarder:fetch "HotBitmapGG/OhMyBiliBili"
  '(:tags ["android" "bilibili"]))
(hoarder:fetch "https://gist.github.com/Shudouken/be8c3b34ebd3ead1b2b8.git"
  '(:tags ["mpv" "lua"]
    :name "history.lua"))
(hoarder:fetch "wm4/mpv-scripts"
  '(:tags ["lua" "mpv"]))
(hoarder:fetch "tshatrov/webgunk"
  '(:tags ["scraping" "crawler" "common_lisp" "cxml" "closure-html" "css-selectors" "html"]
    :site "http://readevalprint.tumblr.com/post/80764585017/web-scraping-with-common-lisp-introduction"))
(hoarder:fetch "git://repo.or.cz/closure-html.git"
  '(:tags ["common_lisp" "html"]))
(hoarder:fetch "git://repo.or.cz/cxml.git"
  '(:tags ["common_lisp" "html" "xml"]))
(hoarder:fetch "AccelerationNet/css-selectors"
  '(:tags ["common_lisp" "css" "xpath" "jquery" "dom"]))
(hoarder:fetch "kitanow/webscrapper"
  '(:tags ["python" "scraping" "beautiful_soup"]
    :site "http://mkitano.hatenablog.jp/entry/2014/12/21/190434"))
(hoarder:fetch " git://git.savannah.gnu.org/bash.git"
  '(:tags ["bash" "shell"]))
(hoarder:fetch "vyp/ui"
  '(:tags ["configuration" "vim"]))
(hoarder:fetch "xach/buildapp"
  '(:tags ["common_lisp"]
    :site "http://xach.com/lisp/buildapp/"))
(hoarder:fetch "hipeta/arrow-macros"
  '(:tags ["common_lisp" "macro" "threading_macro"]))
(hoarder:fetch "https://bitbucket.org/skypher/cl-prevalence"
  '(:tags ["common_lisp" "object_prevalence" "database"]
    :type :hg))
(hoarder:fetch "yanqirenshi/upanishad"
  '(:tags ["common_lisp" "object_prevalence" "database"]))
(hoarder:fetch "alamminsalo/orion"
  '(:tags ["twitch" "qt" "linux"]))
(hoarder:fetch "mrossini-ethz/parseq"
  '(:tags ["common_lisp"]
    :description " Parseq is a package for Common Lisp used for parsing sequences such as strings, lists and vectors. "))
(hoarder:fetch "miner/herbert"
  '(:tags ["clojure" "test" "generator" "property_based_testing" "schema" "spec"]))
(hoarder:fetch "git://git.savannah.gnu.org/womb/hacks.git"
  '(:tags ["rms" "gnu"]
    :site "https://stallman.org/stallman-computing.html#internetuse"))
(hoarder:fetch "ta2gch/cl-emoji"
  '(tag ["common_lisp" "emoji" "unicode"]))
(hoarder:fetch "mikeyhc/practical-cl"
  '(:tags ["common_lisp" "book" ]))
(hoarder:fetch "arnoo/clutch"
  '(:tags ["common_lisp" "utility"]))
(hoarder:fetch "behdad/fonttools"
  '(:tags ["font"]))
(hoarder:fetch "trufont/trufont"
  '(:tags ["font"]))
(hoarder:fetch "elendirx/web2web"
  '(:tags ["p2p" "blockchain" "bitcoin" "torrent"]))
(hoarder:fetch "git://git.iridiumbrowser.de/iridium-browser"
  '(:tags ["browser" "chromium" "web"]
    :download nil))
(hoarder:fetch "OtterBrowser/otter-browser"
  '(:tags ["browser" "opera" "web"]
    :download nil))
(hoarder:fetch "jcbeaudoin/MKCL"
  '(:tags ["common_lisp" "compiler"]))
(hoarder:fetch "q5sys/BUGtracker"
  '(:tags ["bsd" "user_group" "freebsd"]))
(hoarder:fetch "leereilly/games"
  '(:tags ["game" "open_source" "awesome_list"]))
(hoarder:fetch "CyberShadow/aconfmgr"
  '(:tags ["configuration" "arch_linux" "puppet" "ansible" "nixos" "etckeeper"]))
(hoarder:fetch "Tehnix/spaceneovim"
  '(:tags ["spacevim" "spacemacs" "vim" "configuration"]))
(hoarder:fetch "Tehnix/spaceneovim-layers"
  '(:tags ["spacevim" "spacemacs" "vim" "configuration"]))
(hoarder:fetch "direnv/direnv"
  '(:tags ["direnv" "dotenv" "enviroment_variable" "configuration" "shell"]
    :memo " [[https://skillsmatter.com/skillscasts/7348-using-direnv-with-ruby-and-12factor-apps][Using direnv with ruby and 12factor apps | SkillsCast | 11th January 2016]]
[[https://direnv.github.io/direnv-and-ruby-talk/#_how_it_works][Using direnv with ruby and 12factor apps]] "))
(hoarder:fetch "adobe-fonts/kenten-generic"
  '(:tags ["font" "japanese"]))
(hoarder:fetch "massivedynamic/openftp4"
  '(:tags ["ftp" "server" "public"]))
(hoarder:fetch "inikep/lz5"
  '(:tags ["archive" "compression"]))
;; (hoarder:fetch "chris-etheridge/i-like-this")
(hoarder:fetch "kenjimyzk/spacemacs-japanese"
  '(:tags ["spacemacs" "ddskk" "pangu-spacing"]))
(hoarder:fetch "tulip-lang/tulip"
  '(:tags ["programming" "language"]
    :memo " [[https://www.youtube.com/watch?v=lvclTCDeIsY]["Tulip: A Language for Humans" by Sig Cox, Jeanine Adkisson - YouTube]]
[[https://www.youtube.com/watch?v=WWlnRWbOlho][Tulip: A Well-Balanced Language - Jeanine Adkisson - YouTube]] "))
(hoarder:fetch "jneen/moonconf-tulip"
  '(:tags ["language" "tulip" "moonconf" "conference"]
    :memo "[[https://www.youtube.com/watch?v=WWlnRWbOlho][Tulip: A Well-Balanced Language - Jeanine Adkisson - YouTube]]"))
(hoarder:fetch "lexi-lambda/racket-tulip"
  '(:tags ["racket" "tulip"]))
(hoarder:fetch "sananth12/ImageScraper"
  '(:tags ["scraping" "html" "xpath" "python"]))
(hoarder:fetch "miyakogi/conoline.vim"
  '(:tags ["color" "highlight" "vim" "cursor"]))
(hoarder:fetch "eigengrau/x-highlight-region"
  '(:tags ["x" "slop" "screencast" "highlight" "python"]))
(hoarder:fetch "ekmett/bifunctors"
  '(:tags ["haskell" "bimap" "functor"]))
(hoarder:fetch "https://anongit.freedesktop.org/git/cairo"
  '(:type :git
    :tags ["graphics" "freedesktop" "2d"]))
(hoarder:fetch "gfx/p5-Mouse"
  '(:tags ["perl" "oop" "mouse" "type" "constraints"]
    :memo "[[https://github.com/gfx/p5-Mouse/blob/master/lib/Mouse/Util/TypeConstraints.pm][p5-Mouse/TypeConstraints.pm at master · gfx/p5-Mouse · GitHub]]"))
(hoarder:fetch "tokuhirom/Smart-Args"
  '(:tags ["perl" "validation" "type"]))
(hoarder:fetch "phw/peek")
(hoarder:fetch "dropbox/dbxcli"
  '(:tags ["dropbox"]))
(hoarder:fetch "rmanfredi/dist")
(hoarder:fetch "zsoltf/kryten"
  '(:memo "[[https://github.com/zsoltf/kryten/blob/master/lib/kryten/version.rb][kryten/version.rb at master · zsoltf/kryten · GitHub]]"))
(hoarder:fetch "paramiko/paramiko"
  '(:tags ["ssh" "python"]))
(hoarder:fetch "mvdan/sh"
  '(:tags ["golang" "shell_script"]))
(hoarder:fetch "jmercouris/emacs_logo"
  '(:download nil))
(hoarder:fetch "BurntSushi/ripgrep"
  '(:tags ["rust" "grep" "ag" "ack"]))
(hoarder:fetch "rust-lang/rust"
  '(:download nil))
(hoarder:fetch "jamespic/pwgen"
  '(:tags ["password" "html"]))
(hoarder:fetch "ocornut/imgui"
  '(:tags ["gui" "c++"]))
(hoarder:fetch "sam217pa/emacs-config"
  '(:tags ["general.el" "evil"]))
(hoarder:fetch "https://gitlab.com/oded/comix-spider.git"
  '(:tags ["comic" "download" ]))
(hoarder:fetch "davecheney/httpstat"
  '(:tags ["golang" "http" "curl"]))
(hoarder:fetch "interplinternet/hooks-and-forks"
  '(:tags ["racket" "scheme"]))
(hoarder:fetch "https://gitlab.com/fau/utility-arguments.git"
  '(:tags ["common_lisp" "commandline"]))
(hoarder:fetch "vain/katriawm"
  '(:tags ["wm" "desktop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/54aok0/katriawm_a_more_traditional_look/][Too Many Requests]]"))
(hoarder:fetch "vain/bevelbar"
  '(:tags ["wm" "desktop" "bar"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/54aok0/katriawm_a_more_traditional_look/][Too Many Requests]]"))
(hoarder:fetch "vain/infofeld"
  '(:tags ["screenfetch" "farbfeld"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/54aok0/katriawm_a_more_traditional_look/][Too Many Requests]]"))
(hoarder:fetch "vain/xiate"
  '(:tags ["terminal" "gtk" "vte"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/54aok0/katriawm_a_more_traditional_look/][Too Many Requests]]"))
(hoarder:fetch "git://repo.or.cz/llpp.git"
  '(:tags ["pdf" "mupdf"]))
(hoarder:fetch "deluxo/gotwitch"
  '(:tags ["golang" "twitch"]))
(hoarder:fetch "wavexx/screenkey"
  '(:tags ["screencast" "desktop"]))
(hoarder:fetch "wildefyr/fyre"
  '(:tags ["wm" "wmutils" "desktop"]))
(hoarder:fetch "lambdaisland/uniontypes"
  '(:tags ["clojure" "clojure.spec" "union_type" "variant" "core.match" "pattern_match"]))
(hoarder:fetch "https://gitlab.com/barrel-db/barrel-platform.git"
  '(:tags ["database" "p2p" "erlang" "couchdb"]
    :site "https://gitlab.com/barrel-db/barrel"
    :memo "[[https://www.youtube.com/watch?v=de6TYu1j7Gg][Building a P2P Multi-Purpose Database by Benoit Chesneau - YouTube]]"))
(hoarder:fetch "sonian/carica"
  '(:tags ["configuration" "clojure"]
    :memo "http://realworldclojure.com/application-configuration/"))
(hoarder:fetch "weavejester/environ"
  '(:tags ["configuration" "clojure"]
    :memo "http://realworldclojure.com/application-configuration/"))
(hoarder:fetch "outpace/config"
  '(:tags ["configuration" "clojure"]
    :memo "http://realworldclojure.com/application-configuration/"))
(hoarder:fetch "adzerk-oss/env"
  '(:tags ["configuration" "clojure"]
    :memo "http://realworldclojure.com/application-configuration/"))
(hoarder:fetch "cheeriojs/cheerio"
  '(:tags ["javascript" "scraping" "jquery"]))
(hoarder:fetch "jprichardson/node-batchflow"
  '(:tags ["javascript"]))
(hoarder:fetch "Shinmera/lquery"
  '(:tags ["common_lisp" "jquery" "html" "dom"]))
(hoarder:fetch "wireshark/wireshark"
  '(:tags ["packet_capture" "tcpdump" "pcap" "network"]
    :download nil))
(hoarder:fetch "calvis/cKanren"
  '(:tags ["minikanren" "logic_programming" "scheme"]))
(hoarder:fetch "haasnhoff/mpvconfigurator"
  '(:tags ["mpv"]))
(hoarder:fetch "leonardoborges/bouncer"
  '(:tags ["dsl" "clojure" "validaton" "schema"]))
(hoarder:fetch "metakirby5/scripts"
  '(:tags ["screenfetch" "script" "linux" "macos"]
    :memo "https://github.com/metakirby5/scripts/blob/master/fetch
kitsu.io api https://raw.githubusercontent.com/metakirby5/scripts/master/anichk "))
(hoarder:fetch "metakirby5/.dots"
  '(:tags ["screenfetch" "script" "linux" "macos" "configuration" "dotfiles" "desktop"]
    :description ":computer: All of my dotfiles."
    :memo "https://github.com/metakirby5/scripts/blob/master/fetch
[[https://boards.4chan.org/g/thread/58563356][/g/ - ITT: We post our comfy programming setups - Technology - 4chan]]"))
(hoarder:fetch "cacalabs/toilet"
  '(:tags ["figlet" "ascii_art" "terminal"]))
(hoarder:fetch "yeun/open-color"
  '(:tags ["css" "scss" "less"]))
(hoarder:fetch "ravichugh/sketch-n-sketch"
  '(:tags ["svg" "graphic" "elm"]
    :site "https://ravichugh.github.io/sketch-n-sketch/"
    :memo " [[https://www.youtube.com/watch?v=YuGVC8VqXz0][\"Sketch-n-Sketch: Interactive SVG Programming with Direct Manipulation\" by Ra...]]
[[https://www.youtube.com/watch?v=Yv9rOGHU-4k][Sketch-n-Sketch — Section 1 — Intro to Sketch-n-Sketch - YouTube]] "))
(hoarder:fetch "wingo/fibers"
  '(:tags ["guile" "scheme" "channel" "concurrency"]
    :memo " [[https://www.youtube.com/watch?v=uwiaT3MoDVs][\"Knit, Chisel, Hack: Building Programs in Guile Scheme\" by Andy Wingo - YouTube]] :scheme:guile: "))
(hoarder:fetch "https://gitlab.com/PyQT/tumbly.git"
  '(:tags ["tumblr" "python"]))
(hoarder:fetch "https://gitlab.com/BobSteagall/clang-builder.git"
  '(:tags ["freebsd" "clang" "compilation" "build"]))
(hoarder:fetch "leetreveil/musicmetadata"
  '(:tags ["javascript" "mp3" "ogg" "flac" "metadata" "tag"]
    :download nil))
(hoarder:fetch "mehrdadrad/mylg"
  '(:tags ["netwark" "linux" "macos" ]))
(hoarder:fetch "ktakashi/scheme-concurrent"
  '(:tags ["gauche" "r7rs" "r6rs" "multi-thread"]))
(hoarder:fetch "RealDolos/volapi"
  '(:tags ["volafile" "python"]))
(hoarder:fetch "wbkd/awesome-interactive-journalism"
  '(:tags ["awesome_list" "inforamiton" "data" "visualization"]))
(hoarder:fetch "detailyang/awesome-cheatsheet"
  '(:tags ["awesome_list" "cheatsheet"]))
(hoarder:fetch "arachne-framework/arachne-core"
  '(:tags ["clojure" "scraping" "crawler" "web"]))
(hoarder:fetch "eudoxia0/arachne"
  '(:tags ["common_lisp" "scraping" "crawler" "web"]))
(hoarder:fetch "Mikerah/GenreExplorer"
  '(:tags ["genre" "music" "wikipedia"]))
(hoarder:fetch "cardigann/cardigann"
  '(:tags ["jacket" "usenet" "torrent" "sonarr" "sickrage" "couchpotato"]))
(hoarder:fetch "git://git.corpit.ru/rbldnsd.git"
  '(:tags ["dns" "dnsbl" "black_list"]))
(hoarder:fetch "lk-geimfari/cuttlefish"
  '(:tags ["erlang" "color" "cli" "terminal"]))
(hoarder:fetch "slamdata/matryoshka"
  '(:tags ["recursion" "scala" "fold" "unfold" "recursion_scheme"]
    :memo "[[https://www.youtube.com/watch?v=D8LdznWynyw][Greg Pfeil - Fix-ing Your Types with Matryoshka - YouTube]]"))
(hoarder:fetch "pgrho/animedb"
  '(:download nil))
(hoarder:fetch "openimages/dataset"
  '(:tags ["image" "photo" "data"]))
(hoarder:fetch "jaspervdj/patat"
  '(:tags ["presentation" "haskell" "markdown" "pandoc"]))
(hoarder:fetch "faissaloo/Yukko"
  '(:tags ["terminal" "python" "nntpchan" "bbs"]
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/55ht55/a_textbased_client_for_a_decentralised_imageboard/][Too Many Requests]]
[[https://8ch.net/tech/res/661345.html][/tech/ - NNTPchan client &amp; ASCIIpunk general]]
                                               [[http://hollaforums.com/thread/661345/technology/nntpchan-client-asciipunk-general.html][Error 406 - Not Acceptable]]"))
(hoarder:fetch "pickhardt/betty"
  '(:tags ["cli" "ruby"]))
(hoarder:fetch "SimonAlfie/fabricate"
  '(:tags ["build" "make" "compile" "task" "python"]))
(hoarder:fetch "rizsotto/Bear"
  '(:tags ["clang" "make" "compile" "task" "build" "json_compilation_database"]))
(hoarder:fetch "gittup/tup"
  '(:tags ["build" "make" "compile" "task" "python"]
    :site "http://gittup.org/tup"
    :memo "[[https://news.ycombinator.com/item?id=12622097][Tup – A file-based build system for Linux, OS X, and Windows | Hacker News]]"))
(hoarder:fetch "sdg-mit/gitless"
  '(:tags ["git" "python"]
    :site "http://gitless.com/"
    :memo "[[https://news.ycombinator.com/item?id=12621837][Gitless: a version control system | Hacker News]]"))
(hoarder:fetch "josuah/Config"
  '(:tags ["configuration" "desktop" "unixporn" "screenshot"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/55d64v/dwm_tmux_23_with_pane_title/][{dwm} tmux 2.3 with pane title : unixporn]]
[[https://www.reddit.com/r/unixporn/comments/55kjdb/tmux_tty_with_custom_theme/][Too Many Requests]]
"))
(hoarder:fetch "poinck/ocelot"
  '(:tags ["tiling_wm" "monsterwm" "dwm" "dzen" "desktop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/55abb7/ocelot_a_dwmlike_desktop_with_sidepanel/][Too Many Requests]]"))
(hoarder:fetch "https://gitlab.com/buildfunthings/emacs-config.git"
  '(:tags ["emacs" "configuration" ]
    :memo "[[https://www.youtube.com/watch?v=I28jFkpN5Zk][My GNU Emacs configuration for programming - YouTube]]"))
(hoarder:fetch "jgthms/web-design-in-4-minutes"
  '(:site "http://jgthms.com/web-design-in-4-minutes/"
    :tags ["web" "design" "css" "html"]))
(hoarder:fetch "fullsalvo/wzb-utils"
  '(:tags ["configuration" "theme" "desktop" "rice" "zenbu" "whizkers"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/55oxoa/2bwm_themes/][Too Many Requests]]"))
(hoarder:fetch "metakirby5/whizkers"
  '(:tags ["configuration" "theme" "desktop" "rice" ]
    :memo "[[https://www.reddit.com/r/unixporn/comments/55oxoa/2bwm_themes/][Too Many Requests]]"))
(hoarder:fetch "metakirby5/zenbu"
  '(:tags ["configuration" "theme" "desktop" "rice" ]
    :memo "[[https://www.reddit.com/r/unixporn/comments/55oxoa/2bwm_themes/][Too Many Requests]]"))
(hoarder:fetch "skr0tm/themes"
  '(:tags ["configuration" "theme" "desktop" "rice" ]
    :memo "[[https://www.reddit.com/r/unixporn/comments/55oxoa/2bwm_themes/][Too Many Requests]]"))
(hoarder:fetch "skr0tm/dotfiles"
  '(:tags ["2bwm" "lemonbar" "admiral" "configuration" "theme" "desktop" "rice" ]
    :download nil
    :memo "[[https://www.reddit.com/r/unixporn/comments/5e9lbp/2bwm_comfort_bonsai/][{2bwm} comfort bonsai : unixporn]]"))
(hoarder:fetch "halfwit/dotfiles"
  '(:memo " [[https://www.reddit.com/r/unixporn/comments/55otxh/general_searching_github_from_dmenupangoimlib/][Too Many Requests]]
[[https://github.com/halfwit/dotfiles/blob/master/share/dsearch/gh][dotfiles/gh at master · halfwit/dotfiles · GitHub]]"))
;; (hoarder:fetch "Floctioncers/Fi"
;;   '(:tags ["prolog" "4chan"]))
(hoarder:fetch "SnootyMonkey/clj-json-ld"
  '(:tags ["clojure" "json-ld" "json" "pattern_matching"]
    :memo "[[https://www.youtube.com/watch?v=n7aE6k8o_BU][Sean Johnson - Pattern Matching in Clojure - YouTube]]"))
(hoarder:fetch "slburson/fset"
  '(:tags ["common_lisp"]
    :memo "[[http://blog.thezerobit.com/2012/07/21/immutable-persistent-data-structures-in-common-lisp.html][Immutable Persistent Data Structures in Common Lisp - the zero bit stream]]"))
(hoarder:fetch "mikelevins/folio"
  '(:tags ["common_lisp" "fset"]))
(hoarder:fetch "trapd00r/LS_COLORS"
  '(:tags ["ls" "colorscheme"]))
(hoarder:fetch "arecker/emacs.d"
  '(:tags ["configuration" "emacs" "use-package"]))
(hoarder:fetch "jarun/imgp"
  '(:tags ["image" "python"]))
(hoarder:fetch "douglasdeodato/lovely-icons"
  '(:tags ["font" "css" "svg"]))
(hoarder:fetch "jarohen/nomad"
  '(:tags ["clojure" "condiguration" "edn"]))
(hoarder:fetch "Gargron/mastodon"
  '(:tags ["gnu_social"]))
(hoarder:fetch "JackofSpades707/instant_torrent"
  '(:tags ["cli" "torrent" "python"]))
(hoarder:fetch "RyanZim/awesome-npm-scripts"
  '(:tags ["awesome_list" "npm"]))
(hoarder:fetch "moebooru/moebooru"
  '(:tags ["danbooru" "myimouto"]))
(hoarder:fetch "http://code.acr.moe/kazari/sequenzia.git"
  '(:tags ["danbooru" "myimouto" "moebooru"]
    :site "https://sequenzia.acr.moe/"
    :memo "[[https://acr.moe/index.php?title=Sequenzia_Project][Sequenzia Project - WinterLab Docs]]"))
(hoarder:fetch "janlelis/whirly"
  '(:tags ["cli" "spinners" "cli-spinners" "ruby"]))
(hoarder:fetch "nvbn/clj-di"
  '(:tags ["clojure" "dependency_injection"]
    :memo "[[https://www.youtube.com/watch?v=g7W6n47mur4][Dependency management in Clojure by Holger Schauer - YouTube]]"))
(hoarder:fetch "schaueho/funsig"
  '(:tags ["clojure" "dependency_injection"]
    :memo "[[https://www.youtube.com/watch?v=g7W6n47mur4][Dependency management in Clojure by Holger Schauer - YouTube]]"))
(hoarder:fetch "drikin/backspace"
  '(:tags ["podcast" "backspacefm"]))
(hoarder:fetch "smxi/inxi"
  '(:tags ["hardware" "infomation" "system" "linux"]))
(hoarder:fetch "baron42bba/.emacs.d"
  '(:tags ["emacs" "tmux" "org-mode" "screenshot"]
    :memo "[[https://github.com/baron42bba/.emacs.d/commit/ed5da7dda894eec20658208f3b40e5b334d77f36][capture screenshots of ncurses tools · baron42bba/.emacs.d@ed5da7d · GitHub]]"))
(hoarder:fetch "bogem/nehm"
  '(:tags ["id3" "soundcloud" "itunes"]))
(hoarder:fetch "vhf/free-programming-books"
  '(:tags ["programming" "book"]))
(hoarder:fetch "Lukas-W/font-linux"
  '(:download nil
    :tags ["font" "icon" "linux"]))
(hoarder:fetch "horst3180/vertex-theme"
  '(:tags ["theme" "gtk" "desktop" "linux"]))
(hoarder:fetch "deluxo/csw"
  '(:tags ["openweathermap" "weather" "csharp" "mono"]))
(hoarder:fetch "nixers-projects/urnn"
  '(:tags ["unix" "linux" "image" "fann" "neural_network"]))
(hoarder:fetch "apierz/dotfiles"
  '(:tags ["macos" "emacs" "configuration" "dotfiles" "nerdbar"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/4y65u3/osxkwm_spooky_osx_emacs_iterm_dracula_theme_tmux/][{OSX/KWM} spooky OSX: Emacs, iterm, dracula Theme, tmux, nerdbar : unixporn]]
[[https://www.reddit.com/r/unixporn/comments/55kdc2/kwm_doom_comes_to_macos/][{kwm} Doom Comes to macOS : unixporn]] "))
(hoarder:fetch "alexanderjeurissen/dotfiles"
  '(:tags ["gotham" "dotfiles" "configuration" "tmux" "vim" "iterm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/44gvt3/tmux_gotham_tmux_iterm_vim_setup/][Too Many Requests]]"))
(hoarder:fetch "r7kamura/somemoji"
  '(:tags ["ruby" "emoji" "json" "noto" "twemoji" "emojione"]))
(hoarder:fetch "internetarchive/heritrix3"
  '(:site "https://webarchive.jira.com/wiki/display/Heritrix"
    :tags ["web_archive" "warc" "crawler" "archive"]
    :memo "[[https://www.youtube.com/watch?v=8gcu2GQf7PI][Collections as Data: Stewardship and Use Models to Enhance Access - YouTube]] 05:21:28"))
(hoarder:fetch "MunGell/awesome-for-beginners"
  '(:tags ["awesome_list" "github"]))
(hoarder:fetch "devfake/flox"
  '(:description "Flox is a self hosted Movie watch list. It's build on top of PHP (Laravel), MySQL and Vue.js and uses The Movie Database API. "
    :tags ["movie" "php" "vuejs" "database" "tmdb"]))
(hoarder:fetch "guyzmo/git-repo"
  '(:tags ["git" "github" "bitbucket" "gitlab"]
    :memo "[[https://news.ycombinator.com/item?id=12677870][Git-repo – Manage Gitlab, GitHub and Bitbucket from the command line | Hacker News]]"))
(hoarder:fetch "ingydotnet/git-hub"
  '(:tags ["git" "github"]))
(hoarder:fetch "seveas/git-spindle"
  '(:tags ["git" "github"]))
(hoarder:fetch "tagspaces/tagspaces"
  '(:tags ["file_manager" "note" "tagging" "document"]))
(hoarder:fetch "pjhalsli/configs"
  '(:tags ["bspwm" "configuration"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/56r2qr/bspwm_having_fun_with_colors/][Too Many Requests]]"))
(hoarder:fetch "thelostt/etc"
  '(:tags ["muxx" "configuration" "dotfiles"]
    :memo "[[https://github.com/muxx-utils][muxx-utils · GitHub]]
[[https://www.reddit.com/r/unixporn/comments/56pi5o/muxx_working_on_that_ricing_book/][Too Many Requests]]"))
(hoarder:fetch "muxx-utils/muxx"
  '(:tags ["muxx" "configuration" "dotfiles"]
    :memo "[[https://github.com/muxx-utils][muxx-utils · GitHub]]
[[https://www.reddit.com/r/unixporn/comments/56pi5o/muxx_working_on_that_ricing_book/][Too Many Requests]]"))
(hoarder:fetch "neg-serg/neg-dark"
  '(:tags ["arc-dark" "gtk" "desktop" "theme" "lollypop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/56p2p2/notion_arcmoredark_or_negdark/][Too Many Requests]]"))
(hoarder:fetch "Bfgeshka/dotfiles"
  '(:tags ["dwm" "configuration" "dotfiles"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/56mgcd/dwm_siht_gnidaer_uoy_era_yhw/][{dwm} siht gnidaer uoy era yhw : unixporn]]"))
(hoarder:fetch "b4b4r07/enhancd"
  '(:tags ["autojump" "z" "cli" "cd"]))
(hoarder:fetch "fsharp/fsharp"
  '(:memo " [[https://www.youtube.com/watch?v=Jhks5pYbHbI][Learning F# - YouTube]]
[[https://msdn.microsoft.com/visualfsharpdocs/conceptual/collections.seq-module-%5bfsharp%5d][Collections.Seq Module (F#)]]
[[https://docs.microsoft.com/en-us/dotnet/articles/fsharp/language-reference/fsharp-collection-types][F# Collection Types]]"
    :download nil))
(hoarder:fetch "ninrod/dotfiles"
  '(:tags ["emacs" "dotfiles" "org-mode" "use-package"]
    :memo "[[https://github.com/ninrod/dotfiles/blob/master/emacs.d/boot.org][dotfiles/boot.org at master · ninrod/dotfiles · GitHub]]
[[https://www.reddit.com/r/emacs/comments/570xgw/wanting_to_try_org_is_bringing_me_to_emacs/][Too Many Requests]]"))
(hoarder:fetch "michaeldfallen/git-radar"
  '(:tags ["shell" "propmpt"]))
(hoarder:fetch "vincpa/git-psradar"
  '(:tags ["shell" "propmpt"]))
(hoarder:fetch "stobenski/pro"
  '(:tags ["awesomewm" "theme"]))
(hoarder:fetch "nicholasglazer/arch-cheat-sheet"
  '(:tags ["cheatsheet" "archlinux" "linux"]
    :site "http://nicholasglazer.github.io/arch-cheat-sheet/"
    :memo "[[https://www.reddit.com/r/unixporn/comments/56yyo0/no_desktop_environment_archlinux_cheat_sheet/][Too Many Requests]]"))
(hoarder:fetch "dvdhrm/kmscon"
  '(:tags ["terminal" "console" "linux" "kms"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/571na6/kmscontmuxomxplayer_raspberry_pi_2_b_bored_again/][Too Many Requests]]"))
(hoarder:fetch "http://hg.dillo.org/dillo"
  '(:type :hg
    :tags ["browser" "fltk"]))
(hoarder:fetch "microsounds/akari-bbs"
  '(:tags ["4chan" "bbs"]
    :site "http://akaribbs.mooo.com/"
    :memo "[[https://boards.4chan.org/g/thread/57038921][/g/ - Why aren't you running Debian GNU/Linux on all you - Technology - 4chan]]"))
(hoarder:fetch "ryotakato/gauenv"
  '(:tags ["gauche" "scheme" "rbenv" "ruby-build" "bash"]))
(hoarder:fetch "BruceDone/awesome-crawler"
  '(:tags ["awesome_list" "crawler" "scraping"]))
(hoarder:fetch "deeepaaa/rana"
  '(:tags ["sgml" "html"]))
(hoarder:fetch "r0adrunner/Space2Ctrl"
  '(:tags ["keyboard" "x11"]))
(hoarder:fetch "https://gitlab.com/dustyweb/pubstrate.git"
  '(:tags ["activitypub" "activitystreams" "guile" "twitter" "soci-el"]
    :memo "[[http://mediagoblin.org/news/tpac-2016-and-review-activitypub.html][ActivityPub and MediaGoblin at TPAC 2016 (or: ActivityPub needs your review!) | MediaGoblin]]
[[https://identi.ca/cwebber/note/z5wCQEArRE63Wk6LS9Z5Sg][Pubstrate + soci-el + ActivityPub update for 2016-09-10 - Identi.ca]]"))
(hoarder:fetch "https://gitlab.com/dustyweb/talks.git"
  '(:tags ["lisp" "lisp_machine" "gnu" "libreplanet"]
    :download nil
    :memo "[[https://gitlab.com/dustyweb/talks/tree/master/lisp-and-gnu][lisp-and-gnu · master · Christopher Allan Webber / talks · GitLab]]
[[https://www.reddit.com/r/emacs/comments/6iknzs/the_lisp_machine_and_gnu_libreplanet_2017/][The Lisp machine and GNU - LibrePlanet 2017 : emacs]]
[[https://www.youtube.com/watch?v=8RSQ6gATnQU][SGD Collected Client Work and & Demos Mid VOB 01 - YouTube]]"))

(hoarder:fetch "shmibs/dotfiles"
  '(:tags ["linux" "desktop" "dotfiles" "configuration" "herbstluftwm" "lainchan"]
    :memo "[[https://lainchan.org/tech/res/28768.html][tech - Desktop thread]]"))
(hoarder:fetch "i-tsvetkov/recolor"
  '(:tags ["colorscheme" "chrome"]))
(hoarder:fetch "https://git.javispedro.com/topmenu-gtk.git"
  '(:tags ["gtk" "menubar" "xfce" "mate"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/577zic/xfce_vaguely_retro_desktop/][Too Many Requests]]"))
(hoarder:fetch "https://gitlab.com/kosys/kosys-ep01.git"
  '(:tags ["anime"]
    :download nil))
(hoarder:fetch "sotojuan/exchalk"
  '(:tags ["elixir" "color" "terminal" "ansi_escape"]))
(hoarder:fetch "rrrene/bunt"
  '(:tags ["elixir" "color" "terminal" "ansi_escape"]))
(hoarder:fetch "jbnicolai/ansi-256-colors"
  '(:tags ["javascript" "color" "terminal" "ansi_escape"]))
(hoarder:fetch "schachmat/ingo"
  '(:tags ["golang" "configuration"]))
(hoarder:fetch "AppliedGo/random"
  '(:tags ["golang" "random"]
    :memo "[[https://appliedgo.net/random/][A Random Blog Post · Applied Go]]"))
(hoarder:fetch "DexterLB/traytor"
  '(:tags ["golang" "random"]
    :memo "https://github.com/DexterLB/traytor/blob/master/random/random.go
[[https://appliedgo.net/random/][A Random Blog Post · Applied Go]] "))
(hoarder:fetch "gonum/stat"
  '(:tags ["golang" "random"]
    :memo "https://github.com/gonum/stat/tree/master/distuv
[[https://appliedgo.net/random/][A Random Blog Post · Applied Go]] "))
(hoarder:fetch "dustinkirkland/golang-petname"
  '(:tags ["golang" "random"]
    :memo " [[https://appliedgo.net/random/][A Random Blog Post · Applied Go]] "))
(hoarder:fetch "Pallinder/go-randomdata"
  '(:tags ["golang" "random"]
    :memo " [[https://appliedgo.net/random/][A Random Blog Post · Applied Go]] "))
(hoarder:fetch "https://gitlab.com/monwarez/sysinfo-bsd.git"
  '(:tags ["freebsd" "system_infomation" "sysinfo"]))
(hoarder:fetch "Screetsec/Dracnmap"
  '(:tags ["nmap" "network"]))
(hoarder:fetch "verekia/js-stack-from-scratch"
  '(:tags ["javascript" "tutorial" "framework"]))
(hoarder:fetch "FormidableLabs/nodejs-dashboard"
  '(:tags ["javascript" "terminal" "metrics" "graaph"]))
(hoarder:fetch "arthepsy/ssh-audit"
  '(:tags ["ssh" "auditing"]))
(hoarder:fetch "ecarlisle/Easy-Layouts-with-Flexbox"
  '(:tags ["css" "html" "flexbox" "web"]
    :memo "[[https://www.youtube.com/watch?v=2hak2xElAKI][Devnexus 2015 - Ridiculously Easy Layouts with Flexbox by Eric Carlisle - YouTube]]"))
(hoarder:fetch "baurigae/polar-night"
  '(:tags ["gtk" "theme" "unity"]))
(hoarder:fetch "SeasonalRice/.files"
  '(:tags ["dotfiles" "i3wm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/579vko/i3gaps_my_current_fall_rice/][Too Many Requests]]"))
(hoarder:fetch "weavejester/hop"
  '(:tags ["clojure" "boot" "leiningen"]))
(hoarder:fetch "pogodevorg/awesome-pokemongo"
  '(:tags ["awesome_list"]))
(hoarder:fetch "inesita-rb/inesita"
  '(:tags ["web" "ruby" "framework"]))
(hoarder:fetch "gvalkov/xrectsel")
(hoarder:fetch "metosin/muuntaja"
  '(:tags ["clojure" "data_format" "json" "edn" "yaml" "messagepack"]))
(hoarder:fetch "metosin/potpuri"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "lk-geimfari/smokkfiskur"
  '(:tags ["erlang" "color" "ansi"]))
(hoarder:fetch "git://git.osdn.net/gitroot/nkf/nkf.git")
(hoarder:fetch "git://git.sv.gnu.org/libiconv.git"
  '(:tags ["conversion" "encoding"]))
(hoarder:fetch "getify/Functional-Light-JS"
  '(:tags ["book" "javascript" "functional_programming"]))
(hoarder:fetch "nsf/termbox"
  '(:tags ["terminal" "ncurses"]))
(hoarder:fetch "wentin/cssicon"
  '(:tags ["html" "css" "icon"]))
(hoarder:fetch "Qqwy/elixir_fun_land"
  '(:tags ["elixir" "monad" "fantasyland"]))
(hoarder:fetch "rmies/monad"
  '(:tags ["elixir" "monad"]
    :memo "[[http://qiita.com/nunulk/items/fac581c14e95325d569a][ドメイン駆動設計と関数プログラミングをElixirで - Qiita]]
[[http://www.zohaib.me/monads-in-elixir-2/][Monads in Elixir]]
[[https://github.com/zabirauf/monad][GitHub - zabirauf/monad: Monads and do-syntax for Elixir]]"))
(hoarder:fetch "malcolmstill/ulubis"
  '(:tags ["common_lisp" "wayland" "composition"]))
(hoarder:fetch "motersen/pot"
  '(:tags ["scheme" "tag" "file" "database" "cli"]))
(hoarder:fetch "motersen/pits"
  '(:tags ["picolisp" "tag" "file" "database" "cli"]))
(hoarder:fetch "carrois/Fira"
  '(:tags ["font"]
    :download nil))
(hoarder:fetch "fuyuneko/startpage"
  '(:tags ["4chan" "startpage" "web" "html" "css"]
    :memo "[[https://boards.4chan.org/g/thread/57171332][/g/ - Startpage and CSS General - Technology - 4chan]]"))
(hoarder:fetch "git://git.gnome.org/libxml2"
  '(:tags ["xml" "xmllint"]))
(hoarder:fetch "binaryage/env-config"
  '(:tags ["clojure" "configuration" "settings" "environment_variable"]))
(hoarder:fetch "CrowdHailer/OK"
  '(:tags ["elixir" "pipeline" "monad"]))
(hoarder:fetch "jarun/Buku"
  '(:tags ["bookmark" "terminal"]))
(hoarder:fetch "Code-Hex/battery"
  '(:tags ["golang" "battery" "linux" "tmux"]))
(hoarder:fetch "eikek/chee"
  '(:tags ["photo" "emacs" "scala"]))
(hoarder:fetch "swiftb/clicker-heroes-sw1ft-bot"
  '(:tags ["clicker_heroes" "swift" "bot"]))
(hoarder:fetch "jordansissel/xdotool")
(hoarder:fetch "autokey/autokey"
  '(:tags ["automation" "linux" "autoclicker"]))
(hoarder:fetch "guoci/autokey-py3"
  '(:tags ["automation" "linux" "autoclicker"]))
(hoarder:fetch "bzzzzzu/chsimulator"
  '(:tags ["clicker_heroes" "game" "java"]))
(hoarder:fetch "pocke/lemonade"
  '(:tags ["clipboard" "ssh" "windows" "linux"]))
(hoarder:fetch "git://git.webkit.org/WebKit.git"
  '(:depth nil
    :download nil))
(hoarder:fetch "mattn/files"
  '(:tags ["golang" "ripgrep"]))
(hoarder:fetch "kayac/go-katsubushi"
  '(:tags ["unique_id" "id" "random" "golang"]
    :memo "[[http://tech.kayac.com/archive/katsubushi-introduction.html][分散環境でユニークなidを発番するGo製プロダクト「katsubushi」のご紹介 | tech.kayac.com - KAYAC engineers' blog]]"))
(hoarder:fetch "twitter/snowflake"
  '(:branch "snowflake-2010"
    :tags ["unique_id" "id" "random" "scala"]))
(hoarder:fetch "gpakosz/.tmux"
  '(:memo "[[http://pempek.net/blog/2016/10/27/here-i-rewrote-my-tmux-configuration/][Here, I rewrote My Self Contained Tmux Configuration | PEMPEK.NET]]
[[https://www.reddit.com/r/unixporn/comments/59qmu5/tmux_pimping_my_tmux/][Too Many Requests]]"))
(hoarder:fetch "tov/shcaml"
  '(:tags ["shell" "shellscript" "ocaml"]))
(hoarder:fetch "dirkvdb/ffmpegthumbnailer"
  '(:tags ["ffmpeg" "video" "thumbnail"]))
(hoarder:fetch "ageitgey/node-unfluff"
  '(:tags ["javascript" "html" "readability"]))
(hoarder:fetch "Pella86/Schrodinger-religion"
  '(:tags ["religion"]
    :memo "[[https://boards.4chan.org/g/thread/57282011][/g/ - GitHub Schrodinger Religion - Technology - 4chan]]"))
(hoarder:fetch "MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-"
  '(:tags ["google_music" "music_player"]))
(hoarder:fetch "vhodges/flexstatus"
  '(:tags ["desktop" "statusbar" "panel" "golang" "dzen" "lemonbar"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/59xigd/oc_flexstatus_a_flexible_statusbar_generator/][Too Many Requests]]"))
(hoarder:fetch "joewing/jwm"
  '(:tags ["window_manager"]))
(hoarder:fetch "manjaro/artwork-vertex-maia"
  '(:tags ["gtk" "theme"]))
(hoarder:fetch "manjaro/vertex-maia-icon-themes"
  '(:tags ["gtk" "theme"]
    :download nil))
(hoarder:fetch "sos4nt/dynamic-colors"
  '(:tags ["terminal" "colorscheme"]))
(hoarder:fetch "anmoljagetia/Flatabulous"
  '(:tags ["gtk" "theme" "unity"]))
(hoarder:fetch "Mayccoll/Gogh"
  '(:tags ["gnome-terminal" "pantheon" "colorscheme"]))
(hoarder:fetch "jh3y/driveway"
  '(:tags ["css" "html" "masonry_layout" "web"]))
(hoarder:fetch "MostlyAdequate/mostly-adequate-guide"
  '(:tags ["javascript" "book" "functional_programming" "functor" "monad"]))
(hoarder:fetch "https://gitlab.com/CartesianDuelist/CodeOfCoding.git"
  '(:tags ["code_of_conduct"]))
(hoarder:fetch "haesbaert/mdnsd"
  '(:tags ["mdns" "openbsd" "bonjour" "avahi"]))
(hoarder:fetch "git://git.code.sf.net/p/flwm/flwm"
  '(:tags ["window_manager" "fltk"]))
(hoarder:fetch "tek/amino"
  '(:tags ["python" "monad"]))
(hoarder:fetch "tobgu/pyrsistent"
  '(:tags ["python" "persistent" "data_structure"]))
(hoarder:fetch "VoLuong/Begin-Latex-in-minutes"
  '(:tags ["latex"]))
(hoarder:fetch "GNOME/sushi")
(hoarder:fetch "git://anongit.kde.org/choqok.git"
  '(:tags ["kde" "twitter"]))
(hoarder:fetch "e-stat-api/adaptor"
  '(:tags ["python" "e-stat" "api" "statistics"]
    :site "https://www.e-stat.go.jp/"))
(hoarder:fetch "what3words/w3w-node-wrapper"
  '(:tags ["node" "what3words" "api"]))
(hoarder:fetch "witheve/Eve"
  '(:tags ["javascript"]
    :site "http://witheve.com/"))
(hoarder:fetch "sqreen/awesome-nodejs-projects"
  '(:tags ["node" "javascript" "awesome_list"]))
(hoarder:fetch "esrlabs/git-repo"
  '(:tags ["git"]))
(hoarder:fetch "talwrii/jsdb"
  '(:tags ["json" "python" "database"]))
(hoarder:fetch "ryanoasis/nerd-fonts"
  '(:download nil))
(hoarder:fetch "strainer/Fdrandom.js"
  '(:tags ["javascript" "random"]))
(hoarder:fetch "rdnetto/powerline-hs"
  '(:tags ["powerline" "haskell" "terminal"]))
(hoarder:fetch "installgen2/rustchan"
  '(:tags ["4chan" "bbs" "rust"]))
(hoarder:fetch "https://git.kfarwell.org/tokumei"
  '(:type :git
    :site "https://tokumei.co/"
    :memo "[[https://lainchan.org/tech/res/30995.html][tech - Tokumei 1.0 Release Party]]"))
(hoarder:fetch "jlbyrey/1chan"
  '(:tags ["4chan" "bbs"]))
(hoarder:fetch "urweb/urweb"
  '(:tags ["ml" "haskell"]
    :site "http://www.impredicative.com/ur/"))
(hoarder:fetch "Wukix/LambdaLite"
  '(:tags ["common_lisp" "database"]))
(hoarder:fetch "k1LoW/sconb"
  '(:tags ["ssh" "configuration" "json" "ruby"]
    :memo "[[http://k1low.hatenablog.com/entry/2014/09/10/193435][.ssh/configをバックアップ(?)するツール sconb を作ってみた - Copy/Cut/Paste/Hatena]]"))
(hoarder:fetch "k1LoW/koma"
  '(:tags ["ssh" "os"]))
(hoarder:fetch "joeyh/propellor"
  '(:tags ["haskell" "configuration"]))
(hoarder:fetch "sindresorhus/ua-string"
  '(:tags ["chrome" "user_agent" "browser" "javascript"]))
(hoarder:fetch "pguth/random-tree-names"
  '(:tags ["random" "generator"]))
(hoarder:fetch "getstream/winds"
  '(:tags ["javascript" "rss" "feed"]))
(hoarder:fetch "jsvine/waybackpack"
  '(:tags ["archive" "wayback_machine" "web"]))
(hoarder:fetch "https://gist.github.com/selsta/ce3fb37e775dbd15c698.git"
  '(:name "autosub.lua"
    :tags ["mpv" "lua" "subtitle"]))
(hoarder:fetch "plexinc/plex-media-player"
  '(:tags ["mpv" "plex" "qt"]))
(hoarder:fetch "shingetsu-gou/shingetsu-gou"
  '(:tags ["p2p" "shingetsu" "saku" "golang"]))
(hoarder:fetch "mottalrd/hash_dig_and_collect"
  '(:tags ["ruby" "hash"]
    :memo "[[http://www.alfredo.motta.name/making-ruby-hashdig-even-more-awesome-introducing-hashdig_and_collect/][Making Ruby Hash#dig even more awesome. Introducing Hash#dig_and_collect – Alfredo Motta]]"))
(hoarder:fetch "demouth/mario-go"
  '(:tags ["golang" "terminal" "game"]))
(hoarder:fetch "piotrmurach/tty-file"
  '(:tags ["ruby" "file"]))
(hoarder:fetch "https://gist.github.com/53ningen/689a0f97253ee7b7a7b762b793bc7c70.git"
  '(:tags ["sakura_ayane"]))
(hoarder:fetch "mifi/lossless-cut"
  '(:tags ["ffmpeg" "video" "node" "electron"]))
(hoarder:fetch "nkh/P5-App-Asciio"
  '(:tags ["perl" "ascii_art"]))
(hoarder:fetch "technomancy/atreus"
  '(:tags ["keyboard" "ergodox" "mechanical_keyboard" "cherry_mx"]
    :site "https://atreus.technomancy.us/"))
(hoarder:fetch "https://gitlab.com/eggcaker/org-mode-gitlab-pages.git"
  '(:tags ["gitlab" "orgmode"]))
(hoarder:fetch "stephen-riley/ex_optionals"
  '(:tags ["elixir" "optional"]
    :memo "[[https://www.reddit.com/r/elixir/comments/5938dn/what_are_you_working_on_oct2016/d9ndn4i/][Too Many Requests]]
[[http://fsharpforfunandprofit.com/posts/recipe-part2/][Railway oriented programming | F# for fun and profit]]"))
(hoarder:fetch "jbernardo95/cronex"
  '(:tags ["elixir" "cron"]))
(hoarder:fetch "domnikl/kindle-clippings"
  '(:tags ["kindle" "elixir"]))
(hoarder:fetch "lubien/bookmarker"
  '(:tags ["google_chrome" "markdown" "bookmark"]))
;; (hoarder:fetch "https://gitla.in/cosmicpuppet/blog.git"
;;   '(:tags ["lainchan"]))
(hoarder:fetch "the-little-prover/j-bob"
  '(:site "http://the-little-prover.github.io/"
    :tags ["scheme" "logic_programming" "proof_assistant"]))
(hoarder:fetch "maxogden/ldjson-stream"
  '(:tags ["json" "node" "ldjson"]))
(hoarder:fetch "DogMan8/CatChan"
  '(:tags ["catalog" "4chan" "bbs" "userjs" "javascript"]))
(hoarder:fetch "eschulte/graph"
  '(:tags ["common_lisp" "graph" "digraph"]))
(hoarder:fetch "sjl/cl-digraph"
  '(:tags ["common_lisp" "graph" "digraph"]))
(hoarder:fetch "nfjinjing/miku"
  '(:tags ["haskell"]))
(hoarder:fetch "scymtym/xml.location"
  '(:tags ["common_lisp" "xml" "xpath" "dom"]))
(hoarder:fetch "jperson/cl-reddit"
  '(:tags ["common_lisp" "reddit" "api"]))
(hoarder:fetch "kltm/tanuki"
  '(:tags ["common_lisp" "web" "crawler"]))
(hoarder:fetch "kltm/kappa"
  '(:tags ["common_lisp" "web" "crawler" "mechanize" "drakma"]))
(hoarder:fetch "eikek/dlm"
  '(:tags ["common_lisp" "downloader" "curl" "cli"]))
(hoarder:fetch "rongarret/ergolib"
  '(:tags ["common_lisp" "utility"]))
(hoarder:fetch "TeMPOraL/scrap-gumtree"
  '(:tags ["common_lisp" "gumstree" "scraping" "crawler"]))
(hoarder:fetch "nathancorvussolis/skkdic"
  '(:tags ["skk" "dictionary"]))
(hoarder:fetch "wohonajax/DHTiCL"
  '(:tags ["dht" "common_lisp" "protocol"]))
(hoarder:fetch "zhoujd/zzstumpwm"
  '(:tags ["common_lisp" "stumpwm" "clfswm" "configuration"]))
(hoarder:fetch "VitoVan/cl-spider"
  '(:tags ["crawler" "common_lisp"]))
(hoarder:fetch "orthecreedence/cl-hash-util"
  '(:tags ["common_lisp" "hashtable" "utility"]))
(hoarder:fetch "timgrossmann/StorageSystem"
  '(:tags ["java" "raspberry_pi" "personal_information_management"]))
(hoarder:fetch "francoisdevlin/devlinsf-clojure-utils"
  '(:tags ["clojure" "utility"]))
(hoarder:fetch "ralph-schleicher/rs-colors"
  '(:tags ["common_lisp" "color" "rgb" "hex" "hsl"]))
(hoarder:fetch "AccelerationNet/a-cl-logger"
  '(:tags ["common_lisp" "logging"]))
(hoarder:fetch "hanshuebner/bknr-datastore"
  '(:tags ["common_lisp" "database"]))
(hoarder:fetch "javaslang/javaslang"
  '(:tags ["java" "functional_programming"]
    :memo "https://github.com/javaslang/javaslang/blob/master/javaslang/src/main/java/javaslang/collection/HashMap.java"))
(hoarder:fetch "shazow/ssh-chat"
  '(:memo "[[https://medium.com/swlh/ssh-how-does-it-even-9e43586e4ffc#.85hs7itt1][Why aren’t we using SSH for everything? – The Startup – Medium]]"))
(hoarder:fetch "exupero/islands"
  '(:site "http://exupero.org/islands/"
    :download nil))
(hoarder:fetch "PragTob/deep_merge"
  '(:tags ["elixir" "maps"]))
(hoarder:fetch "cstockton/go-iter"
  '(:tags ["golang" "iterator"]))
(hoarder:fetch "dhamaniasad/HeadlessBrowsers"
  '(:tags ["headless" "browser" "webkit"]))
(hoarder:fetch "jeapostrophe/remix"
  '(:tags ["racket" "dsl"]))
(hoarder:fetch "adhokku/adhokku"
  '(:tags ["jail" "freebsd"]))
(hoarder:fetch "https://bitbucket.org/tux_/rssparser.lisp"
  '(:type :hg
    :tags ["common_lisp" "rss" "web" "dom" "xml"]
    :memo "[[https://www.reddit.com/r/Common_Lisp/comments/5cl5y1/a_webtorss_parser_in_common_lisp/][Too Many Requests]]"))
(hoarder:fetch "death/gnusdumps"
  '(:tags ["common_lisp" "rss" "gnus" "html"]
    :memo "[[https://www.reddit.com/r/Common_Lisp/comments/5cl5y1/a_webtorss_parser_in_common_lisp/][Too Many Requests]]"))
(hoarder:fetch "Shinmera/random-state"
  '(:tags ["common_lisp" "random" "generator"]))
(hoarder:fetch "RichardLitt/standard-readme"
  '(:tags ["node" "readme"]))
(hoarder:fetch "whizzml/examples"
  '(:tags ["machine_learning" "lisp"]))
(hoarder:fetch "csujedihy/proximac"
  '(:tags ["proxy" "macos"]))
(hoarder:fetch "knarka/fikaba"
  '(:tags ["imageboard" "bbs"]
    :site "http://chanola.netau.net/board/"))
(hoarder:fetch "anilogia/animedb"
  '(:tags ["anime" "database"]
    :download nil))
(hoarder:fetch "woxtu/animedb-json"
  '(:tags ["anime" "database"]
    :download nil))
(hoarder:fetch "fln/addrwatch"
  '(:tags ["network" "monitoring"]))
(hoarder:fetch "lesspass/lesspass"
  '(:tags ["password"]))
(hoarder:fetch "afaqurk/linux-dash"
  '(:tags ["linux" "dashboard" "monitoring"]))
(hoarder:fetch "timakin/ts"
  '(:tags ["news" "rss"]))
(hoarder:fetch "josephyzhou/github-trending"
  '(:tags ["github"]))
(hoarder:fetch "Qix-/color"
  '(:tags ["javascript" "color" "rgb" "hsl"]))
(hoarder:fetch "kadena-io/pact"
  '(:tags ["haskell" "lisp" "language"]))
(hoarder:fetch "foxmask/django-th"
  '(:tags ["python" "ifttt" "django"]))
(hoarder:fetch "rstacruz/flatdoc"
  '(:tags ["markdown" "html" "github"]))
(hoarder:fetch "FreshRSS/FreshRSS"
  '(:tags ["rss" "ttrss" "server"]))
(hoarder:fetch "Skarafaz/mercury"
  '(:tags ["ssh" "android"]))
(hoarder:fetch "Skarafaz/mercury.wiki"
  '(:tags ["ssh" "android"]))
(hoarder:fetch "sindresorhus/random-obj-prop"
  '(:tags ["random" "javascript"]))
(hoarder:fetch "clonos/cp-installer"
  '(:tags ["freebsd"]))
(hoarder:fetch "sindresorhus/subsume"
  '(:tags ["javascript"]))
(hoarder:fetch "haasn/hsbooru"
  '(:tags ["booru" "haskell"]))
(hoarder:fetch "haasn/random_haskell_stuff"
  '(:tags ["haskell"]))
(hoarder:fetch "arathnim/parmesan"
  '(:tags ["common_lisp" "parser"]))
(hoarder:fetch "ZedPea/ls-clone"
  '(:tags ["haskell" "ls"]))
(hoarder:fetch "ZedPea/rule34-paheal-downloader"
  '(:tags ["haskell" "rule34"]))
(hoarder:fetch "jmgimeno/okasaki-clojure"
  '(:memo "[[http://phaendal.hatenablog.com/entry/2016/11/13/212328][ClojureでのImmutable Data Structureについてメモ - レガシーコード生産ガイド]]"))
(hoarder:fetch "interagent/prmd"
  '(:tags ["markdown" "json_scheme"]))
(hoarder:fetch "commoncrawl/commoncrawl"
  '(:tags ["crawler" "data" "common_search" "warc"]
    :site "http://www.commoncrawl.org/"))
(hoarder:fetch "commonsearch/cosr-back"
  '(:tags ["crawler" "data" "common_crawl" "wikidata" "dmoz" "warc"]
    :site  "https://about.commonsearch.org/"
    :memo "[[http://dsi.ut-capitole.fr/blacklists/index_en.php][Blacklists UT1]]
[[http://www.dmoz.org/][DMOZ - The Directory of the Web]]"))
(hoarder:fetch "mgsnova/feature"
  '(:tags ["ruby" ]))
(hoarder:fetch "schnitz81/beings"
  '(:memo "[[https://www.youtube.com/watch?v=rXTbAWzp6o4][beings, AI walking or \"scaleable multibeings simulator with individual AI\" - YouTube]]"))
(hoarder:fetch "schnitz81/textmode-lifestyle"
  '(:memo "[[https://www.youtube.com/watch?v=CF7x0vJgypw][textmode-lifestyle, Text mode lifestyle - YouTube]]"))
(hoarder:fetch "nvzqz/RandomKit"
  '(:tags ["random" "swift"]))
(hoarder:fetch "Code-Hex/Neo-cowsay"
  '(:tags ["golang" "cowsay"]))
(hoarder:fetch "datproject/dat"
  '(:tags ["p2p" "node" "javascript"]
    :memo "[[https://www.youtube.com/watch?v=0Ra9bXbtJJY][DAT Project - DAppHack Berlin 2016 - YouTube]]"))
(hoarder:fetch "shriphani/pegasus"
  '(:tags ["clojure" "web" "crawler"]
    :memo "[[http://blog.shriphani.com/2016/11/16/a-clojure-dsl-for-web-crawling/][A Clojure DSL for Web-Crawling]]"))
(hoarder:fetch "rchipka/node-osmosis"
  '(:tags ["node" "crawler" "scraper"]))
(hoarder:fetch "xsc/invariant"
  '(:tags ["clojure" "spec"]))
(hoarder:fetch "https://go.googlesource.com/image"
  '(:type :git
    :tags ["golang" "font"]))
(hoarder:fetch "wireapp/wire-android"
  '(:tags ["chat" "messanger"]
    :download nil))
(hoarder:fetch "substack/git-dat"
  '(:tags ["git" "p2p" "datjs"]))
(hoarder:fetch "nfs-ganesha/nfs-ganesha"
  '(:tags ["nfs"]))
(hoarder:fetch "mntmn/interim"
  '(:tags ["lisp_machine" "os"]))
(hoarder:fetch "carloscuesta/gitmoji"
  '(:tags ["github" "emoji" "node"]))
(hoarder:fetch "carloscuesta/gitmoji-cli")
(hoarder:fetch "chenxsan/Privoxy"
  '(:tags ["privoxy" "proxy"]))
(hoarder:fetch "https://gist.github.com/sx2008/2766874.git"
  '(:tags ["privoxy" ]))
(hoarder:fetch "rakanalh/grawler"
  '(:tags ["crawler" "scraping" "galang"]))
(hoarder:fetch "yoshuawuyts/knowledge"
  '(:tags ["knowledge" "information"]))
(hoarder:fetch "vicfryzel/xmonad-config"
  '(:tags ["xmonad" "configuration"]))
(hoarder:fetch "scvalencia/Coddie"
  '(:tags ["scheme" "python" "database"]))
(hoarder:fetch "ctford/V"
  '(:tags ["clojure" "test" "validation"]))
(hoarder:fetch "DoG-peer/electric-yp"
  '(:tags ["peercast" "coffeescript" "electron"]))
(hoarder:fetch "anmonteiro/lumo"
  '(:tags ["clojurescript" "repl" "planck"]))
(hoarder:fetch "azer/notebook"
  '(:tags ["knowledge" "information"]))
(hoarder:fetch "askucher/ftjs"
  '(:tags ["javascript" "type"]))
(hoarder:fetch "cosmos72/twin"
  '(:tags ["desktop" "window_manager"]))
(hoarder:fetch "Developer-Y/cs-video-courses"
  '(:tags ["video" "mooc" "computer_science" "lecture"]))
(hoarder:fetch "spantaleev/sftpman"
  '(:tags ["sshfs" "sftpman" "python"]))
(hoarder:fetch "drduh/pwd.sh"
  '(:tags ["password"]))
(hoarder:fetch "mfrelink/OpenFLIXR.Wizard"
  '(:tags ["plex"]))
(hoarder:fetch "gaubert/gmvault"
  '(:tags ["python" "gmail"]))
(hoarder:fetch "tony/tmuxp"
  '(:tags ["tmux" "python"]))
(hoarder:fetch "tony/vcspull"
  '(:tags ["python" "git" "vcs"]))
(hoarder:fetch "benbernard/RecordStream"
  '(:tags ["perl" "json" "csv"]))
(hoarder:fetch "skavanagh/KeyBox"
  '(:tags ["ssh" ]))
(hoarder:fetch "https://git.yoctoproject.org/git/matchbox-desktop-2"
  '(:type :git
    :tags ["desktop" "window_manager"]))
(hoarder:fetch "RadicalMilitantLibrary/www"
  '(:tags ["library" "tor"]))
(hoarder:fetch "kidd/redditfs.lua"
  '(:tags ["reddit" "lua"]))
(hoarder:fetch "todylu/monaco.ttf"
  '(:tags ["font"]))
;; (hoarder:fetch "PedoHunter/pizzagate")
(hoarder:fetch "davehodg/perlcolour"
  '(:tags ["perl" "color" "terminal"]))
(hoarder:fetch "Jasonette/Jasonpedia"
  '(:tags ["json" "ios"]))
(hoarder:fetch "benrady/shinatra"
  '(:tags ["shell" "server"]))
(hoarder:fetch "chbrown/rfc6902"
  '(:tags ["json" "rfc" "json_patch"]))
(hoarder:fetch "bartekrutkowski/iocell"
  '(:tags ["freebsd" "iocage" "jail"]))
(hoarder:fetch "escherize/tracks"
  '(:tags ["clojure"]))
(hoarder:fetch "kkinnear/zprint"
  '(:tags ["clojure"]))
(hoarder:fetch "ekg2/ekg2"
  '(:tags ["messanger" "irc"]))
(hoarder:fetch "poppinss/co-compose"
  '(:tags ["javascript" "async" "generator" "koa" "adnisjs"]))
(hoarder:fetch "thysultan/wam.js"
  '(:tags ["javascript" "koa" "nextjs"]))
(hoarder:fetch "masatoi/wiz-util"
  '(:tags ["common_lisp" "utility" "uiop"]
    :memo "[[https://github.com/masatoi/wiz-util/blob/master/scripting.lisp][wiz-util/scripting.lisp at master · masatoi/wiz-util · GitHub]]"))
(hoarder:fetch "tweekmonster/nmux"
  '(:tags ["nvim"]))
(hoarder:fetch "inondle/YDLTracker"
  '(:tags ["youtube" "youtube-dl"]))
(hoarder:fetch "herbstluftwm/herbstluftwm")
(hoarder:fetch "ps3mediaserver/ps3mediaserver")
(hoarder:fetch "gizak/termui"
  '(:tags ["golang" "terminal"]))
(hoarder:fetch "huydx/hget"
  '(:tags ["golang" "downloader"]))
(hoarder:fetch "attic-labs/noms"
  '(:tags ["golang" "database"]
    :download nil))
(hoarder:fetch "astaxie/bat"
  '(:tags ["golang" "curl"]))
(hoarder:fetch "Sirupsen/logrus"
  '(:tags ["golang" "logging"]))
(hoarder:fetch "daboth/pagan"
  '(:tags ["python" "icon" "pixel_art"]))
(hoarder:fetch "reorx/httpstat"
  '(:tags ["http" "curl" "python"]))
(hoarder:fetch "lk-geimfari/elizabeth"
  '(:tags ["python" "generator" "random"]))
(hoarder:fetch "nicolaiarocci/cerberus"
  '(:tags ["python" "validation"]))
(hoarder:fetch "gerhard/deliver"
  '(:tags ["bash" "deployment"]))
(hoarder:fetch "junegunn/redis-stat"
  '(:tags ["ruby" "redis"]))
(hoarder:fetch "simeji/jid"
  '(:tags ["json" "jq" "cli"]))
(hoarder:fetch "jgthms/css-reference"
  '(:tags ["css" "reference" "document"]))
(hoarder:fetch "mail-in-a-box/mailinabox"
  '(:tags ["mail" "roundcube" "selfhost"]))
(hoarder:fetch "adtac/climate"
  '(:tags ["linux" "cli" "shell"]))
(hoarder:fetch "lukehaas/RegexHub"
  '(:tags ["regex"]))
(hoarder:fetch "skx/bookmarks.public"
  '(:tags ["bookmark" "selfhost"]
    :site "https://steve.fi/Software/bookmarks/bookmarks.public/"
    :memo "[[http://www.moongift.jp/2017/01/bookmarks-public-%E3%83%AD%E3%83%BC%E3%82%AB%E3%83%AB%E3%81%A7%E4%BD%BF%E3%81%88%E3%82%8Bhtml%E7%89%88%E3%83%96%E3%83%83%E3%82%AF%E3%83%9E%E3%83%BC%E3%82%AF%E7%AE%A1%E7%90%86/][bookmarks.public - ローカルで使えるHTML版ブックマーク管理 MOONGIFT]]"))
(hoarder:fetch "drduh/macOS-Security-and-Privacy-Guide"
  '(:tags ["macos" "security" "privacy" "dnscrypt"]))
(hoarder:fetch "drduh/Debian-Privacy-Server-Guide"
  '(:tags ["dnscypt" "linux" "server" "privoxy"]))
(hoarder:fetch "wellsjo/JSON-Splora"
  '(:tags ["json" "electron" "visualization" "editor"]))
(hoarder:fetch "mirror/jdownloader"
  '(:tags ["downloader" "java"]
    :download nil))
(hoarder:fetch "xdavidhu/mitmAP"
  '(:tags ["mitmproxy" "wireshark"]))
(hoarder:fetch "shimmerproject/Greybird"
  '(:tags ["gtk" "theme"]))
(hoarder:fetch "ix/etc"
  '(:memo "[[https://www.reddit.com/r/unixporn/comments/5f1ugt/hlwmemacs_boring/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/5yujms/xmonad_kinda_cliche_idk/][{xmonad} kinda cliche idk : unixporn]]"
    :tags ["xmonad" "emacs" "nixos"]))
;; (hoarder:fetch "sn0rlax/dotfiles"
;;   '(:memo "[[https://www.reddit.com/r/unixporn/comments/5f7vsz/hlwm_snow_on_mars/][{hlwm} Snow on Mars : unixporn]]"))
(hoarder:fetch "brightflash64/MOFO-Linux"
  '(:site "http://mofolinux.com"
    :memo "[[https://www.youtube.com/watch?v=EdsVXt5fT0M][MOFO Linux 5 - YouTube]]"))
(hoarder:fetch "https://anonscm.debian.org/git/reproducible/reproducible-website.git"
  '(:site "https://reproducible-builds.org/"
    :depth nil))
(hoarder:fetch "k0kubun/xkremap"
  '(:tags ["linux" "ruby" "keymap"]
    :memo "[[http://k0kubun.hatenablog.com/entry/xkremap][Linux向けの最強のキーリマッパーを作った - k0kubun's blog]]"))
(hoarder:fetch "k0kubun/Nocturn"
  '(:tags ["twitter" "electron" "react" "redux"]))
(hoarder:fetch "ExpediaInceCommercePlatform/cyclotron"
  '(:tags ["javascript" "mongodb" "dashboard"]))
(hoarder:fetch "git://git.sv.gnu.org/artanis.git"
  '(:tags ["gnu" "guile" "web" "waf"]))
(hoarder:fetch "sdqali/hackervision"
  '(:tags ["firefox" "colorscheme"]))
(hoarder:fetch "gchq/CyberChef"
  '(:tags ["web" "hash" "base64"]))
(hoarder:fetch "landonf/swift-freebsd"
  '(:tags ["swift" "freebsd"]))
(hoarder:fetch "respectpal/google_news_scrape"
  '(:memo "[[http://tech.respect-pal.jp/totsuzen_programmer/][突然プログラマになって社内ファイルサーバ検索システムを作った話 | 東北ギーク]]"
    :tags ["google_news" "scraping"]))
(hoarder:fetch "ongaeshi/honyomi"
  '(:tags ["pdf" "ruby" "document"]))
(hoarder:fetch "jneen/parsimmon"
  '(:tags ["javascript" "parser"]))
(hoarder:fetch "OpenHMD/OpenHMD"
  '(:tags ["VR" "linux"]))
(hoarder:fetch "yoshihiro503/ocamltter"
  '(:tags ["ocaml" "twitter"]
    :memo "[[http://proofcafe.org/wiki/ocamltter][ProofCafe - ocamltter]]"))
(hoarder:fetch "LeonGr/urxvt-snazzy"
  '(:tags ["urxvt" "colorscheme"]))
(hoarder:fetch "https://gitlab.com/qqx/crawllib.git"
  '(:tags ["golang" "crawler"]))
(hoarder:fetch "sue445/rubicure"
  '(:tags ["ruby" "precure"]
    :memo "[[http://qiita.com/sue445/items/ba577b5dc805e2a1ddef][プリキュアのRuby実装「rubicure」 - Qiita]]
[[http://www.slideshare.net/tadsan/rubicure][Rubicureに学ぶメタプログラミング]]
[[http://sue445.hatenablog.com/entry/2016/12/16/000000][rubicureのこれまでとこれから - くりにっき]]"))
(hoarder:fetch "igrep/unite-precure"
  '(:tags ["vim" "unite.vim" "precure"]
    :memo "[[http://the.igreque.info/posts/2014-12-25-unite-precure.vim.html][igreque : Info -> ユナイトプリキュア！このあとVim！ #cure_advent]]"))
(hoarder:fetch "kan/p5-acme-prettycure"
  '(:tags ["perl" "precure"]))
(hoarder:fetch "oti/slack-reaction-decomoji"
  '(:tags ["ruby" "decomji" "emoji"]))
(hoarder:fetch "mottox2/emoji-generator"
  '(:memo "[[http://qiita.com/mottox2/items/f5f1aefdf363d3b5a644][CLIだけでSlackで使える日本語Reaction emojiをつくる - Qiita]]
[[http://qiita.com/advent-calendar/2016/emoji][絵文字 / Emoji Advent Calendar 2016 - Qiita]]"
    :tags ["emoji"])) 
(hoarder:fetch "mpdairy/posh"
  '(:tags ["clojure" "datascript" "reagent"]))
(hoarder:fetch "avli/img-crawler"
  '(:tags ["clojure" "crawler"]
    :memo "[[https://www.livecoding.tv/minus_void/videos/AekbL-simple-web-crawler-in-clojure-5][Simple web crawler in Clojure - Livecoding.tv]]"))
(hoarder:fetch "tudurom/windowchef"
  '(:tags ["wm" "desktop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5flsj9/windowchef_stairs/][{windowchef} Stairs : unixporn]]"))
(hoarder:fetch "tudurom/dotfiles"
  '(:tags ["wm" "confiugration" "windowchef"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5flsj9/windowchef_stairs/][{windowchef} Stairs : unixporn]]"
    :download nil))
(hoarder:fetch "dcat/xplot"
  '(:description "plotting on X root window"
    :tags ["x11" "plotting"]))
(hoarder:fetch "dcat/tplot"
  '(:description "terminal plotter using braille characters"
    :tags ["terminal" "braille" "plotting"]))
(hoarder:fetch "tudurom/textual"
  '(:description "Simple ASCII Art interface library in JavaScript"
    :tags ["javascript" "ascii_art"]))
(hoarder:fetch "tudurom/cloudy-gtk"
  '(:description "Gtk theme generated with oomox using my terminal color scheme, cloudy"
    :tags ["gtk" "theme"]))
(hoarder:fetch "smison/yukari"
  '(:description "縁ちゃんやる気出す"
    :site "https://smison.github.io/yukari/"
    :memo "[[http://www.adventar.org/calendars/1440][ゆゆ式 Advent Calendar 2016 - Adventar]]"))
(hoarder:fetch "KMR-zoar/name_samples"
  '(:memo "[[http://qiita.com/k_zoar/items/1ec296d4eb8e82985619][JA:Name sample の情報を楽に使えるようにするかもしれないやつ - Qiita]]"
    :tags ["openstreetmap"])) 
(hoarder:fetch "scrapy-plugins/scrapy-splash"
  '(:description "Scrapy+Splash for JavaScript integration"
    :memo "[[http://amacbee.hatenablog.com/entry/2016/12/01/210436][scrapy-splashを使ってJavaScript利用ページを簡単スクレイピング - amacbee's blog]]"
    :tags ["python" "scraping" "crawler" "scrapy" "javascript"]))
(hoarder:fetch "hamano/ame.sh"
  '(:description "東京ame.sh"
    :tags ["sixel" "terminal"]
    :memo "[[http://www.cuspy.org/diary/2016-12-02-amesh/][ターミナルに雨雲を表示する - cuspy diary]]
[[http://qiita.com/advent-calendar/2016/shell-script][Shell Script Advent Calendar 2016 - Qiita]]"))
(hoarder:fetch "vuvuzela/vuvuzela"
  '(:description "Private messaging system that hides metadata"
    :tags ["mesaging" "privacy" "security" "golang"]))
(hoarder:fetch "sassy/hashire"
  '(:description "play \"走れ!\" video in command line."
    :tags ["electron" "momoiro_clover_z" "youtube"]
    :memo "[[http://qiita.com/sassy_watson/items/7d0b35fd791221875e28][hashireというコマンドをelectronで作りました。 - Qiita]]"))
(hoarder:fetch "kuy/sc-repeat-playlist"
  '(:description "A Chrome Extension providing \"Repeat Playlist\" feature to SoundCloud."
    :tags ["chrome" "soundcloud"]
    :memo "[[http://qiita.com/kuy/items/7047228392e205276f17][SoundCloudでプレイリストのリピートを実現するChrome拡張を作ったよ - Qiita]]"))
(hoarder:fetch "neologd/mecab-ipadic-neologd"
  '(:description "Neologism dictionary based on the language resources on the Web for mecab-ipadic"
    :tags ["ipa" "dictionary" "kuromoji" "mecab" "japanese"]
    :download nil
    :memo "[[https://github.com/neologd/mecab-ipadic-neologd][GitHub - neologd/mecab-ipadic-neologd: Neologism dictionary based on the language resources on the Web for mecab-ipadic]]"))
(hoarder:fetch "fukamachi/envy"
  '(:description "Configuration switcher by an environment variable inspired by Config::ENV."
    :tags ["common_lisp"]))
(hoarder:fetch "jj1bdx/dbskkd-cdb"
  '(:description "SKK dictionary server based on cdb"
    :tags ["skk" "cdb"]
    :memo "[[http://www.corpit.ru/mjt/tinycdb.html][TinyCDB - a Constant DataBase]]"))
(hoarder:fetch "https://gist.github.com/masatoi/47fa4e3889af518dd003a515de9554dd.git"
  '(:name "merges-skkdic.sh"
    :tags ["skk"]))
(hoarder:fetch "dflemstr/rq"
  '(:description "Record Query - A tool for doing record analysis and transformation"
    :tags ["jq" "record" "avro"]))
(hoarder:fetch "pimterry/notes"
  '(:description ":pencil: Simple delightful note taking, with more unix and less lock-in."
    :tags ["shell" "note_taking"]))
(hoarder:fetch "akira-hamada/GitHopper"
  '(:description "GitHub Repositories Viewer Application"
    :tags ["electron" "github"]
    :memo "[[http://qiita.com/akira-hamada/items/02b6ec3fff42ca3e904a][GitHopperというGithub レポジトリのビュアーアプリをelectronで作った - Qiita]]"))
(hoarder:fetch "tesseract-ocr/tesseract"
  '(:description "Tesseract Open Source OCR Engine (main repository)"
    :tags ["ocr" "document" "image"]))
(hoarder:fetch "eslint/eslint"
  '(:description "A fully pluggable tool for identifying and reporting on patterns in JavaScript."
    :tags ["javascript" "linter" "test" "plugin"]
    :memo "[[http://qiita.com/moomooya/items/8f463bdfe13387ffbbe6][Node.jsでプラグインの仕組みを作る方法 - Qiita]]
[[https://github.com/eslint/eslint/blob/master/lib/load-rules.js][eslint/load-rules.js at master · eslint/eslint · GitHub]]"))
(hoarder:fetch "sue445/goprecure"
  '(:description "goprecure is golang implementation of \"Go! Princess PreCure\""
    :tags ["golang" "precure"]
    :memo "[[http://sue445.hatenablog.com/entry/2015/12/07/000000][GoがGoでGo!プリンセスプリキュアを作った #gocon #cure_advent - くりにっき]]
[[http://qiita.com/sue445/items/5d19b0bc3293371a85e2][Go!プリンセスプリキュアのGo言語実装「GoPrecure」 - Qiita]]"))
(hoarder:fetch "soprano1125/radiko-noa"
  '(:description "radiko.jp NOW ON AIR tweet"
    :tags ["radio" "radiko" "perl"]
    :memo "[[http://qiita.com/soprano1125/items/8ec1fefb932acc354e41][ラジオの「(非公式な)オンエア曲 BOT」を気が向いて作った話 - Qiita]]"))
(hoarder:fetch "lakshaykalbhor/MusicRepair"
  '(:description ":musical_score: Fixes music metadata and adds album art."
    :tags ["music" "tags" "mp3"]))
(hoarder:fetch "ptol/oczor"
  '(:description "Oczor is a simple statically typed language that compiles to JavaScript, Lua, Ruby and Emacs Lisp"
    :tags ["haskell" "ruby" "lua" "javascript" "emacs-lisp"]))
(hoarder:fetch "cy-takeuchi/kintone-fun"
  '(:tags ["shell" "terminal" "escape_sequnce"]
    :memo "[[http://qiita.com/YoshihikoTakeuchi/items/c9b4fa4458bba301279c][エスケープシーケンスを使ってロゴを動かす - Qiita]]")) 
(hoarder:fetch "becolomochi/dam_emoji"
  '(:tags ["emoji" "slack" "dam"]
    :memo "[[http://becolomochi.hatenablog.com/entry/slack-custom-emoji-dam][SlackのCustom Emojiをつくる - べこのツボ]]
[[http://qiita.com/advent-calendar/2016/emoji][絵文字 / Emoji Advent Calendar 2016 - Qiita]]")) 
(hoarder:fetch "mapbox/mapping"
  '(:description "OpenStreetMap contributions from the data team at Mapbox"
    :tags ["openstreetmap" "wikidata"]
    :memo "[[http://qiita.com/nyampire/items/6f85deb519c826dd9d8c][OSM and Wikidata - Qiita]]
[[https://github.com/mapbox/mapping/issues/242#issue-185579165][Joining Wikidata IDs to OSM · Issue #242 · mapbox/mapping · GitHub]]"))
(hoarder:fetch "jonathanstowe/Term-Screen"
  '(:description "High level terminal handling access via termcap for Perl"
    :tags ["terminal" "termcap" "perl"]))
(hoarder:fetch "dai-shi/es-beautifier"
  '(:description "ECMAScript beautifier based on eslint"
    :tags ["eslint" "beautifier" "javascript"]))
(hoarder:fetch "teitei-tk/tawawa-bot"
  '(:description "Deliver Happiness to Melancholy of Monday on LineBot."
    :tags ["golang" "line" "bot"]
    :memo "[[http://qiita.com/teitei_tk/items/c313a02e78e3045fdf5f][LINEBOT SDK GOを使って月曜日のたわわBOTを作った。 - Qiita]]"))
(hoarder:fetch "skeeto/showerthoughts"
  '(:description "/r/Showerthoughts fortune file generator"
    :tags ["fortune" "reddit" "showerthoughts"]
    :memo "[[http://nullprogram.com/blog/2016/12/01/][A Showerthoughts Fortune File « null program]]
[[https://www.reddit.com/r/Showerthoughts/][Too Many Requests]]"))
(hoarder:fetch "yu3mars/syobocalFilter"
  '(:description "しょぼいカレンダーのフィルタリング用プログラム"
    :tags ["syoboi_calendar" "anime"]
    :memo "[[http://yu3mars.hatenablog.com/entry/2016/12/07/190000][アニメ系新番組や単発番組の情報をカレンダーにするプログラム「しょぼかるフィルター」を作った - yu3mars’ diary]]
[[http://www.adventar.org/calendars/1444][KMC Advent Calendar 2016 - Adventar]]
[[http://cal.syoboi.jp/][しょぼいカレンダー]]"))
(hoarder:fetch "erikbern/git-of-theseus"
  '(:description "Analyze how a Git repo grows over time"
    :tags ["git" "graph" "analytics" "plotting"]))
(hoarder:fetch "qgriffith/OpenEats"
  '(:description "Recipe Management Site created in Django"
    :tags ["recipe"]
    :site "http://www.openeats.org/"))
(hoarder:fetch "DTVD/rainbowstream"
  '(:description "A smart and nice Twitter client on terminal written in Python."
    :tags ["twitter" "python" "terminal"]))
(hoarder:fetch "rn10950/FVWM95-Updated"
  '(:description "An updated version of FVWM95 that compiles on Debian Jessie"
    :tags ["fvwm"]))
(hoarder:fetch "bcicen/vim-vice"
  '(:description "Dark and vibrant colorscheme for vim"
    :tags ["vim" "colorscheme"]))
(hoarder:fetch "Capuno/Lander"
  '(:description "CLI Top-Down Space Shooter"
    :memo "[[https://www.reddit.com/r/unixporn/comments/5gn64l/i3gapspolybar_dark_and_simple/][Too Many Requests]]"))
(hoarder:fetch "iagor0ger/dotfiles"
  '(:description "my dotfiles"
    :memo "[[https://www.reddit.com/r/unixporn/comments/5h7pw5/bspwm_arch/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/5kq8o6/herbstluftwm_in_arch_linux/][Too Many Requests]]"))
(hoarder:fetch "yuroyoro/gommit-m"
  '(:description "gommit-m - Command Line Client for commit-m (http://commit-m.minamijoyo.com)"
    :memo "[[http://yuroyoro.hatenablog.com/entry/2015/11/10/132620][「commit-m: GitHubコミットメッセージの文例が検索できるサービス」がとても便利だったのでcliから使えるコマンド書いた - ( ꒪⌓꒪) ゆるよろ日記]]"
    :tags ["git" "commit-m" "commit_message"]))
(hoarder:fetch "massa142/hngo"
  '(:description "Command Line Client for Hacker News (https://news.ycombinator.com/)"
    :tags ["hackernewes" "golang"]
    :memo "[[http://qiita.com/massa142/items/df181fc77a4d67e0f2a4][Hacker Newsを一覧表示してくれるCLIツールを書いた - Qiita]]"))
(hoarder:fetch "massa142/gotebu"
  '(:description "Command Line Client for Hatena Bookmark HotEntry"
    :tags ["hatena_bookmark" "golang"]))
(hoarder:fetch "shibe97/worc"
  '(:description "A quiet twitter client made by Electron"
    :memo "[[http://shibe97.hatenablog.com/entry/2016/12/09/093939][仕事中に閲覧できるTwitterクライアント「Worc」を作った - The future starts today]]"))
(hoarder:fetch "fand/irasutoya"
  '(:description "いらすとや検索コマンド"
    :tags ["javascript" "irasutoya"]))
(hoarder:fetch "Arboreta/arboreta-core"
  '(:description "Common lisp environment with cairo and pango"
    :tags ["commo_lisp" "ide" "editor" "lisp_machine"]))
(hoarder:fetch "benjamin-glitsos/vim-writers-max-dotfiles"
  '(:description "Maximalist Vim dotfiles for writing in Pandoc Markdown."
    :tags ["configuration" "vim"]))
(hoarder:fetch "skaji/cpm"
  '(:description "fast CPAN module installer"
    :memo "[[https://superbob.github.io/clicker-heroes-1.0-hsoptimizer/#!/#%2F][Clicker Heroes 1.0 HS Optimizer]]"))
(hoarder:fetch "apprenticeharper/DeDRM_tools"
  '(:description "DeDRM tools for ebooks"
    :tags ["amazon" "ebook" "kindle" "drm" "epub" "calibre"]
    :memo "[[http://qiita.com/mgoldchild/items/165f63bc2e006c81bf58][Kindle本をGoogle Booksに移動させたときのメモ - Qiita]]
[[https://www.quora.com/How-can-I-convert-azw-to-pdf-or-epub-for-free][How to convert .azw to .pdf or .epub for free - Quora]]
[[https://ja.wikipedia.org/wiki/Calibrea][Calibrea - Wikipedia]]
[[https://github.com/kovidgoyal/calibre][GitHub - kovidgoyal/calibre: The official source code repository for the calibre ebook manager]]
[[https://github.com/apprenticeharper/DeDRM_tools][GitHub - apprenticeharper/DeDRM_tools: DeDRM tools for ebooks]]
[[https://apprenticealf.wordpress.com/2012/09/10/calibre-plugins-the-simplest-option-for-removing-most-ebook-drm/][DeDRM plugin for calibre: the simplest option for removing DRM from most ebooks | Apprentice Alf’s Blog]]
[[http://jp.epubor.com/guide/kindleコンテンツazwazw3とmobiの違い/][KindleコンテンツAZW、AZW3とMobiの違い » Epubor-Sony、Kobo、Kindle電子書籍のDRM解除とフォーマット変換]]
[[http://jp.epubor.com/guide/mobiファイルを閲覧する方法/][Mobiファイルを閲覧する方法 » Epubor-Sony、Kobo、Kindle電子書籍のDRM解除とフォーマット変換]]
[[http://www.mobileread.com/forums/showthread.php?t=108856][Location of Calibre Library - MobileRead Forums]]
[[http://k-airyuu.hatenablog.com/entry/2014/03/07/152655][電子書籍づくり実践（書誌情報を書く） - 本好きに送る「電子書籍のつくり方」講座]] "))
(hoarder:fetch "deadpixi/deadpixi-dwm"
  '(:description "Deadpixi fork of the suckless dwm window manager"
    :tags ["dwm"]))
(hoarder:fetch "https://notabug.org/Heckyel/LibreVideoJS.git"
  '(:tags ["librejs" "videojs" "html5"]))
(hoarder:fetch "driusan/dsh"
  '(:description "A UNIX shell written in a literate programming style, using Go and markdown."
    :tags ["golang" "shell" "literate_programming"]))
(hoarder:fetch "DrabWeb/Booru-chan"
  '(:description "A Booru browser for macOS"
    :tags ["booru" "macos"]))
(hoarder:fetch "bjarneo/Pytify"
  '(:description "Use this cli application as a Spotify remote. Including search for and start songs."
    :tags ["spotify" "python" "cli"]))
(hoarder:fetch "kurehajime/kuzusi"
  '(:description "breakout for terminal"
    :memo "[[http://qiita.com/kurehajime/items/a02eaae3f0c17750c07e][ターミナルで遊べるブロック崩しをGo言語で作る - Qiita]]"
    :tags ["golang" "terminal" "game" "cli" "termbox"]))
(hoarder:fetch "liuchengxu/space-vim"
  '(:description ":seedling: A vim configuration for spacemacs"
    :tags ["vim" "configuration" "spacemacs"]))
(hoarder:fetch "yyoshiki41/radigo"
  '(:description "Record radiko 📻"
    :tags ["radio" "golang" "radiko"]
    :memo "[[http://qiita.com/yyoshiki41/items/f81442d7dc2d0ddcf15b][radikoの録音ツールをGoで書いた - Qiita]]
[[http://qiita.com/advent-calendar/2016/go3][Go (その3) Advent Calendar 2016 - Qiita]]"))
(hoarder:fetch "greymd/cureutils"
  '(:description "Useful command line tool for Japanese battle heroine Pretty Cure (Precure)."
    :memo "[[http://qiita.com/greymd/items/666a26459aa1bd4cb06c][Cureutilsを使ったプリティでキュアキュアなターミナルライフの実現 - Qiita]]
[[http://www.adventar.org/calendars/1359][プリキュア Advent Calendar 2016 - Adventar]]"
    :tags ["precure" "ruby"]))
(hoarder:fetch "igrep/typesafe-precure"
  '(:description "Type-safe transformations and purifications of PreCures (Japanese Battle Heroine)"
    :memo "[[http://the.igreque.info/posts/2016/06-type-safe-precure.html][igreque : Info -> Haskellでプリキュアを作ってみた #cure_advent]]
[[http://www.adventar.org/calendars/1359][プリキュア Advent Calendar 2016 - Adventar]]
[[http://qiita.com/igrep/items/5496fa405fae00b5a737][「タイプセーフプリキュア！」を支える技術 - Qiita]]"
    :tags ["precure" "haskell"]))
(hoarder:fetch "kaosf/clocure"
  '(  :tags ["precure" "clojure"]
      :memo "[[https://gist.github.com/kaosf/67639b8a7d33cd0d14ff][はじけるCommonの香り！キュアClojure！ · GitHub]]
[[http://www.adventar.org/calendars/328][プリキュア Advent Calendar 2014 - Adventar]]
[[http://qiita.com/sue445/items/b41a4f5bdca46f1736c3][プリキュアの各言語での実装まとめ - Qiita]]")) 
(hoarder:fetch "stibear/precure"
  '(:description "Japanese Anime Precure (Pretty Cure) Library"
    :memo "[[http://stibear.tumblr.com/post/71830168190/stibearprecure][stibear/precure]]
[[http://qiita.com/sue445/items/b41a4f5bdca46f1736c3][プリキュアの各言語での実装まとめ - Qiita]]"))
(hoarder:fetch "o1egl/govatar"
  '(:description "Avatar generator library for GO language"
    :tags ["golang" "avatar" "icon"]))
(hoarder:fetch "https://bitbucket.org/eeeickythump/defstar.git"
  '(:tags ["common_lisp" "type"]))
(hoarder:fetch "TOYOZUMIKouichi/L4S"
  '(:description "Common Lispで最適化されたコードを作るときのためのユーティリティ集"
    :tags ["common_lisp"]))
(hoarder:fetch "TOYOZUMIKouichi/com.filmassembler.labs.commonlisp.utilities"
  '(:description "よくある汎用ユーティリティ集"
    :tags ["common_lisp" "utility"]))
(hoarder:fetch "g000001/mbe"
  '(:description "Scheme Macros for Common Lisp"
    :tags ["common_lisp" "scheme" "macro" "hygienic_macro"]))
(hoarder:fetch "kanreisa/reichat"
  '(:description "A lovely paint chat application like a PaintChatApp built with Node."
    :tags ["node" "javascript" "chat" "paint" "drawing"]))
(hoarder:fetch "cloudson/gitql"
  '(:description "A git query language"
    :tags ["git" "query" "information"]))
(hoarder:fetch "piroor/emoji-editor-html"
  '(:description "Simple WYSWIG Emoji Editor"
    :tags ["emoji"]
    :memo "[[http://qiita.com/piroor/items/68f028c8524620c46a00][絵文字✨とTwitter Bot🤖と私👤とEmoji Editor📝 - Qiita]]"))
(hoarder:fetch "HeavyHorst/remco"
  '(:description "remco is a lightweight configuration management tool"
    :tags ["golang" "configuration" "etcd" "consul"]
    :site "https://heavyhorst.github.io/remco/plugins/consul-plugin-example/"))
(hoarder:fetch "nogahighland/beautiful-log"
  '(:tags ["ruby" "rails" "logging"]
    :memo "[[http://in.fablic.co.jp/entry/2016/12/15/150234][Railsログを美しく Beautiful::Log - inFablic]]")) 
(hoarder:fetch "http://hg.code.sf.net/p/graphicsmagick/code"
  '(:type :hg
    :name "gm"
    :download nil))
(hoarder:fetch "in0rdr/diary"
  '(:description "Simple CLI diary"
    :tags ["terminal" "cli" "diary"]))
(hoarder:fetch "kzar/davemail"
  '(:description "My email configuration, using mbsync, notmuch, msmtp, msmtpq, pgp, emacs and gnus-alias"
    :tags ["mail" "notmuch" "emacs"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5iievm/nice_email_configuration_using_emacs_mbsync/][Nice email configuration using Emacs, mbsync, notmuch, msmtp, msmtpq, pgp, and gnus-alias : emacs]]"))
(hoarder:fetch "mightybyte/map-syntax"
  '(:description "Syntax sugar and explicit semantics for statically defined maps"
    :memo "[[https://www.reddit.com/r/haskell/comments/5i7ust/composition_operator_in_datamap/][Too Many Requests]]"
    :tags ["maps" "haskell"]))
(hoarder:fetch "fumieval/extensible"
  '(:description "Extensible data types and pattern matching, effects, tangles"
    :tags ["haskell" "record"]
    :memo "[[https://www.schoolofhaskell.com/user/fumieval/extensible-records][Extensible Records Explained - School of Haskell | School of Haskell]]
[[https://hackage.haskell.org/package/extensible][extensible: Extensible, efficient, optics-friendly data types]]
[[https://www.reddit.com/r/haskell/comments/5i2sas/extensible_records_explained_school_of_haskell/][Extensible Records Explained - School of Haskell : haskell]]"))
(hoarder:fetch "https://www.mercurial-scm.org/repo/hg"
  '(:type :hg
    :tags ["scm" "vcs"]))
(hoarder:fetch "kyokomi/xcrawl"
  '(:description "Tools to crawl html and read in xpath."
    :tags ["golang" "xpath" "crawler" "scraping"]
    :memo "[[http://kyokomi.hatenablog.com/entry/2016/12/15/211743][Webラジオのm3u8をdownloadしてffmpegでmp3に変換するツールをGoで書いた - きょこみのーと]]
[[http://www.animatetimes.com/radio/details.php?id=gn&a=10&m=a][「ガーリッシュ ナンバー」CUTE GIRLS RADIO（略して「クズらじ」） | アニメイトタイムズ]]
#+begin_src shell
$ xcrawl -c config.yaml \
-i 'http://sp.animatetimes.com/radio/details.php?id=gn&a=10&m=a' \ 
-x '//*[@id="main-contents"]/ul[1]/li[3]/div/div[1]/div/a[1]/@href' \
| xargs m3u8go -i \
| xargs ffmpego -o kuzu3.mp3 -i
#+end_src "))
(hoarder:fetch "kyokomi/m3u8go"
  '(:description "It is a tool to read the m3u8 file of Master Playlist."
    :tags ["golang" "m3u8" "playlist" "media"]
    :memo "[[http://kyokomi.hatenablog.com/entry/2016/12/15/211743][Webラジオのm3u8をdownloadしてffmpegでmp3に変換するツールをGoで書いた - きょこみのーと]]"))
(hoarder:fetch "kyokomi/ffmpego"
  '(:description "ffmpego is ffmpeg wrapper for m3u8 bulkdownload decode mp3"
    :tags ["golang" "ffmpeg" "m3u8" "mp3"]
    :memo "[[http://kyokomi.hatenablog.com/entry/2016/12/15/211743][Webラジオのm3u8をdownloadしてffmpegでmp3に変換するツールをGoで書いた - きょこみのーと]]"))
(hoarder:fetch "watilde/emoji-cli"
  '(:description "Emoji searcher"
    :tags ["emoji" "javascript"]
    :memo "[[http://qiita.com/watilde/items/37f49304dfcd05d40cec][emoji コマンドで簡単絵文字検索 :mag: - Qiita]]"))
(hoarder:fetch "ueokande/shvm"
  '(:description "A Version Manager for Shells"
    :tags ["shell" "version_manager" "fish" "bash" "zsh" "tcsh" ]
    :memo "[[https://i-beam.org/2016/12/16/shvm/][シェルのバージョンマネージャを作りました - Folioscope]]"))
(hoarder:fetch "sergiotapia/candysubs"
  '(:description "Command-line program to download subtitles for all of your media."
    :tags ["elixir" "cli" "subtitle" "movie"]))
(hoarder:fetch "ValeriyKr/sfb"
  '(:description "Flappy Bird clone, written in GNU sed"
    :tags ["sed" "game" "flappy_bird"]))
(hoarder:fetch "rxon/cross-platform-yu-gothic"
  '(:description "Cross-platform 游ゴシック"
    :tags ["css" "npm" "font" "yu-gothic"]
    :memo "[[https://rxon.now.sh/crossPlatformYu.md][MAKE游ゴシッククロスプラットフォームAGAIN | note - rxon.now.sh]]"))
(hoarder:fetch "sindresorhus/clipboardy"
  '(:description "Access the system clipboard (copy/paste)"
    :tags ["clipboard" "javascript"]))
(hoarder:fetch "rhysd/vim-color-spring-night"
  '(:description "Calm spring color scheme for Vim"
    :tags ["vim" "colorscheme"]))
(hoarder:fetch "https://bitbucket.org/jonforums/uru.git"
  '(:tags ["ruby" "rvm"]))
(hoarder:fetch "sue445/zatsu_monitor"
  '(:description "simple url monitoring tool"
    :memo "[[http://qiita.com/sue445/items/df2c1838cb44f4e75d66][雑にURL監視する「zatsu_monitor」 - Qiita]]"))
(hoarder:fetch "osamingo/jsonrpc"
  '(:description "The jsonrpc package helps implement of JSON-RPC 2.0"
    :tags ["golang" "json-rpc"]))
(hoarder:fetch "k0sukey/Rec"
  '(:description "Desktop screen recording app."
    :tags ["screencast" "recording" "electron" "node"]
    :memo "[[http://qiita.com/k0sukey/items/f43ef59c6dc54721be27][デスクトップを録画するアプリを書き直した - Qiita]]"))
(hoarder:fetch "https://gitlab.com/jbienaime/inspi.git"
  '(:tags ["cli" "bookmark"]))
(hoarder:fetch "uBlock-user/uBO-Personal-Filters"
  '(:description "A filterlist with additional filters for uBlock Origin to block third-party, tracking, annoyances and all other unwarranted resources from loading."
    :tags ["ublock_origin" "adblock" "filter"]))
(hoarder:fetch "uBlock-user/uMatrix-Hosts-List"
  '(:description "A perpetuated list of all blacklisted host-names intended to block ads, tracking, malware, spyware, clickbait, bloatware etc."
    :tags ["adblock" "filter" "umatrix"]))
(hoarder:fetch "haskell-foundation/foundation"
  '(:description "a new hope"
    :tags ["haskell" "prelude"]
    :memo "https://github.com/haskell-foundation/foundation/blob/master/Foundation/Collection/Sequential.hs"))
(hoarder:fetch "SynedraAcus/camp"
  '(:description "Roguelike prototype"
    :tags ["python" "roguelike" "game"]
    :memo "[[https://www.reddit.com/r/roguelikes/comments/5itn3e/a_rogueliketowerdef_hybrid_early_prototype/][A roguelike/towerdef hybrid, early prototype : roguelikes]]"))
(hoarder:fetch "nightfly19/cl-arrows"
  '(:description "Common Lisp implementation of Clojure's threading macros"
    :tags ["common_lisp" "clojure" "threading_macro"]))
(hoarder:fetch "rfkm/baum"
  '(:description "Extensible EDSL in EDN for building self-contained configuration files"
    :tags ["clojure" "dsl" "edn" "configuration"]
    :memo "[[http://qiita.com/rfkm/items/0e38a0d81325f17e7653][設定ファイル用 DSL Baum の紹介 - Qiita]]"))
(hoarder:fetch "mecab/emspect"
  '(:description "Emspect - EMoji inSPECTor"
    :tags ["emoji" "node" "javascript"]
    :memo "[[https://blog.misosi.ru/2016/12/20/released-emspect/][Emoji に関する詳細情報を表示するコマンド、emspect をリリースしていた。]]"))
(hoarder:fetch "gabesoft/trans"
  '(:description "Object transformer"
    :tags ["javascript"]))
(hoarder:fetch "nothings/single_file_libs"
  '(:description "List of single-file C/C++ libraries."
    :tags ["c" "c++"]))
(hoarder:fetch "allinurl/goaccess"
  '(:description "GoAccess is a real-time web log analyzer and interactive viewer that runs in a terminal in *nix systems or through your browser."
    :tags ["golang" "terminal" "log" "analyzer"]))
(hoarder:fetch "255kb/stack-on-a-budget"
  '(:description "A collection of services with great free tiers for developers on a budget"
    :tags ["web" "webservice"]))
(hoarder:fetch "janestreet/base"
  '(:description "Standard library for OCaml"
    :tags ["ocaml" "prelude"]))
(hoarder:fetch "vocalapp/vocal"
  '(:description "A powerful, beautiful, and simple podcast client for the modern free desktop."
    :tags ["podcast" "gtk" "linux"]
    :memo "[[https://www.youtube.com/watch?v=Gbzf2bzff2Y][Cool Linux Tools E.10 - Vocal - YouTube]]"))
(hoarder:fetch "philss/floki"
  '(:description "Floki is a simple HTML parser that enables search for nodes using CSS selectors."
    :tags ["elixir" "web" "scraping"]
    :memo "[[http://qiita.com/takpy/items/ab8f39b985a813a8346e][Elixirでスクレイピングしてみた - Qiita]]"))
(hoarder:fetch "akitaonrails/ex_manga_downloadr"
  '(:description "Port of the Ruby version of Manga Downloadr to fetch mangas from MangaReader.net"
    :tags ["elixir" "floki" "scraping" "manga" "mangareader"]
    :memo "[[http://www.akitaonrails.com/2015/11/18/ex-manga-downloader-an-exercise-with-elixir][Ex Manga Downloader, an exercise with Elixir | AkitaOnRails.com]]"))
(hoarder:fetch "mootoh/rtmilk"
  '(:description "Ruby wrap for Remember the Milk API."
    :tags ["ruby" "remember_the_milk" "rtm"]))
(hoarder:fetch "parroty/exrtm"
  '(:description "An elixir library for remember the milk API."))
(hoarder:fetch "gjtorikian/nak"
  '(:description "ack and ag inspired tool written in Node. Designed to be fast."
    :tags ["node" "javascript" "ack" "ag" "grep" "find"]))
(hoarder:fetch " https://cmake.org/cmake.git"
  '(:tags ["make"]))
(hoarder:fetch "xiph/daala"
  '(:description "Modern video compression for the internet"
    :tags ["video" "codec"]))
(hoarder:fetch "sora-chan/mpdhanyuu"
  '(:description "An MPD client that learns your tastes in music."
    :tags ["mpd"]))
(hoarder:fetch "arc680/mikutter_plugin_manager"
  '(:tags ["mikutter" "ruby" "plugin"]
    :memo "[[http://arc680.hatenablog.jp/entry/2016/12/21/013819][mikutter plugin manager を作った - あーく・りなっくす]]")) 
(hoarder:fetch "marteinn/The-Big-Username-Blacklist"
  '(:description "This is a opinionated blacklist of words that you might not like to see used as usernames in your service."))
;; (hoarder:fetch "https://gitla.in/cosmicpuppet/lainchan.rb.git"
;;   '(:memo "[[https://lainchan.org/%CE%BB/res/19446.html][λ - What personal projects have you done lately, /lam/?]]"))
;; (hoarder:fetch "Saladus/epch"
;;   '(:description "A script that helps me choose an episode of my favorite cartoons to watch"
;;     :memo "[[https://lainchan.org/%CE%BB/res/19446.html][λ - What personal projects have you done lately, /lam/?]]"))
(hoarder:fetch "Henry/EuLisp"
  '(:description "Resurrection of the EuLisp definition and the Youtoo, EuXLisp and Eu2C implementations "
    :memo "[[http://g000001.cddddr.org/3691406623][#:g1: レトロLisp探検: EuLisp]]"))
(hoarder:fetch "usecanvas/searchql"
  '(:description "Search query parser written in Elixir"
    :tags ["elixir"]))
(hoarder:fetch "dailydrip/meme"
  '(:description "A meme generator, from the fine folks at DailyDrip"
    :tags ["elixir" "elm" "image" "meme" "generator"]
    :memo "[[https://dailydrip.github.io/meme/][Meme it up]]"))
(hoarder:fetch "thecodearchive/gitarchive"
  '(:description "FETCH ALL THE GIT"
    :tags ["git" "archive" "github" "code"]
    :memo "[[https://www.youtube.com/watch?v=Xx6Bb2sY4zo][The Eleventh HOPE (2016): The Code Archive - YouTube]]
[[https://the-code-archive.launchrock.com/][The Code Archive]]"))
(hoarder:fetch "paulkernfeld/exandria"
  '(:description "A decentralized file sharing system that includes search"
    :tags ["node" "p2p" "bitcoin"]
    :memo "[[https://www.youtube.com/watch?v=n9f_Uegfd0Y][The Eleventh HOPE (2016): The Ownerless Library - YouTube]]"))
(hoarder:fetch "go-gitea/gitea"
  '(:description "Gitea: Git with a cup of tea"
    :tags ["golang" "git" "github" "gogs"]))
(hoarder:fetch "kunst1080/jail-deploy"
  '(:description "jail-create is a wrapper script of qjail(8) for deployment of jail environments with user-flavor."
    :tags ["freebsd" "jail"]
    :memo "[[http://www.kunst1080.net/entry/2014/09/02/231014][【FreeBSD】Jail環境の構築を自動化するスクリプトをGitHubに公開しました - くんすとの備忘録]]"))
(hoarder:fetch "darnir/dotfiles"
  '(:description "A bunch of configuration files"
    :tags ["dotfiles" "bash"]
    :memo "[[https://www.reddit.com/r/dotfiles/comments/4f7c3j/another_bash_based_dotfiles_manager/][Too Many Requests]]"))
(hoarder:fetch "NorfairKing/super-user-spark"
  '(:description "A safe way to never worry about your beautifully configured system again"
    :tags ["configuration" "dotfiles" ]
    :memo "[[http://cs-syd.eu/posts/2015-09-27-super-user-spark-getting-started.html][CS Syd - Super User Spark: Getting started]]
[[https://www.reddit.com/r/dotfiles/comments/3qofuk/cs_syd_super_user_spark_getting_started/cwopbdb/][pm-me-a-pic comments on CS Syd - Super User Spark: Getting started]]"))
(hoarder:fetch "Code-Hex/Neo-cowsay"
  '(:description "🐮 cowsay written in Go"
    :tags ["golang" "cowsay"]
    :memo "[[http://qiita.com/Kei-Kamikawa/items/492d11fad33638cbcb9d][fasthttp で作る cowserver - Qiita]]"))
(hoarder:fetch "firehol/netdata"
  '(:description "Get control of your servers. Simple. Effective. Awesome. https://my-netdata.io/"
    :tags ["freebsd" "linux" "monitoring"]))
(hoarder:fetch "pearl-core/pearl"
  '(:description "The package manager for dotfiles, plugins, programs and any form of code accessible via git for Linux and OSX"
    :tags ["dotfiles"]))
(hoarder:fetch "russellwhitaker/immuconf"
  '(:description "Manage config files 12Factor style in Clojure/ClojureScript projects"
    :tags ["configuration" "clojure" "clojurescript" "edn"]))
(hoarder:fetch "angus-c/just"
  '(:description "A library of dependency-free utilities that do just do one thing. "
    :tags ["javascript" "lodash" "underscore" "utility"]))
(hoarder:fetch "oubakiou/phpp"
  '(:description "phpp is basic class library in PHP"
    :tags ["php" "collection" "scala"]
    :memo "[[http://qiita.com/oubakiou/items/ac0dbd3118add58baa98][{PHP}ぼくのかんがえたさいきょうのはいれつ 2016 winter - Qiita]]"))
(hoarder:fetch "anywhichway/reasondb"
  '(:description "A 100% native JavaScript automatically synchronizing object database: SQL like syntax, swapable persistence engines, asynchronous cursors, streaming analytics, 18 built-in plus in-line fat arrow predicates, predicate extensibility, indexed computed values, joins, nested matching, statistical sampling and more. "
    :tags ["javascript" "database" "sql"]))
(hoarder:fetch "JadedCtrl/Shelltube"
  '(:description "Full-featured POSIX shell YouTube client."
    :tags ["shellscript" "youtube"]))
(hoarder:fetch "liuchengxu/space-vim-dark"
  '(:description ":purple_heart: A vim colorscheme derived from spacemacs-dark theme"
    :tags ["spacemacs" "vim" "theme" "colorscheme"]))
(hoarder:fetch "Duroktar/YuleLog"
  '(:description "A terminal based Yule Log fireplace for all the kids in the corner with sweatpants."
    :memo "[[https://www.youtube.com/watch?v=E1xo4z9nyUI][YuleLog, MERRY CHRISTMAS! - YouTube]]"))
(hoarder:fetch "asdfman/linux-shimeji"
  '(:description "Shimeji for Linux."
    :tags ["mascot" "linux" "desktop"]
    :download nil))
(hoarder:fetch "chowraid/shimeji"
  '(:description ":squirrel: A collection of shimeji mascots for mac."
    :tags ["mascot" "linux" "desktop"]
    :download nil))
(hoarder:fetch "isislovecruft/patternsinthevoid"
  '(:description "Source code for patternsinthevoid.net"
    :download nil
    :memo "[[https://github.com/isislovecruft/patternsinthevoid/blob/master/content/hacking/pytebeats.md][patternsinthevoid/pytebeats.md at master · isislovecruft/patternsinthevoid · GitHub]]"))
(hoarder:fetch "nomad-software/meme"
  '(:description "A command line utility for creating memes"
    :tags ["golang"]))
;; (hoarder:fetch "https://gitlab.com/ParadoxalManiak/deezloader-app.git"
;;   '(:description "Deezloader"
;;     :tags ["music"]
;;     :memo "[[https://www.reddit.com/r/Piracy/comments/5kfk9t/deezloader_app_v210_released/][Too Many Requests]]"))
(hoarder:fetch "SpaceVim/SpaceVim"
  '(:description "Like spacemacs, but for vim."
    :tags ["vim" "spacemacs"]))
(hoarder:fetch "metafetish/buttplug"
  '(:description "Cross Platform Framework for Sex Toy Control"))
(hoarder:fetch "jonathanslenders/python-prompt-toolkit"
  '(:description "Library for building powerful interactive command lines in Python"))
(hoarder:fetch "DemocracyEarth/sovereign"
  '(:description "Peer to peer democracy."))
(hoarder:fetch "schacon/cowsay"
  '(:description "git version of awesome cowsay project"))
(hoarder:fetch "megous/megatools"
  '(:description "Open-source command line tools and C library (libmega) for accessing Mega.co.nz cloud storage."))
(hoarder:fetch "causefx/Organizr"
  '(:description "HTPC/Homelab Services Organizer - Written in PHP"
    :tags ["plex" "multimedia" "htpc"]
    :memo "[[https://www.reddit.com/r/PleX/comments/5kueqj/organizr_new_dashboard_beta_idashboard_alternative/][Too Many Requests]]"))
(hoarder:fetch "galli-leo/Radarr"
  '(:description "Smart PVR for newsgroup and bittorrent users."
    :tags ["usenet" "pvr" "couchpotato" "sonarr"]))
(hoarder:fetch "kovidgoyal/calibre"
  '(:description "The official source code repository for the calibre ebook manager"
    :tags ["pdf" "ebook"]
    :download nil))
(hoarder:fetch "https://gitlab.com/vancan1ty/cl-berryutils.git"
  '(:tags ["common_lisp"]
    :depth nil))
(hoarder:fetch "lk-geimfari/awesomo"
  '(:description "The really big list of really interesting open source projects in С, C++, Clojure, Common/Emacs Lisp, Elixir, Erlang, Golang, Haskell, JavaScript, Lua, OCaml, Python, R, Ruby, Rust, Scala and etc."))
(hoarder:fetch "https://gitlab.com/RobertCochran/parse-opt.git"
  '(:tags ["common_lisp"]
    :depth nil))
(hoarder:fetch "mike168m/Cysboard"
  '(:description "A lightweight system monitor with html and css for themes"
    :tags ["linux" "conky" "desktop" "monitor"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5ky224/lightweight_conky_like_system_monitor_with/][Lightweight conky like system monitor with HTML/CSS for themes : unixporn]]"))
(hoarder:fetch "brennovich/my-favorite-things"
  '(:description "distroish on top of archlinux"
    :tags ["2bwm" "desktop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5l15gg/how_do_you_share_your_dotfiles_on_github_while/][Too Many Requests]]"))
(hoarder:fetch "kd0skh/dotfiles"
  '(:memo "[[https://www.reddit.com/r/unixporn/comments/5kuuhi/dwm_mountains/][Too Many Requests]]
[[https://github.com/kd0skh/scripts][GitHub - kd0skh/scripts: just some little tools I like to use]]"
    :tags ["dwm"])) 
(hoarder:fetch "bryanbecker/dotfiles"
  '(:description "Who is the User?"
    :tags ["lightdm" "bspwm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5kphrg/bspwmlightdm_dude_whats_wrong_with_your_computer/][Too Many Requests]]"))
(hoarder:fetch "eti0/dots"
  '(:description "messy dotfiles"
    :tags ["openbox" "desktop" "dotfiles" "quicktile"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5kncok/openbox_red_thread/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/6nu0h0/openbox_les_cam%C3%A9l%C3%A9ons/][Too Many Requests]]
[[https://github.com/eti0/dots/blob/9886afc01c3508dc1f550e119f77bdcba6024f92/scripts/nrnl.sh][dots/nrnl.sh at 9886afc01c3508dc1f550e119f77bdcba6024f92 · eti0/dots · GitHub]]"))
(hoarder:fetch "ssokolow/quicktile"
  '(:description "Adds window-tiling keybindings to any X11-based desktop. (An analogue to WinSplit Revolution for people who don't want to use the Compiz Grid plugin)"
    :tags ["desktop" "wm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5kncok/openbox_red_thread/][Too Many Requests]]
[[http://ssokolow.com/quicktile/][Main - QuickTile by ssokolow]]"))
(hoarder:fetch "nielssp/colorgrab"
  '(:description "A cross-platform color picker"
    :tags ["color_picker" "wxwidgets"]
    :memo "[[https://www.youtube.com/watch?v=I8WbVmbWqCc][colorgrab, cross-platform wxWidgets color picker - YouTube]]"))
(hoarder:fetch "passy/awesome-recursion-schemes"
  '(:description "Resources for learning and using recursion schemes."
    :tags ["recursion_scheme" "morphism" "awesome_list"]))
(hoarder:fetch "aseure/pop"
  '(:description ":corn: Generate directories and files in Go as quickly as making pop corn :corn:"
    :tags ["template" "golang" "cli"]))
(hoarder:fetch "CleverRaven/Cataclysm-DDA"
  '(:description "Cataclysm - Dark Days Ahead. A fork/variant of Cataclysm Roguelike by Whales."
    :tags ["roguelike" "game"]
    :download nil
    :memo "[[http://qiita.com/otakuto/items/13536fcc2e6baa2acbb5][クリスマスncursesアプリ特集2016 - Qiita]]"))
(hoarder:fetch "DiSiqueira/Gorganizer"
  '(:description "Organize your folders into a beautiful classified folder structure with this perfect tool"
    :meme "[[https://disiqueira.github.io/Gorganizer/][Gorganizer]]"
    :tags ["golang" "file_management"]))
(hoarder:fetch "medhoover/gom"
  '(:description "Powerful commands manager that simplifies your scripts, and your life "
    :tags ["golang" "script" "cli"]
    :memo "[[https://www.reddit.com/r/golang/comments/5kd831/gom_a_command_manager_that_simplifies_your_scripts/][Too Many Requests]]"))
(hoarder:fetch "tasuten/cd-gitroot-fish"
  '(:description "cd-gitroot for fish"
    :tags ["fish" "git"]))
(hoarder:fetch "itchio/itch"
  '(:description ":video_game: The best way to play your itch.io games"
    :tags ["linux" "game" "steam" "roguelike"]
    :site "http://itch.io/"))
(hoarder:fetch "htty/htty"
  '(:description "htty is the HTTP TTY, a console application for interacting with web servers."
    :tags ["http" "ruby"]
    :memo "[[http://htty.github.io/htty/][htty, the HTTP TTY by htty]]
[[https://orebibou.com/2016/12/%E3%82%B3%E3%83%B3%E3%82%BD%E3%83%BC%E3%83%AB%E4%B8%8A%E3%81%A7web%E3%82%B5%E3%83%BC%E3%83%90%E3%81%A8%E5%AF%BE%E8%A9%B1%E5%BC%8F%E3%81%AB%E9%80%9A%E4%BF%A1%E3%82%92%E8%A1%8C%E3%81%88%E3%82%8B/][コンソール上でWebサーバと対話式に通信を行える『htty』 | 俺的備忘録 〜なんかいろいろ〜]]"))
(hoarder:fetch "asweigart/pyautogui"
  '(:description "A cross-platform GUI automation Python module for human beings. Used to programmatically control the mouse & keyboard."
    :tags ["python" "gui" "automation"]
    :memo "[[https://www.youtube.com/watch?v=dZLyfbSQPXI][Al Sweigart, \"Automating Your Browser and Desktop Apps\", PyBay2016 - YouTube]]"))
(hoarder:fetch "FredrikHson/cponysay"
  '(:description "a basic C implementation of Ponysay"
    :tags ["cowsay"]
    :memo "[[https://www.youtube.com/watch?v=cEdnses28D8][cponysay, pony-overloadded Ponysay cowsay - YouTube]]"))
(hoarder:fetch "erkin/ponysay"
  '(:description "Pony rewrite of cowsay."
    :tags ["cowsay"]
    :memo "[[https://www.youtube.com/watch?v=cEdnses28D8][cponysay, pony-overloadded Ponysay cowsay - YouTube]]"))
(hoarder:fetch "harjot-oberai/MusicStreamer"
  '(:description "A Music Player for android that renders beautiful DNA(Visualization) of the currently playing music."
    :tags ["music" "android"]))
(hoarder:fetch "redecentralize/alternative-internet"
  '(:description "A collection of interesting new networks and tech aiming at decentralisation (in some form)."
    :tags ["p2p" "privacy" "security"]
    :memo "[[https://lainchan.org/tech/res/31702.html][tech - How to Hide On the Internet]]
http://www.privacytoolbox.gppi.net/obscure-me/
https://www.digitaldefenders.org/digitalfirstaid/
https://www.privacytools.io/
https://github.com/redecentralize/alternative-internet
https://securityinabox.org/en
https://tacticaltech.org/ "))
(hoarder:fetch "https://gitlab.com/mozill32/spotify-adblock.git"
  '(:tags ["spotify" "adblock"]))
(hoarder:fetch "lise-henry/epub-builder"
  '(:description "A Rust library for generating EPUB files"
    :tags ["epub" "rust"]
    :memo "[[https://www.reddit.com/r/rust/comments/5lnlg5/epubbuilder_a_crate_to_more_easily_generate_epub/][Too Many Requests]]"))
(hoarder:fetch "mitchmindtree/m3u"
  '(:description "A crate for reading and writing `.m3u` files - the de facto standard for multimedia playlists."
    :tags ["m3u" "m3u8" "rust"]
    :memo "[[https://www.reddit.com/r/rust/comments/5ll6rf/m3u_a_crate_for_reading_and_writing_m3u_files_the/][Too Many Requests]]"))
(hoarder:fetch "https://gitgud.io/micah686/Visual-Novel-Manager-Release.git")
(hoarder:fetch "https://gitlab.com/ScriptJunky/ariascrape.git"
  '(:tags ["8chan" "4chan" "aria2"]))
(hoarder:fetch "https://gitlab.com/chrisw/bit-server.git"
  '(:tags ["rust" "bittorrent"]))
(hoarder:fetch "boreq/guinea"
  '(:description "Go library for building command line interfaces."
    :tags ["golang" "cli"]
    :memo "[[https://www.reddit.com/r/golang/comments/5lshjm/guinea_a_library_for_creating_hierarchical/][Guinea - a library for creating hierarchical command line interfaces : golang]]"))
(hoarder:fetch "saschagrunert/rain"
  '(:description "Visualize vertical data inside your terminal 💦"
    :memo "[[https://www.reddit.com/r/rust/comments/5lz406/rain_visualize_data_vertically_within_your/][Too Many Requests]]"))
(hoarder:fetch "https://bitbucket.org/sshguard/sshguard.git"
  '(:tags ["ssh" "syslog" "freebsd" "filtering"]))
(hoarder:fetch "git://git.sv.gnu.org/sed")
(hoarder:fetch "javan/whenever"
  '(:description "Cron jobs in Ruby"
    :tags ["cron" "schedule" "ruby"]))
(hoarder:fetch "lexi-lambda/hackett"
  '(:description "(Very) WIP implementation of a Haskell 98-like Lisp in Racket"
    :tags ["racket" "haskell" "monad"]))
(hoarder:fetch "tinytacoteam/zazu"
  '(:description ":rocket: A fully extensible and open source launcher for hackers, creators and dabblers."
    :tags ["electron" "launcher"]))
(hoarder:fetch "aa112901/remusic"
  '(:description "仿网易云音乐 安卓版，netease  android，音乐播放器 在线 下载"
    :tags ["music" "android"]))
(hoarder:fetch "ds26gte/scmxlate"
  '(:tags ["scheme" "configuration"])) 
(hoarder:fetch "asciimoo/feedme"
  '(:description "Lightweight, single-user feed reader"
    :tags ["common_lisp" "rss"]))
(hoarder:fetch "shaaza/text-adventure-game"
  '(:description "A command-line text adventure game in CLISP."
    :tags ["common_lisp" "game"]))
(hoarder:fetch "shaaza/monster-knight-game"
  '(:description "A text-based CLI game where you are a knight who takes on multiple monsters (using CLOS)."
    :tags ["game" "common_lisp" "cli"]))
(hoarder:fetch "shaaza/chasing-robots-game"
  '(:description "A fun CLI game where robots are chasing you, and you have to run away from them."
    :tags ["game" "common_lisp"]))
(hoarder:fetch "stassats/storage"
  '(:description "CL persistent object storage"
    :tags ["common_lisp"]))
(hoarder:fetch "Xyfir/rword"
  '(:description "Randomly generate real English words"
    :memo "[[https://www.reddit.com/r/node/comments/5mmy7y/rword_real_english_word_generator/][Too Many Requests]]"))
(hoarder:fetch "jrheard/voke"
  '(:description "a roguelite in clojurescript"
    :tags ["clojure" "game" "roguelike" "clojurescript"]
    :memo "[[https://www.reddit.com/r/Clojure/comments/5mnz4f/game_programming/][Game Programming : Clojure]]"))
(hoarder:fetch "tolitius/cprop"
  '(:description "likes properties, environments, configs, profiles.. "
    :tags ["clojure" "configuration"]
    :memo "[[https://www.dotkam.com/2017/01/06/why-configuration-makes-you-happier/][Why Configuration Makes You Happier]]
[[https://www.dotkam.com/2017/01/09/cprop-internal-tools-worth-opening/][cprop: internal tools worth opening]]"))
(hoarder:fetch "jonian/acestream-launcher"
  '(:description "Acestream Launcher allows you to open Acestream links with a Media Player of your choice"
    :memo "[[http://wiki.acestream.org/wiki/index.php/AceStream_3.0][AceStream 3.0 — Ace Stream]]
[[https://www.youtube.com/watch?v=dxar7KLsrg8][acestream-launcher -- Watch Streaming Channels - Linux CLI - YouTube]]"))
(hoarder:fetch "viktomas/godu"
  '(:description "Simple golang utility helping to discover large files/folders."
    :tags ["golang" "du" "disk_usage"]
    :memo "[[https://www.youtube.com/watch?v=PekbvL2j938][godu, a disk usage with Miller columns to find big dir/files - YouTube]]"))
(hoarder:fetch "keepassxreboot/keepassxc"
  '(:description "KeePassXC is a cross platform community driven port of the windows application “Keepass Password Safe”."
    :tags ["password" "keepass"]))
(hoarder:fetch "trapd00r/screenfo"
  '(:description "Screenshot info tool"
    :tags ["perl" "screenfetch" "screenshot" "linux"]))
(hoarder:fetch "Flexget/Flexget"
  '(:description "The official FlexGet repository"))
(hoarder:fetch "MeanEYE/Sunflower"
  '(:description "Small and highly customizable twin-panel file manager for Linux with support for plugins."
    :tags ["file_manager" "python"]
    :memo "[[https://www.youtube.com/watch?v=aAxhqzuLOW0][Dual Pane File Managers - YouTube]]"))
(hoarder:fetch "EvandroLG/cli_color_converter"
  '(:description "This is a command line program that convert from RGB to hexadecimal / hexadecimal to RGB"
    :tags ["color" "rgb" "ruby"]))
(hoarder:fetch "esimov/gifter"
  '(:description "Render gif images in terminal. It can be used as a terminal screen saver."
    :tags ["terminal" "golang" "image"]))
(hoarder:fetch "erebe/greenclip"
  '(:description "Simple clipboard manager to be integrated with rofi - Static binary available"
    :tags ["clipboard" "haskell" "rofi"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5mszii/greenclip_simple_clipboard_manager_integrated/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/5zjr1m/greenclip_simple_clipboard_manager_integrated/?utm_content=comments&utm_medium=hot&utm_source=reddit&utm_name=unixporn][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/6rb8af/greenclip_simple_clipboard_manager_integrated/][Too Many Requests]]"))
(hoarder:fetch "calvin-smith/Terminal-Start-Page"
  '(:tags ["web" "startpage"]
    :memo "[[https://www.reddit.com/r/startpages/comments/5mywys/yet_another_terminal_start_page/][Yet Another Terminal Start Page : startpages]]")) 
(hoarder:fetch "chrisallenlane/node-did"
  '(:description "A dead-simple, cli-based task journaler."
    :tags ["javascript" "journal"]))
(hoarder:fetch "hhsnopek/beeroclock"
  '(:description "Is it beer o’clock yet? 🍺"
    :tags ["bash" "web"]
    :memo "[[https://hackernoon.com/a-web-service-written-in-pure-bash-2af847902df1#.vtuz9jakp][302 Found]]"))
(hoarder:fetch "ash-shell/ash"
  '(:description ":shell: A Modular Bash Framework"
    :tags ["bash" "framework"]
    :memo "[[https://hackernoon.com/a-web-service-written-in-pure-bash-2af847902df1#.vtuz9jakp][302 Found]]"))
(hoarder:fetch "rhysd/dotfiles"
  '(:description "dotfiles symbolic links management CLI"
    :tags ["dotfiles" "cli"]
    :memo "[[http://rhysd.hatenablog.com/entry/2016/12/31/221544][2016 年につくったやつ一覧 - はやくプログラムになりたい]]"))
(hoarder:fetch "caiorss/clip.jar"
  '(:description "Utility to paste images from clipboard to Emacs org-mode or any markdown."
    :tags ["clipboard" "java" "markdown" "org-mode"]))
(hoarder:fetch "shenwei356/csvtk"
  '(:description "Another cross-platform, efficient, practical and pretty CSV/TSV toolkit in Golang"
    :tags ["golang" "csv" "cli"]))
(hoarder:fetch "byroot/frozen_record"
  '(:description "Read only ActiveRecord-like interface to query static YAML files"
    :tags ["yaml"]))
(hoarder:fetch "camelmasa/itaiji"
  '(:description "Convert japanese from itaiji(異体字) to seijitai(正字体)."
    :tags ["kanji" "ruby"]))
(hoarder:fetch "hzhu/recursion-joy"
  '(:description ":hourglass: A set of recursion problems to be solved"
    :tags ["recursion" "javascript"]))
(hoarder:fetch "kovidgoyal/kitty"
  '(:description "A modern, hackable, featureful, OpenGL based terminal emulator"
    :tags ["opengl" "terminal" "python"]))
(hoarder:fetch "mamekusari/mpvluaforpeercast"
  '(:description "mpvをpeercast向けに使いやすくする"
    :tags ["mpv" "peercast" "lua"]))
(hoarder:fetch "Olical/dotfiles"
  '(:description "Configuration for Arch Linux, i3, termite, fish, Vim and more"
    :tags ["i3" "termite" "fish" "vim"]
    :memo "[[http://oli.me.uk/2015/06/17/wrangling-javascript-with-vim/][Wrangling JavaScript with Vim | Oliver Caldwell's blog]]"))
(hoarder:fetch "yama-natuki/2chproxy.pl"
  '(:tags ["perl" "2ch" "navi2ch"])) 
(hoarder:fetch "https://gitlab.com/mozbugbox/videoshake.git"
  '(:tags ["ffmpeg" "x264" "gtk" "python"]))
;; (hoarder:fetch "juandazapata/dotfiles"
;;   '(:description "My personal dotfiles with stow"
;;     :tags ["stow" "dotfiles"]
;;     :memo "[[http://juanda.me/managing-your-dotfiles-with-gnu-stow][Managing your dotfiles with GNU Stow]]
;; [[https://github.com/juandazapata/dotfiles/blob/master/bin/stow-all][dotfiles/stow-all at master · juandazapata/dotfiles · GitHub]]"))
(hoarder:fetch "aunyks/npm-python"
  '(:description "A Python package on NPM!"
    :tags ["npm" "package_manager" "json" "python"]
    :memo "[[https://hackernoon.com/one-size-fits-all-593441a9403f#.lwryd1fai][302 Found]]"))
(hoarder:fetch "https://gitlab.com/podwrite/podwrite.git"
  '(:tags ["podcast" "gnuworldorder"]))
(hoarder:fetch "ynakayama/repo_manager"
  '(:description "Git and Subversion Repository Management Tool"
    :tags ["subversion" "git" "rails"]
    :memo "[[http://www.moongift.jp/2017/01/repo-manager-subversiongit%E3%83%AA%E3%83%9D%E3%82%B8%E3%83%88%E3%83%AA%E3%82%92%E7%B0%A1%E5%8D%98%E3%81%AB%E4%BD%9C%E6%88%90/][Repo Manager - Subversion/Gitリポジトリを簡単に作成 MOONGIFT]]"))
(hoarder:fetch "talyssonoc/structure"
  '(:description "A simple schema/attributes library built on top of modern JavaScript"
    :tags ["javascript" "schema" "validation"]))
(hoarder:fetch "bard/mozrepl"
  '(:description "Remotely control Firefox and other Mozilla apps with JavaScript. [Orphaned. Looking for maintainers!]"
    :tags ["firefox" "conkeror" "xulrunner" "addon"]
    :memo "[[https://github.com/bard/mozrepl/wiki/Use-with-XULRunner][Use with XULRunner · bard/mozrepl Wiki · GitHub]]"))
(hoarder:fetch "https://bitbucket.org/kerrigan/cirnoid.git"
  '(:tags ["android" "iichan.hk" "russian"]
    :memo "[[http://kerrigan.bitbucket.org/cirnoid/][Cirnoid - Android-клиент для Ычана]]
[[http://iichan.hk/b/res/3400101.html][Ычан &#x2014; Бред]]
                                            [[https://bitbucket.org/kerrigan/wakabareader][kerrigan / wakabareader — Bitbucket]]"))
(hoarder:fetch "sindresorhus/awesome-scifi"
  '(:description "Sci-Fi worth consuming"
    :tags ["awesome_list" "science_fiction" "novel" "book"]))
(hoarder:fetch "ph1l/stars"
  '(:description "starfield in C with frontends in SDL, X11, and ncurses"
    :tags ["sdl" "ncurses"]
    :memo "[[https://www.youtube.com/watch?v=eTrLGsK4DqE][stars, starfield in C with frontends in SDL, X11, and ncurses - YouTube]]"))
(hoarder:fetch "stonewell/pymterm"
  '(:description "A multiple tab terminal emulator implemented in python"
    :tags ["python" "terminal"]))
(hoarder:fetch "robbintt/popup-openvpn"
  '(:description "Make a self hosted OpenVPN server in 15 minutes"
    :tags ["openvpn"]))
(hoarder:fetch "dxa4481/truffleHog"
  '(:description "Searches through git repositories for high entropy strings, digging deep into commit history"
    :tags ["git"]))
(hoarder:fetch "faizann24/wifi-bruteforcer-fsecurify"
  '(:description "Android application to brute force WiFi passwords without requiring a rooted device."
    :tags ["android" "wifi" "security"]))
(hoarder:fetch "iurimatias/embark-framework"
  '(:description "Framework for serverless Decentralized Applications using Ethereum, IPFS and other platforms"
    :tags ["ethereum" "ipfs"]
    :memo "[[https://www.reddit.com/r/ethereum/comments/5nd2w0/announcing_embark_220_support_for_ipfs_orbit_and/][Too Many Requests]]"))
(hoarder:fetch "LinxGem33/OSX-Arc-Shadow"
  '(:description "a flat theme collection based on arc with transparent elements for GTK 3, GTK 2 and Unity, Budgie, Pantheon, XFCE, Mate, etc."
    :tags ["gtk" "theme"]
    :memo "[[https://www.gnome-look.org/p/1167049/][OSX-Arc-Collection - www.gnome-look.org]]"))
(hoarder:fetch "ginatrapani/todo.txt-cli"
  '(:description "A simple and extensible shell script for managing your todo.txt file."
    :tags ["remember_the_milk" "todo" "cli"]
    :memo "[[https://raw.githubusercontent.com/matthewbauer/todo.txt-cli/master/actions/rtm]]
[[https://www.reddit.com/r/unixporn/comments/5ndonh/todo_list_to_improve_productivity/][Too Many Requests]]"))
;; (hoarder:fetch "gitpub@162.252.242.77:morphis.git"
;;   '(:depth nil
;;     :memo "[[https://lainchan.org/%CE%BB/res/21232.html][λ - The creator and lead developer of https://morph.is/v0.8/ was killed 2 days before christmas in an odd exchange wi...]]"))
(hoarder:fetch "wekan/wekan"
  '(:description "The open-source Trello-like kanban (built with Meteor)"
    :tags ["kanban" "todo"]))
(hoarder:fetch "dularion/streama"
  '(:description "It's like Netflix, but self-hosted! http://dularion.github.io/streama/"
    :tags ["netflix"]))
(hoarder:fetch "tpapp/let-plus"
  '(:description "destructuring extension of let*"
    :tags ["common_lisp"]))
(hoarder:fetch "ccrisan/motioneyeos"
  '(:description "A Video Surveillance OS For Single-board Computers"
    :tags ["surveillance" "camera" "linux" "raspberry_pi"]
    :memo "[[https://www.youtube.com/watch?v=sw_vGbxdQys][Motioneye OS...Linux Home Security With Your Raspberry Pi..!! - YouTube]]
Motioneyeos: https://github.com/ccrisan/motioneyeo...
Raspberry pi and Cam: https://thepihut.com/collections/raspberry-pi-store
Other retailers stock these items...
case for pi zero and camera: http://www.thingiverse.com/thing:1639568 "))
(hoarder:fetch "linuxmint/xviewer"
  '(:description "A generic Image viewer"
    :tags ["image"]))
(hoarder:fetch "mitchty/dotfiles"
  '(:description "My dotfile setup."
    :tags ["org-mode" "dotfiles"]
    :memo "[[https://github.com/mitchty/dotfiles/tree/org-mode-all-the-things][GitHub - mitchty/dotfiles at org-mode-all-the-things]]
[[https://www.reddit.com/r/emacs/comments/4b713m/dotfile_management_and_documentation_with_orgmode/][Too Many Requests]]
[[https://expoundite.net/dotfile-management/][Dotfile Management and Documentation with Org-Mode | Expoundite.net]]
[[https://www.reddit.com/r/emacs/comments/5oimrs/managing_dotfiles_with_org_mode/][Managing dotfiles with org mode? : emacs]]"))
(hoarder:fetch "JackCDK/osprey"
  '(:description "osprey - a stylish fork (chrome and chrome-like things only)"
    :tags ["stylish" "chrome" "css"]
    :memo "[[https://boards.4chan.org/g/thread/58541002][/g/ - osprey 1.0.1 - Technology - 4chan]]"    ))
(hoarder:fetch "https://gist.github.com/joepie91/5a9909939e6ce7d09e29.git"
  '(:tags ["vpn"]
    :memo "[[https://boards.4chan.org/g/thread/58542273][/g/ - What vpn does /g/ use? Anyone else here use privat - Technology - 4chan]]"))
(hoarder:fetch "hzlmn/haskell-must-watch"
  '(:description "Huge list of  videos, talks , courses for Haskell programming language."
    :tags ["haskell" "video"]))
(hoarder:fetch "mattharrison/pykeyview"
  '(:description "GTK+ based OSD for showing keystrokes (in screencasts or presos)"
    :tags ["screencast" "gtk" "python" "osd"]
    :memo "[[https://www.youtube.com/watch?v=BverGxP41cE][Edit LISP structurally with Emacs package lispy - YouTube]]"))
(hoarder:fetch "sunmockyang/puush-linux"
  '(:description "Using puush in linux with keyboard shortcuts."
    :memo "[[https://lainchan.org/%CE%BB/res/21131.html#q21481][λ - Lisp General: Longer than ()]]"))
(hoarder:fetch "nebukazar/StyleChan"
  '(:description "Customizable themes for 4chan X."
    :tags ["4chan" "addon"]))
(hoarder:fetch "cleverwise/connect2ssh"
  '(:description "Manage SSH and SSHFS connections via the command line using BASH!"
    :tags ["server" "sshfs" "ssh"]
    :memo "[[https://www.cyberws.com/bash/connect2ssh/][Connect2SSH]]
[[https://www.youtube.com/watch?v=u-X3q6CmsKc][Mr. Desktop & Mr. Server Episode 5 | Linux Networking & Connect2SSH - YouTube]]"))
(hoarder:fetch "otakuto/CrazyDiskInfo"
  '(:description "CrazyDiskInfo is an interactive TUI S.M.A.R.T viewer for Unix systems."))
(hoarder:fetch "CodyReichert/qi"
  '(:description "Qi - A Package Manager for Common Lisp"
    :tags ["common_lisp"]))
(hoarder:fetch "davisonio/awesome-gif"
  '(:description ":sunglasses: A curated list of awesome GIF resources"
    :tags ["awesome_list" "gif" "image"]))
(hoarder:fetch "kennethreitz/pipenv"
  '(:description "Sacred Marriage of Pipfile, Pip, & Virtualenv."
    :tags ["python" "virtualenv" "pip"]))
(hoarder:fetch "abhishekbanthia/Public-APIs"
  '(:description "📚 A curated list of APIs from round the web."
    :tags ["api" "webservice"]))
(hoarder:fetch "kilimchoi/engineering-blogs"
  '(:description "A curated list of engineering blogs"
    :tags ["blog" "awesome_list"]))
(hoarder:fetch "corkami/pics"
  '(:description "Posters, drawings..."
    :tags ["picture" "image"]
    :download nil))
(hoarder:fetch "sindresorhus/random-word-cli"
  '(:description "Get a random English word"
    :tags ["english" "javascript" "cli"]))
(hoarder:fetch "git://git.suckless.org/blind"
  '(:tags ["video" "ffmpeg" "cli"]))
(hoarder:fetch "daedreth/URXVTConfig"
  '(:description "A graphical user interface tool for configuration of the rxvt-unicode terminal emulator."
    :tags ["urxvt" "configuration" "linux"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5ppalo/oc_urxvtconfig_a_new_gui_configuration_tool_for/][Too Many Requests]]"))
(hoarder:fetch "posva/catimg"
  '(:description ":squirrel: Insanely fast image printing in your terminal"
    :tags ["image" "terminal" "neofetch"]))
(hoarder:fetch "oohnoitz/jii"
  '(:description "file sharing web server"
    :site "[[https://jii.moe/about][じーっ]]"
    :tags ["file_host" "image"]))
(hoarder:fetch "alistanis/silentinstall"
  '(:description "Ever wanted to automate installing loud linux/unix packages or scripts? Now you can."
    :tags ["linux" "package"]))
(hoarder:fetch "zuck007/postimg"
  '(:description ":rocket: upload images on imgur "
    :tags ["imgur" "Cli"]
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/5q3ql3/a_cli_tool_to_upload_share_image_links_on/][Too Many Requests]]"))
(hoarder:fetch "B00merang-Project/Windows-10"
  '(:description "Windows 10 Transformation Pack Source repository"
    :tags ["gtk" "theme" "gnome" "windows" "linux"]
    :memo "[[https://www.youtube.com/watch?v=D6pJUEoqBWY][{GNOME 3.22} Windows 10 Transformation Pack - YouTube]]"))
(hoarder:fetch "PyYoshi/PeerCastIM-Mod"
  '(:description "PeerCastIMのOSX/Linuxサポート版 WinはこれまでどおりIMのGUIを利用できます."
    :tags ["peercast"]))
(hoarder:fetch "niwakazoider/peercast"
  '(:description "PeerCast for Linux"
    :tags[ "peercast"]))
(hoarder:fetch "niwakazoider/peercaststation"
  '(:description "PeerCastのリメイク"
    :tags ["peercast"]))
(hoarder:fetch "heru-ra/bergren"
  '(:description "a dark theme theme. gray, yet a tad green."
    :tags ["gtk" "theme"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5nj1db/oc_releasing_my_new_gtk23_theme_bergren/dcbtntn/][BusterSkeetin comments on {OC} Releasing my new GTK2/3 theme, "Bergren"]]"))
(hoarder:fetch "atrodo/App-MechaCPAN"
  '(:description " Mechanize the installation of CPAN things"
    :site "https://metacpan.org/pod/release/ATRODO/App-MechaCPAN-0.11/lib/App/MechaCPAN.pm"
    :tags ["perl" "cpan" "local::lib"]))
(hoarder:fetch "andreisergiu98/arc-flatabulous-theme"
  '(:description "Arc theme with Flatabulous window controls."
    :tags ["gtk" "theme"]))
(hoarder:fetch "cyberthal/cyborganize-alien-demo"
  '(:description "Using Cyborganize to follow the POV of Ripley in the 1979 film Alien"
    :memo "[[https://www.reddit.com/r/spacemacs/comments/5q2hfc/using_spacemacs_the_cyborganize_way_gtd_evolved/][Too Many Requests]]
[[https://vimeo.com/cyberthal][Cyberthal on Vimeo]]"))
(hoarder:fetch "DanielFGray/yaxg"
  '(:description "Yet Another X Grabber script"
    :tags ["screenshot" "screencast" "ffmpeg" "maim" "slop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5qfpja/i_wrote_a_screenshot_utility_that_uses_slop_and/][Too Many Requests]]"))
(hoarder:fetch "http://vicerveza.homeunix.net/~viric/wsgi-bin/hgweb.wsgi/ts"
  '(:type :hg
    :site "http://vicerveza.homeunix.net/~viric/soft/ts"
    :tags ["task" "job" "command" "queue"]
    :memo "[[https://www.youtube.com/watch?v=wv8D8wT20ZY][Task Spooler - Queue Up Tasks - Linux CLI - YouTube]]
[[https://github.com/gotbletu/shownotes/blob/master/newsbeuter_macros.md][shownotes/newsbeuter_macros.md at master · gotbletu/shownotes · GitHub]]
[[https://www.youtube.com/watch?v=mRnMg2V9n-E][Newsbeuter Macros - Linux TUI - YouTube]]"))
(hoarder:fetch "hantuzun/awesome-clojurescript"
  '(:description "A community driven list of ClojureScript frameworks, libraries and wrappers."
    :tags ["awesome_list" "clojurescript"]))
(hoarder:fetch "KELiON/cerebro"
  '(:description "Open-source productivity booster with a brain"
    :tags ["launcher" "electron"]))
;; (hoarder:fetch "https://neetcode.org/chibi/napalm.git"
;;   '(:tags ["terminal" "ncurses"]
;;     :depth nil))
(hoarder:fetch "sciurius/comics"
  '(:description "A comics aggregator in the style of Gotblah."
    :tags ["comic" "downloader"]
    :memo "[[https://metacpan.org/pod/release/JV/Comics-1.01/lib/Comics.pm][Comics - Comics aggregator in the style of Gotblah - metacpan.org]]"))
(hoarder:fetch "svexican/bubbleswm"
  '(:tags ["x11" "tiling_wm" "window_manager"])) 
(hoarder:fetch "sergiotapia/magnetissimo"
  '(:description "Web application that indexes all popular torrent sites, and saves it to the local database."
    :tags ["torrent" "elixir"]
    :memo "[[https://news.ycombinator.com/item?id=13505226][Show HN: Open-source, self-hosted torrent search engine written in Elixir | Hacker News]]
[[https://www.reddit.com/r/elixir/comments/5qmlcb/opensource_selfhosted_torrent_search_engine/][Too Many Requests]]"))
(hoarder:fetch "veggiedefender/terminal-waifu"
  '(:description "http://jli.host/terminal-waifu/"
    :site "http://jli.host/terminal-waifu/"
    :memo "[[https://www.reddit.com/r/unixporn/comments/5qkhwr/oc_i_made_a_small_website_to_generate_a_custom/][{OC} I made a small website to generate a custom waifu using your terminal config! : unixporn]]"))
(hoarder:fetch "lucy/lsc"
  '(:description "faster ls with pointless colours"
    :tags ["ls" "ls--"]))
(hoarder:fetch "oh-my-neovim/oh-my-neovim"
  '(:description "Oh My Neovim is an open source for managing your neovim configuration."
    :tags ["neovim"]
    :memo "[[https://www.reddit.com/r/neovim/comments/5q2cgd/oh_my_neovim/][Too Many Requests]]"))
(hoarder:fetch "mehcode/config-rs"
  '(:description "Layered configuration system for Rust applications (with strong support for 12-factor applications)."
    :tags ["rust" "configuration"]))
(hoarder:fetch "nicokosi/hubstats"
  '(:description "GitHub statistics"
    :tags ["github" "clojure"]
    :memo "[[https://nicokosi.github.io/discover-github-apis-with-clojure-en.html][Discovering GitHub APIs while learning Clojure]]"))
(hoarder:fetch "stianeikeland/emojinius"
  '(:description "Write clojure code using emoji"
    :tags ["clojure" "emoji"]))
(hoarder:fetch "evil-icons/evil-icons"
  '(:description "Simple and clean SVG icon pack with the code to support Rails, Sprockets, Node.js, Gulp, Grunt and CDN"
    :site "http://evil-icons.io/"
    :tags ["icon" "svg"]))
(hoarder:fetch "frenchbeard/feednix"
  '(:description "Feedly client for Linux"
    :tags ["rss" "feedly" "ncurses"]))
(hoarder:fetch "sindresorhus/filenamify"
  '(:description "Convert a string to a valid safe filename"
    :tags ["javascript" "path"]))
(hoarder:fetch "WhatCD/Gazelle"
  '(:tags ["whatcd" "torrent" "tracker"])) 
(hoarder:fetch "budkin/jam"
  '(:description "Google Play Music console player"
    :tags ["google_play_music" "cli"]))
(hoarder:fetch "christianrondeau/vimcastle"
  '(:description "A vim plug-in of adventure, fighting and wonder! "
    :tags ["vim" "game" "text_adventure"]))
(hoarder:fetch "dariober/ASCIIGenome"
  '(:description "Text Only Genome Viewer! Docs:"
    :tags ["ascii" "genome"]))
(hoarder:fetch "foobnix/foobnix"
  '(:description "Foobnix Music Player for Linux (GPL v3)"
    :tags ["music" "linux" "python" "gtk"]))
(hoarder:fetch "harpribot/awesome-information-retrieval"
  '(:description "A curated list of awesome information retrieval resources"
    :tags ["awesome_list"]))
(hoarder:fetch "r888888888/danbooru"
  '(:description "Danbooru is a taggable image board written in Rails 4."
    :tags ["danbooru" "rail"]))
(hoarder:fetch "remigiusz-suwalski/programming-cheatsheets"
  '(:description "Programming cheatsheets (Python, Bash, Haskell...)"
    :tags ["programming" "cheatsheet" "python" "bash" "haskell"]))
(hoarder:fetch "tagspaces/tagspaces"
  '(:description "Developers resources for TagSpaces"
    :tags ["tagging" "file_management"]))
(hoarder:fetch "wayneashleyberry/awesome-podcasts"
  '(:description "A curated list of awesome podcasts related to programming, technology and business."
    :tags ["awesome_list" "podcast"]))
(hoarder:fetch "wonga00/astronaut"
  '(:description "A feed of the present"
    :tags ["youtube"]
    :site "http://astronaut.io/"
    :memo "[[https://news.ycombinator.com/item?id=13413225][Astronaut – YouTube videos with almost zero previous views | Hacker News]]"))
(hoarder:fetch "feedcast/house"
  '(:description "💊 The Podcast RSS Reader and Diagnostician"
    :tags ["library" "parser" "parsing" "podcast" "podcast-reader" "rss" "ruby" "xml"]))
(hoarder:fetch "rodrigogs/easyvpn"
  '(:description "Easily connect to a VPN in a country of your choice."
    :tags ["vpn"]))
(hoarder:fetch "woodruffw/ruby-mpv"
  '(:description "A Ruby library for controlling mpv processes."
    :tags ["ruby" "mpv"]))
(hoarder:fetch "muzak-project/muzak"
  '(:description "[WIP] a metamusic player"
    :tags ["ruby"]))
(hoarder:fetch "skidding/illustrated-algorithms"
  '(:description "Algorithm → AST → CSS"
    :tags ["algorithm" "css"]))
(hoarder:fetch "oduwsdl/ipwb"
  '(:description "A distributed and persistent archive replay system using IPFS"
    :tags ["ipfs" "wayback_machine"]))
(hoarder:fetch "ircd-hybrid/ircd-hybrid"
  '(:description "A lightweight, high-performance internet relay chat daemon."
    :tags ["irc"]))
(hoarder:fetch "Koruri/Koruri"
  '(:description "Japanese TrueType font obtained by mixing M+ FONTS and Open Sans."
    :tags ["font" "japanese"]
    :download nil))
(hoarder:fetch "https://git.teknik.io/abrax/lizard.git"
  '(:tags ["git" "8chan" "cli"]
    :memo "[[http://straw-berry.net/tech/res/703632.html][/tech/ - lizard, the 8ch monitor]]"))
(hoarder:fetch "Fakerr/git-recall"
  '(:description "Simple and handy tool to easily recall what you've done"
    :tags ["git"]))
(hoarder:fetch "juxt/mach"
  '(:description "A remake of make (in ClojureScript)"
    :tags ["clojure" "make"]
    :memo "mentioned in [[https://skillsmatter.com/skillscasts/9532-yada-2-0-45-minutes#video][yada 2.0 (~45 minutes) | SkillsCast | 7th February 2017]]"))
(hoarder:fetch "josuah/miniwi"
  '(:description "A 8x4 bitmap font with box-drawing and drawille support"
    :tags ["font"]))
(hoarder:fetch "icymind/NeoSolarized"
  '(:description "NeoSolarized: A fixed solarized colorscheme for better truecolor support."
    :tags ["solarized" "vim"]))
(hoarder:fetch "alecmuffett/onion-sites-that-dont-suck"
  '(:description "Onion Sites That Don't Suck"
    :tags ["tor"]))
(hoarder:fetch "tiagoamaro/pickpocket"
  '(:description "Selects a random article from your Pocket (former Read It Later)"
    :tags ["ruby" "pocket"]))
(hoarder:fetch "myplaceonline/posixcube"
  '(:description "posixcube.sh is a POSIX compliant, shell script-based server automation framework."
    :tags ["shellscript" "server" "automation"]))
(hoarder:fetch "m13253/danmaku2ass"
  '(:description "Convert comments from Niconico/AcFun/bilibili to ASS format"
    :tags ["mpv" "niconico" "comment"]))
(hoarder:fetch "aadddddd/shit"
  '(:tags ["4chan"]
    :memo "[[https://boards.4chan.org/g/thread/58770625#p58770740][/g/ - /dpt/ - Daily Programming Thread - Technology - 4chan]]")) 
(hoarder:fetch "orsonteodoro/psdoom-ng"
  '(:description "psdoom-ng is a First Person Shooter operating system process killer based on psDooM and Chocolate Doom."
    :tags ["game" "doom"]))
(hoarder:fetch "antonio-malcolm/satin"
  '(:description "A two-tone GTK+ theme with soft, subtle gradients and easy contrast. Also supports Openbox, Kupfer, Firefox and Chrome."
    :tags ["desktop" "theme" "void_linux" "theme" "gtk"]
    :memo "[[https://forum.voidlinux.eu/t/offical-desktop-screenshot-thread/30/49][{Offical} Desktop Screenshot Thread - Applications & Desktop Environments - Void Linux Forum]]"))
(hoarder:fetch "subuser-security/subuser"
  '(:description "Run programs on linux with selectively restricted permissions."
    :tags ["subgraph" "docker" "jail" "sandbox"]))
(hoarder:fetch "asciimoo/wuzz"
  '(:description "Interactive cli tool for HTTP inspection"
    :tags ["cli" "http"]))
(hoarder:fetch "pipeseroni/pipesX.sh"
  '(:description "Animated pipes terminal screensaver at an angle."))
(hoarder:fetch "pipeseroni/pipes.sh"
  '(:description "Animated pipes terminal screensaver"))
(hoarder:fetch "cyring/CoreFreq"
  '(:description " CoreFreq is a CPU monitoring software designed for the 64-bits Processors."
    :tags ["linux" "monitoring"]))
(hoarder:fetch "J3n50m4t/getpocketDarkTheme"
  '(:description "Dark Theme for pocket "
    :tags ["css" "firefox" "pocket"]))
(hoarder:fetch "clipland/video-bookmarks"
  '(:description "Proposed player independent standard for attaching textual metadata to certain timecode positions within a video file"
    :tags ["video" "libav"]))
(hoarder:fetch "anhari/octocat.vim"
  '(:description ":octocat: Vim colorscheme resembling GitHub's syntax highlighting"
    :tags ["vim" "colorscheme" "github"]))
(hoarder:fetch "datashaman/putio-automator"
  '(:description "A suite of commands for managing torrents, transfers and files on put.io. Works well with SickRage, Sonarr, etc."
    :tags ["torrent" "put.io"]))
(hoarder:fetch "rapidloop/rtop"
  '(:description "rtop is an interactive, remote system monitoring tool based on SSH"))
(hoarder:fetch "EdSchouten/herrie"
  '(:description "Herrie: a minimalistic music player"))
(hoarder:fetch "ztellman/potemkin"
  '(:description "some ideas which are almost good"
    :tags ["clojure" "namespace"]
    :memo "mentioned in [[https://skillsmatter.com/skillscasts/9532-yada-2-0-45-minutes#video][yada 2.0 (~45 minutes) | SkillsCast | 7th February 2017]] "))
(hoarder:fetch "okraits/rofi-tools"
  '(:description "Tools for and with rofi (https://github.com/DaveDavenport/rofi)"
    :tags ["rofi" "dmenu"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5szr7t/i3_arc_dark_blue/ddj3fs7/][Too Many Requests]]
[[https://github.com/okraits/rofi-tools/blob/master/rofi-power][rofi-tools/rofi-power at master · okraits/rofi-tools · GitHub]]"))
(hoarder:fetch "B00merang-Project/Redmond-Themes"
  '(:description "Home of the B00merang Redmond Collection themes for Linux"
    :tags ["desktop" "gtk" "linux" "theme" "windows"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5swivh/looking_for_oldschoollooking_apps_themes_icons/][Too Many Requests]]"))
(hoarder:fetch "NARKOZ/gitlab"
  '(:description "Ruby wrapper and CLI for GitLab REST API"
    :tags ["ruby" "gitlab" "cli"]))
(hoarder:fetch "eliukblau/pixterm"
  '(:description "Draw images in your ANSI terminal with true color"
    :tags ["ansi" "bmp" "color" "gif" "go" "golang" "image" "jpeg" "png" "terminal" "tiff" "true" "webp"]))
(hoarder:fetch "r7kamura/syoboi_calendar"
  '(:description "An API Client library for http://cal.syoboi.jp/ written in Ruby."
    :tags ["ruby" "syoboi_calandar"]
    :memo "[[https://nippo.wikihub.io/@r7kamura/20170130190750][2017-01-30 r7kamura - 日報]]"))
(hoarder:fetch "stark/Color-Scripts"
  '(:description "User contributed color scripts "
    :tags ["shellscript"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5thmfs/i3gaps_when_people_ask_why_i_use_a_tiling_wm/][Too Many Requests]]"))
(hoarder:fetch "Blezzing/blezz"
  '(:description "Keystroke Launcher"
    :tags ["launcher"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5tcs3x/oc_i_created_a_application_launcher_in_c_with_xcb/][Too Many Requests]]"))
(hoarder:fetch "davae1an/dotfiles-i3wmArch"
  '(:tags ["dotfiles" "i3wm" "arch_linux"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5tczra/i3gaps_cut_me/][Too Many Requests]]"
    :download nil)) 
(hoarder:fetch "edanchenkov/MenuTube"
  '(:description "Catch YouTube into your macOS menu bar!"
    :tags ["mac" "youtube"]
    :site "https://edanchenkov.github.io/MenuTube/"))
(hoarder:fetch "RobinBressan/json-git"
  '(:description "A pure JS local Git to versionize any JSON"
    :tags ["json" "git"]
    :memo "[[https://lecomtoisduweb.com/blog/2017/02/13/json-git-un-git-en-javascript-pour-le-front.html][JSON-Git, un Git en javascript pour les applications frontend]]
[[https://www.reddit.com/r/javascript/comments/5ts8z9/jsongit_un_git_en_javascript_pour_les/][Too Many Requests]]"))
(hoarder:fetch "jgpws/jgd-black"
  '(:description "JGD-Black theme collection"
    :tags ["gtk" "theme"]))
(hoarder:fetch "google/material-design-icons"
  '(:description "Material Design icons by Google"
    :tags ["icon"]
    :download nil))
(hoarder:fetch "khinsen/monads-in-clojure"
  '(:description "Konrad Hinsen's OnClojure.com tutorial "
    :tags ["monad" "clojure"]))
(hoarder:fetch "sandangel/sand-lxqt-theme"
  '(:description "Interesting in LXQt desktop with Kwin window manager? This theme is for you."
    :tags ["lxqt" "theme"]))
(hoarder:fetch "solus-project/solus-icon-theme"
  '(:description "Solus Icon Theme"
    :tags ["icon"]))
(hoarder:fetch "xroche/httrack"
  '(:description "HTTrack Website Copier, copy websites to your computer (Official repository)"))
(hoarder:fetch "hboisgibault/unicontent"
  '(:description "Python module to extract structured metadata from URL, ISBN or DOI"
    :tags ["python" "isbn" "doi"]))
(hoarder:fetch "LucasSimpson/ConcurrentFloodScraper"
  '(:tags ["scraping" "crawler" "python"])) 
(hoarder:fetch "dahlia/wikidata"
  '(:description "Wikidata client library for Python"
    :tags ["wikidata" "python"]))
(hoarder:fetch "cometaj2/huckle"
  '(:description "A generic CLI that can be used with any API that abides by the standard hypertext command line interface (HCLI) semantics."
    :tags ["cli" "hypertext" "alps" "microformats"]))
(hoarder:fetch "https://bitbucket.org/sjl/t"
  '(:type :hg
    :tags ["todo" "cli" "python"]))
(hoarder:fetch "FreeRDP/Remmina"
  '(:description "The GTK+ Remmina Remote Desktop Client"
    :tags ["gtk" "rdp" "remote-control" "spice" "vnc"]))
(hoarder:fetch "milohr/babe-qt"
  '(:description "Tiny Qt Babe Music Player"
    :tags ["qt" "music"]))
(hoarder:fetch "phanan/koel"
  '(:description "A personal music streaming server that works."
    :tags ["music" "streaming" "vue"]))
(hoarder:fetch "tmurph/todo-sync"
  '(:tags ["orgmode" "todo" "python" "emacs"])) 
(hoarder:fetch "sudaning/PytLab-Neko"
  '(:description "for fun"
    :tags ["python" "script"]))
(hoarder:fetch "manojkarthick/git-trend"
  '(:description "A Python CLI tool for getting the trending github repositories and developers"
    :tags ["python" "cli" "github"]))
(hoarder:fetch "kshramt/buildpy"
  '(:description "Make in Python"
    :tags ["python" "make" "build_tool"]))
(hoarder:fetch "lethe3000/ctable"
  '(:description "Print colorful(256) tables for terminal with built-in themes"
    :tags ["color" "python" "terminal"]))
(hoarder:fetch "hackjutsu/Lepton"
  '(:description "💻  Open-source GitHub Gist client built for macOS, Windows and Linux."
    :tags ["gist"]))
(hoarder:fetch "baumgarr/nixnote2"
  '(:description "Nixnote - A clone of Evernote for Linux"
    :tags ["evernote" "linux"]))
(hoarder:fetch "meshbird/meshbird"
  '(:description "Distributed private networking"
    :tags ["golang" "vpn"]))
(hoarder:fetch "bag-man/dotfiles"
  '(:description "Dotfiles for my Xmonad desktop"
    :tags ["vim" "xmonad" "dotfiles"]
    :memo "[[http://owen.cymru/hjkl-all-the-things/][HJKL all the things!]]"))
(hoarder:fetch "examachine/pisi"
  '(:description "PISI package manager of Pardus linux written in Python. The original development branch by the original author."
    :tags ["package_manager" "pardus" "python"]))
(hoarder:fetch "QuickBox/QuickBox"
  '(:description "QuickBox is much more than a 'seedbox installer script'... it is a simplistic approach to achieving easy seedbox and services management from a beautifully designed dashboard. Allowing users the ability to interact with their seedbox and server on a professional grade level. With the click of a button users can install packages like Plex, SickRage, BTSync and many more... all this in a seedbox script without spending a dime!"
    :tags ["rutorrent" "torent"]))
(hoarder:fetch "fabiofalci/sconsify"
  '(:description "A spotify console application"
    :tags ["spotify" "cli"]))
(hoarder:fetch "coleifer/dot-theme"
  '(:description "dotfile templating tools"
    :tags ["dotfiles"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5tqklb/misc_sharing_my_dotfile_templating_tools/][Too Many Requests]]"))
(hoarder:fetch "RookieGameDevs/revived"
  '(:description "A redux-inspired predictable state container for python"
    :tags ["python"]))
(hoarder:fetch "https://bitbucket.org/andreya/adblock2privoxy.git"
  '(:tags ["adblock" "privoxy"]))
(hoarder:fetch "vikstrous/pirate-get"
  '(:description "A command line interface for The Pirate Bay"
    :tags ["python" "pirate_bay"]))
(hoarder:fetch "hubsmoke/bro"
  '(:description "A CLI to interact with bropages.org"
    :tags ["ruby" "manual"]
    :site "http://bropages.org/"))
(hoarder:fetch "sindresorhus/promise-fun"
  '(:description "Promise packages, patterns, chat, and tutorials"
    :tags ["promise" "javascript"]))
(hoarder:fetch "deadpixi/mtm"
  '(:description "Perhaps the smallest useful terminal multiplexer in the world."
    :tags ["terminal" "multi_plexer" "tmux"]))
(hoarder:fetch "teeuwen/btdwm"
  '(:description "Bastiaan Teeuwen's dynamic window manager"
    :tags ["dwm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5uyvpb/btdwm_a_fork_of_dwm_tailored_to_my_own_likings/][Too Many Requests]]"))
(hoarder:fetch "tizonia/tizonia-openmax-il"
  '(:description "Command-line music player for Linux with Spotify, Google Play Music, YouTube, SoundCloud and Dirble support."
    :memo "[[https://hackernoon.com/macbook-my-command-line-utilities-f8a121c3b019#.flyah4ws5][302 Found]]"))
(hoarder:fetch "mptre/yank"
  '(:description "Yank terminal output to clipboard"
    :memo "[[https://hackernoon.com/macbook-my-command-line-utilities-f8a121c3b019#.flyah4ws5][302 Found]]"))
(hoarder:fetch "tstack/lnav"
  '(:description "Log file navigator"
    :memo "[[https://hackernoon.com/macbook-my-command-line-utilities-f8a121c3b019#.flyah4ws5][302 Found]]"))
(hoarder:fetch "lra/mackup"
  '(:description "Keep your application settings in sync (OS X/Linux)"
    :memo "[[https://hackernoon.com/macbook-my-command-line-utilities-f8a121c3b019#.flyah4ws5][302 Found]]"))
(hoarder:fetch "k4m4/terminals-are-sexy"
  '(:description "💥 A curated list of Terminal frameworks, plugins & resources for CLI lovers."
    :tags ["terminal" "awesome_list"]))
(hoarder:fetch "molovo/zvm"
  '(:description "The ZSH version manager "
    :tags ["zsh"]))
(hoarder:fetch "conversis/varstack"
  '(:description "A tool to create stacked configuration structures"
    :tags ["yaml" "configuration"]))
(hoarder:fetch "MoserMichael/cstuff"
  '(:description "My C projects"
    :memo "[[https://github.com/MoserMichael/cstuff/blob/master/img-archive/img-archive.pl][cstuff/img-archive.pl at master · MoserMichael/cstuff · GitHub]]"))
(hoarder:fetch "ivanwills/App-VTide"
  '(:description "An IDE(ish) environment built on Tmux and Vim (or another editor if desired)"
    :tags ["tmux" "vim"]))
(hoarder:fetch "chuanconggao/html2json"
  '(:description "Convert a HTML webpage to JSON data using a template defined in JSON."
    :tags ["html" "json"]))
(hoarder:fetch "guyskk/watch-rsync"
  '(:description "Watch PATH and rsync to DEST"
    :tags ["rsync"]))
(hoarder:fetch "tebelorg/TA.Gui"
  '(:description "Tool for non-developers and business users to automate web apps"
    :tags ["web" "casperjs" "phantomjs"]))
;; (hoarder:fetch "pynayzr/livestream-frame-capture"
;;   '(:description "Capture, grabbing, fetching livestream frame as image, including YouTube, Twitch, Dailymotion...etc"
;;     :tags ["youtube" "dailymotion" "twitch" "ffmpeg"]))
(hoarder:fetch "mwheregroup/swag"
  '(:description "Color your shell output with escape code magic."
    :tags ["terminal" "color" "python"]))
(hoarder:fetch "pstreck/django-videokit"
  '(:description "Video storage and processing for Django"
    :tags ["python" "video" "ffmpeg" "mediainfo"]))
(hoarder:fetch "christopher-dG/pmcli"
  '(:description "A lightweight, customizable TUI client for the Google Play Music streaming service."
    :tags ["music" "cli" "google_play_music"]))
(hoarder:fetch "bayi/qdmenu"
  '(:description "QML dmenu replacement"
    :tags ["qt" "qml" "dmenu" "launcher"]))
(hoarder:fetch "Huluti/Coulr"
  '(:description "Coulr - Color box to help developers and designers"
    :tags ["color" "python" "color_picker"]))
(hoarder:fetch "ankitjain28may/getit"
  '(:description "A cross platform CLI downloader tool written in python"
    :tags ["python" "cli" "downloader"]))
(hoarder:fetch "Spotweb/Spotweb"
  '(:description "Decentralized community"
    :tags ["usenet"]
    :memo "[[https://www.reddit.com/r/usenet/comments/4e92t6/theres_such_a_thing_as_free_indexer/][Theres such a thing as free indexer? : usenet]]"))
(hoarder:fetch "nZEDb/nZEDb"
  '(:description "nZEDb - a fork of nnplus(2011) | NNTP / Usenet / Newsgroup indexer."
    :tags ["usenet"]
    :memo "[[https://www.reddit.com/r/usenet/comments/4e92t6/theres_such_a_thing_as_free_indexer/][Theres such a thing as free indexer? : usenet]]"))
(hoarder:fetch "nihlaeth/user_config"
  '(:description "manage user configuration for python projects"
    :tags ["configuration" "python"]))
(hoarder:fetch "nicoulaj/broom"
  '(:description "A disk cleaning utility for developers."
    :tags ["cleaning" "git"]))
(hoarder:fetch "nicoulaj/rainbow"
  '(:description "Colorize commands output or STDIN using patterns."
    :tags ["color" "cli"]))
(hoarder:fetch "green-project/green-recorder"
  '(:description "A simple yet functional desktop recorder for Linux systems."
    :tags ["screen_capture" "desktop"]))
(hoarder:fetch "QTodoTxt/QTodoTxt"
  '(:description "Cross Platform todo.txt GUI "
    :tags ["todo.txt" "qt"]))
(hoarder:fetch "m3atatarian/dots"
  '(:tags ["dotfiles" "clipmenu" "dmenu" "windowchef"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5v1u4c/wchf_damask/][{wchf} Damask : unixporn]]")) 
(hoarder:fetch "hydandata/dmenu3"
  '(:description "Dynamic menu for X with history, fuzzy matching and stuff"
    :tags ["dmenu"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5v1u4c/wchf_damask/][{wchf} Damask : unixporn]]"))
(hoarder:fetch "cdown/clipmenu"
  '(:description "Clipboard management using dmenu"
    :tags ["dmenu" "clipboard"]))
(hoarder:fetch "kanishka-linux/kawaii-player"
  '(:description "Audio/Video manager, multimedia player and portable media server, based on python3 and pyqt5."
    :tags ["qt" "mpv" "media_player" "multimedia" "streaming"]
    :memo "[[https://www.reddit.com/r/opensource/comments/5v9pyg/kawaiiplayer_multimedia_player_with_builtin/][Too Many Requests]]"))
(hoarder:fetch "dennishafemann/tmux-cssh"
  '(:description "TMUX with a \"ClusterSSH\"-like behaviour."
    :tags ["tmux" "ssh" "cluster_ssh"]))
(hoarder:fetch "cute-jumper/plasma-rss-indicator"
  '(:description "RSS indicator for Plasma 5"
    :tags ["plasma" "kde" "qt" "rss"]))
(hoarder:fetch "gardaud/hack-exe"
  '(:description "An animated terminal application that pretends to be hacking a website, just like in the movies"))
(hoarder:fetch "ivanilves/xiringuito"
  '(:description "SSH-based \"VPN for poors\""
    :tags ["ssh" "vpn" "tuntup"]))
(hoarder:fetch "nitipit/shelfdb"
  '(:description "Python dict/json Database done right, for efficiency and simplicity."
    :tags ["database" "json" "python"]))
(hoarder:fetch "https://gitlab.com/napoleon-blue/hinapedia.git"
  '(:tags ["idol_master" "wiki"]))
(hoarder:fetch "TBRSS/overlord"
  '(:description "Experimental build/module system for Common Lisp"
    :tags ["common_lisp" "module" "asdf" "redo" "racket"]
    :memo "[[https://www.reddit.com/r/lisp/comments/5syuwu/overlord_an_experimental_buildmodule_system_for/][Too Many Requests]]"))
(hoarder:fetch "varjagg/cl-video"
  '(:description "Video file decoding in Common Lisp"
    :tags ["common_lisp" "video" "mjpeg"]
    :site "http://blog.funcall.org//lisp/2017/02/07/announcing-cl-video/"))
(hoarder:fetch "lakshaykalbhor/thirsty"
  '(:description ":hourglass: zsh/bash script to remind you to drink water."
    :tags ["zsh" "bash" "shellscript" "productivity"]
    :memo "[[https://www.reddit.com/r/zsh/comments/5vxy42/zsh_script_to_remind_you_to_drink_water/][Too Many Requests]]"))
(hoarder:fetch "podiki/cl-tcod-tutorial"
  '(:description "Lisp roguelike tutorial with libtcod and cl-tcod"
    :tags ["common_lisp" "roguelike" "libtcod"]
    :memo "[[https://www.reddit.com/r/lisp/comments/5vtyp0/a_roguelike_tutorial_in_common_lisp_preview_code/][A roguelike tutorial in Common Lisp (preview code available, notes soon) : lisp]]"))
(hoarder:fetch "mattallty/Caporal.js"
  '(:description "A full-featured framework for building command line applications (cli) with node.js"
    :tags ["cli" "javascript"]))
(hoarder:fetch "lhc70000/iina"
  '(:description "The modern video player for macOS."
    :tags ["macos" "mpv"]))
(hoarder:fetch "Mikerah/FakeDataGenerator"
  '(:tags ["python" "data" "generator"])) 
(hoarder:fetch "anaskhan96/soup"
  '(:description "Web Scraper in Go, similar to BeautifulSoup"
    :tags ["golang" "beautifulsoup" "scraper"]))
(hoarder:fetch "Chillance/sgo"
  '(:tags ["golang"])) 
(hoarder:fetch "seedifferently/nogo"
  '(:description "Network wide ad/site blocking via DNS, with a simple web control panel."
    :tags ["adblock" "dns" "golang"]))
(hoarder:fetch "yuki540net/onsen-node"
  '(:description "声優ラジオサイト「音泉」APIモジュール for Node.js"
    :tags ["radio" "api" "javascript"]
    :memo "[[http://qiita.com/yuki540/items/a9bcafc0eafbd61d7bb6][{Node}声優ラジオサイト「音泉」APIモジュール{改良版} - Qiita]]"))
(hoarder:fetch "MediaArea/MediaInfo"
  '(:description "MediaInfo is a convenient unified display of the most relevant technical and tag data for video and audio files."))
(hoarder:fetch "kbrgl/fu"
  '(:description "Unix's Find, Unleashed."
    :tags ["cli" "find" ]))
(hoarder:fetch "twostairs/snoo"
  '(:description "A Reddit command line client written in Node.js, using modern ES-features"
    :tags ["reddit" "cli" "javascript"]))
(hoarder:fetch "maxlath/wikidata-cli"
  '(:description "read and edit Wikidata from the command line"
    :tags ["cli" "wikidata" "javascript"]))
(hoarder:fetch "z411/trackma"
  '(:description "Open multi-site list manager for Unix-like systems. (ex-wMAL)"
    :tags ["anime" "gtk" "qt" "cli" "curses" "myanimelist" "kitsu" "anilist" "vndb"]))
(hoarder:fetch "Elv13/collision"
  '(:description "A window management module for AwesomeWM"
    :tags ["awesomewm" "lua"]))
(hoarder:fetch "Ulauncher/Ulauncher"
  '(:description "Application launcher for Linux"
    :tags ["linux" "launcher" "gtk" "python"]))
(hoarder:fetch "debitoor/dot-prop-immutable"
  '(:description "Immutable version of dot-prop with some extensions"
    :tags ["javascript"]))
(hoarder:fetch "nicfit/MishMash"
  '(:description "Music database, etc."
    :tags ["music" "python" "database"]))
(hoarder:fetch "pri22296/beautifultable"
  '(:description "Python 3 Library for printing visually appealing ASCII Tables in terminals."
    :tags ["ascii" "table" "cli" "python" ]))
(hoarder:fetch "DanielJDufour/broth"
  '(:description "Convenient Wrapper for BeautifulSoup"
    :tags ["beautifulsoup" "python"]))
(hoarder:fetch "nint8835/jigsaw"
  '(:description "A plugin framework for Python."
    :tags ["python"]))
(hoarder:fetch "timusus/Shuttle"
  '(:description "Shuttle Music Player"
    :tags ["android" "music" "java"]))
(hoarder:fetch "JonathanLink/PDFLayoutTextStripper"
  '(:description "Converts a pdf file into a text file while keeping the layout of the original pdf. Useful to extract the content from a table in a pdf file for instance. This is a subclass of PDFTextStripper class (from the Apache PDFBox library)."
    :tags ["pdf" "java"]))
(hoarder:fetch "roman01la/clojure-hacking-day"
  '(:tags ["clojure" "clojurescript" "java" "rum"])) 
(hoarder:fetch "tsifrer/python-twitch-client"
  '(:description "Python wrapper for Twitch API"
    :tags ["python" "twitch" "api"]))
(hoarder:fetch "punkyoon/pokinator"
  '(:description "Heroku-like random Pokemon name generator for python"
    :tags ["python" "random" "generator" "pokemon"]))
(hoarder:fetch "JulieRossi/agnostic_loader"
  '(:description "Load data from different input types (file, generator, gzipped file, directory, ...)"
    :tags ["python" "archive" "data"]))
(hoarder:fetch "soruly/whatanime.ga"
  '(:description "Anime Scene Search by Image"
    :tags ["anime" "search" "search_engine"]
    :site "https://whatanime.ga/"))
(hoarder:fetch "miao1007/AnimeWallpaper"
  '(:description "[Android] Konachan wallpaper downloader"
    :tags ["konachan" "wallpaper" "android" "java"]))
(hoarder:fetch "ScudLee/anime-lists"
  '(:tags ["anidb" "tvdb" "moviedb" "anime"])) 
(hoarder:fetch "lordfriend/Albireo"
  '(:description "A bangumi auto download and management project, This is the backend part, It has a webclient https://github.com/lordfriend/Deneb"
    :tags ["anime" "dmhy" "flexget"]))
(hoarder:fetch "stealthycoin/treeify"
  '(:description "Renders recursive structures in a terminal friendly way."
    :tags ["python" "terminal"]))
(hoarder:fetch "Noctem/aiopogo"
  '(:description "With lots of love from the Team Unknown6 <3"
    :tags ["python" "pokemon" "pokemongo"]))
(hoarder:fetch "rhdunn/cainteoir-engine"
  '(:description "The Cainteoir Text-to-Speech core engine"
    :tags ["text-to-speech" ]))
(hoarder:fetch "sindresorhus/fkill-cli"
  '(:description "Fabulously kill processes. Cross-platform."
    :tags ["javascript" "cli"]))
(hoarder:fetch "baverman/orcsome"
  '(:description "Scripting extension for NETWM compliant window managers"
    :tags ["awesomewm" "wm" "script" "python"]))
(hoarder:fetch "hyPiRion/inlein"
  '(:description "Run clojure scripts with dependencies."
    :tags ["clojure" "leiningen" "scripting"]))
(hoarder:fetch "Caesim404/clouddl"
  '(:description "Downloads files behind cloudflare's anti-bot page by passing cookies and user agent to another command."
    :tags ["python" "cloudflare" "download" "curl" "wget"]))
(hoarder:fetch "schlerp/pyfsig"
  '(:description "python file signature identifier - Use this to identify files from their headers"
    :tags ["python" "file_type"]))
(hoarder:fetch "yagamiash/twelisis"
  '(:description "Simplifying extraction of tweets from twitter and its analysis "
    :tags ["python" "twitter"]))
(hoarder:fetch "sashgorokhov/argparse-autogen"
  '(:description "Parser with automatic creation of parsers and subparsers for paths."
    :tags ["python" "cli" "argument_parser"]))
(hoarder:fetch "iffy/lhtml"
  '(:description "An app for working with local HTML files."
    :tags ["html" "javascript"]))
(hoarder:fetch "svirpridon/pyrsnapshot"
  '(:description "A rsnapshot re-implementation with push-over-ssh capability"
    :tags ["python" "rsnapshot" "ssh"]))
(hoarder:fetch "mczub/because-moe"
  '(:description "anime streaming search engine"
    :tags ["anime" "search_engine" "screen_capture"]))
(hoarder:fetch "soruly/awesome-acg"
  '(:description "A curated list of awesome technologies related to anime, comics, games, light novel, vocaloid"
    :tags ["awesome_list" "anime" "comic" "game"]
    :memo "[[http://www.moelib.com/][MoeLib]]"))
(hoarder:fetch "pirate/sites-using-cloudflare"
  '(:description ":broken_heart: List of domains using Cloudflare DNS (potentially affected by the CloudBleed HTTPS traffic leak)"
    :tags ["cloudflare"]))
(hoarder:fetch "supermomonga/omochi"
  '(:tags ["clojure" "slack" "bot"])) 
(hoarder:fetch "CloudBoltSoftware/githubclient"
  '(:description "A lightweight GitHub REST API client written in Python. MIT License"
    :tags ["github" "python" "api"]))
(hoarder:fetch "git://myrepos.branchable.com/" ;; last slash
  '(:name "myrepos"
    :tags ["vcs" "git"]
    :memo "[[https://www.reddit.com/r/emacs/comments/5vju1r/backing_upversioning_emacsd_bashrc_xmonad_etc/de39ztl/][Too Many Requests]]"))
(hoarder:fetch "therockmandolinist/dotfiles"
  '(:description "My dotfiles and some scripts"
    :tags ["dotfiles" "emacs" "org-mode"]
    :memo "[[https://github.com/therockmandolinist/dotfiles/blob/master/rc.org][dotfiles/rc.org at master · therockmandolinist/dotfiles · GitHub]]
[[https://www.reddit.com/r/emacs/comments/5vju1r/backing_upversioning_emacsd_bashrc_xmonad_etc/de3c6el/][therockmandolinist comments on Backing up/versioning : .emacs.d, .bashrc, .xmonad, etc config...]]"))
(hoarder:fetch "https://notabug.org/isengaara/mbroloid.git"
  '(:description "a voice synthesizer similar to MBROLA and VOCALOID"
    :tags ["vocaloid" "mbrola" "synthesizer"]))
(hoarder:fetch "Goerofmuns/astro"
  '(:description "CPU Emulator / Vintage Spaceflight"
    :memo "[[https://www.reddit.com/r/unixporn/comments/5wy4qj/osxpinkified/][{osx}pinkified : unixporn]]"))
(hoarder:fetch "vincent-petithory/mpdfav"
  '(:description "Song playcounts and ratings out-of-the-box for MPD."
    :tags ["mpd" "golang" ]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5wpm4f/music_player_with_ability_to_rate_songs_ideally/][Too Many Requests]]"))
(hoarder:fetch "TimboKZ/kuristina"
  '(:description "An API to fetch anime lists using MyAnimeList account names. Available at https://kuristina.herokuapp.com/"
    :tags ["myanimelist"]
    :memo "[[https://www.reddit.com/r/MyAnimeList/comments/5ljzeg/kuristina_api_to_fetch_mal_lists_by_username/][Too Many Requests]]"))
(hoarder:fetch "rchipka/node-osmosis"
  '(:description "Web scraper for NodeJS"
    :tags ["javascript" "scraper"]))
(hoarder:fetch "odangosan/liveport"
  '(:description "Tools to support live broadcasting"
    :tags ["peercast" "shitarababbs" "electron"]))
(hoarder:fetch "BharatKalluri/MovieScore"
  '(:description "A cli tool to get movie ratings and reviews directly to your terminal!"
    :tags ["golang" "movie" "imdb"]))
(hoarder:fetch "lk-geimfari/doggie"
  '(:description "Doggie is a library that provides the most commonly used regular expression patterns for Elixir."
    :tags ["elixir" "regexp"]))
(hoarder:fetch "trqx/rdr"
  '(:description "rdr - get plain text content of web pages"
    :tags ["web" "html" "scraping"]
    :memo "[[https://www.reddit.com/r/commandline/comments/5y0pzl/tool_for_downloading_webpages_in_readable/][Too Many Requests]]"))
(hoarder:fetch "https://bitbucket.org/bloodrizer/kitten-game.git"
  '(:tags ["browser_game" "game" "javascript" "kittens_game"]
    :site "http://bloodrizer.ru/games/kittens/#"
    :memo "[[http://www.reddit.com/r/kittensgame/]]
[[http://bloodrizer.ru/games/kittens/wiki/]]"))
(hoarder:fetch "dwhalen/linearKittens"
  '(:description "An AI for bloodrizer's Kittens Game."
    :tags ["kittens_game" "autoclicker"]
    :memo "[[http://bloodrizer.ru/games/kittens/wiki/index.php?page=AutoClickers][AutoClickers - Kittens Game wiki]]"))
(hoarder:fetch "cameroncondry/cbc-kitten-scientists"
  '(:description "Add-on for the wonderful incremental browser game: http://bloodrizer.ru/games/kittens/"
    :tags ["kittens_game"]
    :memo "[[http://bloodrizer.ru/games/kittens/wiki/index.php?page=AutoClickers][AutoClickers - Kittens Game wiki]]"))
(hoarder:fetch "mikf/gallery-dl"
  '(:description "Command-line program to download image galleries and collections from pixiv, exhentai, danbooru, gelbooru, nijie and more"
    :tags ["python" "pixiv"  "exhentai"  "danbooru"  "gelbooru"  "nijie" "image" "gallery" "downloader" "manga" "comic" "booru"]
    :memo "[[https://www.youtube.com/watch?v=O6vYaIbc6r4][gallery-dl - Image Comic Manga Downloader - Linux CLI - YouTube]]"))
(hoarder:fetch "ArtyumX/ruTorrent-Themes"
  '(:description "A collection of themes for ruTorrent found on the web"
    :tags ["rutorrent" "torrent"]
    :memo "[[https://www.reddit.com/r/seedboxes/comments/5yt9mm/made_a_github_repo_with_a_collection_of_rutorrent/][Too Many Requests]]"))
(hoarder:fetch "Novik/ruTorrent"
  '(:description "Yet another web front-end for rTorrent"
    :tags ["rutorrent" "torrent"]
    :memo "[[https://github.com/Novik/ruTorrent/wiki/PluginTheme][PluginTheme · Novik/ruTorrent Wiki · GitHub]]"))
(hoarder:fetch "chris-etheridge/aaa"
  '(:description "Adjective-Adjective-Animal from Clojure/Script."
    :tags ["clojure" "clojurescript" "random"]))
(hoarder:fetch "a-type/adjective-adjective-animal"
  '(:description "Suitably random and reasonably unique human readable (and fairly adorable) ids"
    :tags ["javascript" "random"]))
(hoarder:fetch "fuerbringer/searxbot"
  '(:description "Telegram Bot that fetches search results from a public Searx instance"
    :tags ["searx" "bot" "telegram" "javascript"]
    :memo "[[https://lainchan.org/tech/res/35087.html][tech - Script Sharing Thread]]"))
(hoarder:fetch "https://gist.github.com/earthgecko/3089509.git"
  '(:tags ["shellscript" "random"]
    :name "bash.generate.random.alphanumeric.string.sh"
    :memo "[[https://lainchan.org/tech/res/35087.html#35100][tech - Script Sharing Thread]]"))
(hoarder:fetch "ryukinix/lisp-chat"
  '(:description "An experimental chat written in Common Lisp"
    :tags ["lisp" "irc" "chat" "experimental" "common-lisp"]
    :memo "[[https://news.ycombinator.com/item?id=13857880][Show HN: Experimental chat written in Common Lisp | Hacker News]]"))
(hoarder:fetch "rongarret/tweetnacl"
  '(:memo "[[https://news.ycombinator.com/item?id=13857880][Show HN: Experimental chat written in Common Lisp | Hacker News]]")) 
(hoarder:fetch "knqyf263/pet"
  '(:description "Simple command-line snippet manager, written in Go."
    :tags ["golag" "snippet" "cli"]
    :memo "[[https://news.ycombinator.com/item?id=13857064][Simple command-line snippet manager, written in Go | Hacker News]]"))
(hoarder:fetch "orkohunter/keep"
  '(:description "A Meta CLI toolkit : Personal shell command keeper"
    :tags ["golag" "snippet" "cli"]
    :memo "[[https://news.ycombinator.com/item?id=13857064][Simple command-line snippet manager, written in Go | Hacker News]]"))
(hoarder:fetch "ok-borg/borg"
  '(:description "Search and save shell snippets without leaving your terminal"
    :tags ["golang" "snippet"]
    :memo "[[https://news.ycombinator.com/item?id=13857064][Simple command-line snippet manager, written in Go | Hacker News]]"))
(hoarder:fetch "lakshaykalbhor/MusicTools"
  '(:description "Python library with tools to download, label and sort music files."
    :tags ["python" "music" "mp3" "id3tag"]))
(hoarder:fetch "nspragg/filehound"
  '(:description "Flexible and fluent interface for searching the file system"
    :tags ["javascript" "file" "search"]))
(hoarder:fetch "Idlepunk/Idlepunk.github.io"
  '(:description "An idle cyberpunk game."
    :tags ["incremental_game" "game" "clicker_game"]))
(hoarder:fetch "weavejester/integrant"
  '(:description "Micro-framework for data-driven architecture"
    :tags ["clojure" "framework" "component"]
    :memo "[[https://skillsmatter.com/skillscasts/9820-enter-integrant-a-micro-framework-for-data-driven-architecture-with-james-reeves][Enter Integrant: a micro-framework for data-driven architecture with James Reeves | SkillsCast | 7th March 2017]]"))
(hoarder:fetch "git://git.suckless.org/blind"
  '(:tags ["video" "ffmpeg" "cli"]
    :depth nil))
(hoarder:fetch "Morpheox/Kraft"
  '(:description "text-based iddle game"
    :tags ["idle_game" "game" "incremental_game" "kittens_game"]))
(hoarder:fetch "https://gitlab.com/atorresm/rocket-guardian.git"
  '(:tags ["android" "game"]
    :depth nil))
(hoarder:fetch "pdebuyl/whych"
  '(:description "A module to find modules"
    :tags ["python" "module" "path"]))
(hoarder:fetch "pltanton/yags"
  '(:description "Go powered statusline generator"
    :tags ["go" "golang" "statusbar" "dbus" "pulseaudio"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/603gyv/statusbar_yags_dynamic_statusline_generator_rate/][Too Many Requests]]"))
(hoarder:fetch "kvannotten/ricer"
  '(:description "Application to generate config files based on templates"
    :tags ["linux" "ricing"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5zz5x4/ricer_configuration_templating_utility_written_in/][ricer: configuration templating utility written in golang; taking requests : unixporn]]"))
(hoarder:fetch "jpwall/patsr"
  '(:description "A simple social network based on anonymity, tags, and sharing"
    :memo "[[https://www.reddit.com/r/unixporn/comments/5zmd33/i3gaps_spring_theme_warm_colors_amateurin_progress/][Too Many Requests]]"))
(hoarder:fetch "mlde/californium"
  '(:description "application menu"
    :tags ["menu" "xdg" "qt" "x11"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5zky62/any_suggestions_for_iconbased_dashboard/][Too Many Requests]]"))
(hoarder:fetch "johanmalm/jgmenu"
  '(:description "Small X11 menu intended to be used with openbox and tint2"
    :tags ["menu" "x11" "openbox" "tint2"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5zky62/any_suggestions_for_iconbased_dashboard/][Too Many Requests]]"))
(hoarder:fetch "TrilbyWhite/interrobang"
  '(:description "A tiny launcher menu packing a big bang (syntax)"
    :tags ["dmenu" "launcher" "rofi"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5zky62/any_suggestions_for_iconbased_dashboard/][Too Many Requests]]"))
(hoarder:fetch "guglicap/golem"
  '(:description "Go program to generate input for lemonbar"
    :tags ["lemonbar" "golang"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/5zf7ot/oc_golem_an_input_generator_for_lemonbar_written/][Too Many Requests]]")) 
(hoarder:fetch "tiagocoutinho/xkcd"
  '(:description "downloader of xkcd comics"
    :tags ["python" "xkcd" "comic" "downloader"]))
(hoarder:fetch "theAeon/Private-Peer-Domain-Syndication"
  '(:description "Open source and semi-centralized replacement to traditional domain registration and resolution. "
    :tags ["dns" "python"]))
;; (hoarder:fetch "FriarTech/mytv"
;;   '(:description "Command line utility to track your tv shows"
;;     :tags ["tv" "python"]))
(hoarder:fetch "ivanseidel/node-draftlog"
  '(:description "📜 Create updatable log lines into the terminal, and give life to your logs!"
    :tags ["javascript" "log"]))
(hoarder:fetch "kepoorhampond/python-draftlog"
  '(:description ":scroll: Fancy logs and CLI tools. Bring life to your terminal!"
    :tags ["python" "log"]))
(hoarder:fetch "ssterling/tmux-notify"
  '(:description "Simple tmux notification script"
    :tags ["tmux" "notification" "shellscript"]))
(hoarder:fetch "brhs/butter"
  '(:description "A low-contrast color scheme for reading code all day "
    :tags ["vim"]))
(hoarder:fetch "rubylibs/fetcher"
  '(:description "fetcher gem - Fetch Text Documents or Binary Blobs via HTTP, HTTPS"
    :tags ["ruby" "http"]))
(hoarder:fetch "rubylibs/props"
  '(:description "props gem - Manage Setting Hierachies (Commandline, User, Home, Defaults, etc.) in Ruby"
    :tags ["ruby" "configuration" "dotfiles"]))
(hoarder:fetch "vlevit/xatk"
  '(:description "a keyboard-driven window switcher for x11"))
(hoarder:fetch "zombieleet/hubbub"
  '(:description "command line todo application "
    :tags ["todo" "cli"]))
(hoarder:fetch "https://phabricator.wikimedia.org/source/keyholder.git"
  '(:tags ["ssh" "wikimedia" "ssh-agent"]
    :memo "[[https://blog.wikimedia.org/2017/03/22/keyholder/][Announcing Keyholder: Secure, shared shell access – Wikimedia Blog]]"))
(hoarder:fetch "andrewiankidd/Plextras.js"
  '(:description "Minor customizations to plex/web plugin"
    :tags ["plex"]
    :memo "[[https://www.reddit.com/r/PleX/comments/610n45/i_wrote_a_script_to_customize_plexweb_ui/][Too Many Requests]]"))
(hoarder:fetch "sindresorhus/sparkly"
  '(:description "Generate sparklines ▁▂▃▅▂▇"
    :tags ["javascript" "terminal"]))
(hoarder:fetch "rndusr/stig"
  '(:description "TUI and CLI for the BitTorrent client Transmission"
    :tags ["transmission" "torrent" "bittorrent" "python-3 " "tui " "cli" "transmission-daemon" "urwid"]
    :memo "[[https://boards.4chan.org/g/thread/59580873#p59581041][/g/ - /fglt/ - Friendly GNU/Linux Thread - Technology - 4chan]]"))
(hoarder:fetch "majestrate/XD"
  '(:description "standalone i2p bittorrent client"))
(hoarder:fetch "s-a/muenchhausen-client"
  '(:description "Produce authentic fake mockup data"))
(hoarder:fetch "ThomasAdam/mvwm"
  '(:description "Modern Virtual Window Manager"
    :tags ["fvwm" "wm" "desktop"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/61pygz/fvwmmvwm_switched_from_bspwm/][Too Many Requests]]"))
(hoarder:fetch "sindresorhus/tempy"
  '(:description "Get a random temporary file or directory path"
    :tags ["javascript"]))
(hoarder:fetch "bgutter/sylvia"
  '(:description "Use phoneme-based regular expressions to find words in the Carnegie-Mellon Pronouncing Dictionary."
    :tags ["python" "regex"]))
(hoarder:fetch "melezhik/sparrowdo-cpanm-github"
  '(:description "Installs CPAN modules fetched from remote GitHub repositories"
    :tags ["cpan" "github" "perl" "sparrowdo"]))
(hoarder:fetch "mischov/meeseeks"
  '(:description "An Elixir library for extracting data from HTML."
    :tags ["html" "elixir"]
    :memo "[[https://www.reddit.com/r/elixir/comments/61sua6/meeseeks_a_library_for_extracting_data_from_html/][Meeseeks - A library for extracting data from HTML : elixir]]"))
(hoarder:fetch "mubaris/curiosity"
  '(:description "Find Amazing Github Projects :zap:"
    :tags ["github" "javascript"]))
(hoarder:fetch "lbryio/lbry-app"
  '(:description "The LBRY app built using electron"
    :tags ["electron" "p2p"]
    :memo "[[https://www.reddit.com/r/lbry/][Too Many Requests]]
[[https://www.youtube.com/watch?v=U1h7pUG2DFw][\"Decentralized, Open Source YouTube Alternative w/lbry.io\" - Lunduke Hour - Mar 28, 2017 - YouTube]]"))
(hoarder:fetch "venam/blog"
  '(:description "Venam's blog"
    :tags ["dotfiles" "unix" "linux" "unixers"]
    :site "http://venam.nixers.net/blog"
    :download nil))
(hoarder:fetch "drewt/scmus"
  '(:description "ncurses mpd client written in scheme"
    :tags ["music" "mpd" "scheme" "chicken_scheme"]))
(hoarder:fetch "LER0ever/EverVim"
  '(:description "A Modern & Powerful Vim Config Collection"
    :tags ["vim" "configuration"]))
(hoarder:fetch "Mikerah/1Chan"
  '(:tags ["4chan" "bbs" "forum"]
    :memo "[[https://www.reddit.com/r/SideProject/comments/63hvq2/1chan_my_basic_implementation_of_a_textboard_forum/][Too Many Requests]]")) 
(hoarder:fetch "strangeloop/strangeloop2012"
  '(:description "Strange Loop 2012"
    :memo "[[https://github.com/strangeloop/strangeloop2012/blob/master/slides/sessions/Sierra-FunctionalDesignPatterns.pdf][strangeloop2012/Sierra-FunctionalDesignPatterns.pdf at master · strangeloop/strangeloop2012 · GitHub]]
[[https://www.youtube.com/watch?v=etr08mExAI0][Functional Design Patterns - Stuart Sierra - YouTube]]"
    :download nil))
(hoarder:fetch "alphapapa/solarized-everything-css"
  '(:description "A collection of Solarized user-stylesheets for...everything?"))
(hoarder:fetch "srcecde/desktop-news-notifier"
  '(:description "A Python script that pops up notification of top news every twenty-minutes."
    :tags ["news" "python" "notification"]))
(hoarder:fetch "plonk/peercast-yt"
  '(:description "PeerCast YT"))
(hoarder:fetch "danleech/simple-icons"
  '(:description "SVG icons for popular brands"
    :tags ["icon" "svg"]
    :download nil))
(hoarder:fetch "xiyouMc/WebHubBot"
  '(:description "Python + Scrapy + MongoDB . 5 million data per day !!!💥  The world's largest adult website.    🔞  "
    :tags ["python" "scrapy" "mongodb" "scraper" "crawler" "pornhub"]))
(hoarder:fetch "Segsyoxafu/SKK"
  '(:description "Segsyoxafuから漢字に変換する為のSKK辞書です。 CorvusSKKやSKK日本語入力FEPなどでお使いください。"
    :tags ["skk" "dictionary"]
    :site "https://segsyoxafu.wordpress.com/"
    :memo "[[http://nmksb.seesaa.net/article/447765981.html][Segsyoxafu��SKK���������J���ꂽ�I: �Z�����Ε�]]
[[http://nmksb.seesaa.net/article/447300373.html][���X�ISKK����: �Z�����Ε�]]"))
(hoarder:fetch "dyama/skk-dict-kancolle"
  '(:description "Kancolle words dictionary for SKK"
    :tags ["skk" "dictionary" "kancolle"]))
(hoarder:fetch "nathancorvussolis/skkdic"
  '(:description "miscellaneous SKK dictionaries"
    :tags ["skk" "dictionary"]))
(hoarder:fetch "mlny/skk-dict-imascgss"
  '(:description "アイドルマスターシンデレラガールズ スターライトステージ SKK辞書"
    :tags ["skk" "dictionary" "idol_master"]))
(hoarder:fetch "https://gitlab.com/napoleon-blue/hinaserver.git"
  '(:tags ["idol_master"]))
(hoarder:fetch "https://gitla.in/nymphet/Haskell-Common-Lisp.git"
  '(:depth nil
    :tags ["common_lisp" "haskell"]))
(hoarder:fetch "https://bitbucket.org/cfyzium/bearlibterminal"
  '(:type :hg
    :tags ["terminal" "cui" "python" "c++" "c" "lua"]))
(hoarder:fetch "irskep/clubsandwich"
  '(:description "A BearLibTerminal framework for Python 3"
    :tags ["python" "cui" "bearlibterminal"]
    :memo "[[https://www.reddit.com/r/roguelikedev/comments/65s2l9/clubsandwich_a_bearlibterminal_framework_for/][Too Many Requests]]"))
(hoarder:fetch "hashbang/hashbang.sh"
  '(:description "Public facing website on hashbang.sh with embedded user creation script."
    :tags ["shell" "vps" "sdf" "unix"]
    :memo "[[https://news.ycombinator.com/item?id=14134798][SDF – Public Access Unix System | Hacker News]]"))
(hoarder:fetch "git://git.joeyh.name/moreutils"
  '(:tags ["shell" "unix" "cli"]))
(hoarder:fetch "genbafm/genbafm.github.io"
  '(:description "Radio for frontend"
    :tags ["radio" "podcast" "frontend" "web" "development" "programming"]))
(hoarder:fetch "pbiernacki/mac_rtprio"
  '(:description "Simple MAC Framework policy to manage access for setting realtime priorities by selected GID."
    :tags ["freebsd"]))
(hoarder:fetch "sindresorhus/log-update"
  '(:description "Log by overwriting the previous output in the terminal. Useful for rendering progress bars, animations, etc."
    :tags ["cli" "javascript"]))
(hoarder:fetch "notwaldorf/tiny-care-terminal"
  '(:description "💖💻 A little dashboard that tries to take care of you when you're using your terminal."
    :tags ["terminal" "javascript" "dashboard"]))
(hoarder:fetch "tastejs/hacker-news-pwas"
  '(:description "HNPWA - Hacker News readers as Progressive Web Apps 📱"))
(hoarder:fetch "lhartikk/naivechain"
  '(:description "A blockchain implementation in 200 lines of code"
    :tags ["blockchain" "javascript"]))
(hoarder:fetch "mislavcimpersak/awesome-dev-fun"
  '(:description "A curated list of awesome fun libs/packages/languages that have no real purpose but to make a developer chuckle."
    :tags ["awesome_list" "joke"]))
(hoarder:fetch "aphyr/tesser"
  '(:description "Clojure reducers, but for parallel execution: locally and on distributed systems."
    :tags ["clojure" "reduce" "fold" "parallel" "transducer"]))
(hoarder:fetch "jduey/monads-talk"
  '(:description "Supporting namespaces for my talk"
    :tags ["clojure" "monad"]
    :memo "[[https://github.com/jduey/monads-talk/blob/master/talk-script.clj][monads-talk/talk-script.clj at master · jduey/monads-talk · GitHub]]"))
(hoarder:fetch "edent/SuperTinySocialIcons"
  '(:description "Under 1KB each! Super Tiny Social Icons are miniscule SVG versions of your favourite logos"
    :tags ["icon" "sns"]
    :download nil))
(hoarder:fetch "jwiegley/putting-lenses-to-work"
  '(:description "A presentation for BayHac 2017 on how I uses lenses at work"
    :tags ["lens" "haskell"]
    :memo "[[https://www.youtube.com/watch?v=QZy4Yml3LTY&index=2&list=PL5lgjzYOvyYNchlkMzvDqd1F6gS-COCDo][John Wiegley: Putting Lenses to Work - YouTube]]
[[https://skillsmatter.com/skillscasts/4251-lenses-compositional-data-access-and-manipulation][Lenses: compositional data access and manipulation. | SkillsCast | 9th October 2013]]"))
(hoarder:fetch "AdrieanKhisbe/configue"
  '(:description "Configue All the Things.js"
    :tags ["configuration" "javascript"]))
(hoarder:fetch "Aaronepower/mammut"
  '(:description "An API wrapper for the Mastodon API in Rust."
    :tags ["rust" "mastodon" "api"]))
(hoarder:fetch "lindes/ttyload"
  '(:description "ttyload -- \"graphical\" tracking of UNIX load average in a terminal (\"tty\")"
    :tags ["terminal" "cli" "monitor"]))
(hoarder:fetch "ta2gch/cl-emoji"
  '(:description "cl-emoji provides the Unicode emoji characters."
    :tags ["common_lisp" "emoji"]))
(hoarder:fetch "jarzka/namespacefy"
  '(:description "Clojure(Script) helper library for namespacing keywords"
    :tags ["namespace" "clojure" "clojurescript"]))
(hoarder:fetch "mrhorin/epcyp"
  '(:description "electron製peercastチャンネルビューア"
    :tags ["peercast" "electron"]))
(hoarder:fetch "mrhorin/epcviewer"
  '(:description "📢electron製peercast実況用のBBSブラウザ📢"))
(hoarder:fetch "captn3m0/spectrumyzer"
  '(:description "Spectrum analyzer"
    :memo "[[https://github.com/captn3m0/spectrumyzer/tree/water][GitHub - captn3m0/spectrumyzer at water]]"))
(hoarder:fetch "dry-rb/dry-container"
  '(:description "A simple, configurable container implemented in Ruby"
    :tags ["dry-rb" "ioc" "ioc-container" "ruby"]
    :memo "[[https://www.youtube.com/watch?v=zwo7ZTHS8Wg][RubyConf 2016 - Composition by James Dabbs - YouTube]]"))
(hoarder:fetch "pzol/deterministic"
  '(:description "Functional - deterministic - Ruby made fun"
    :tags ["ruby"]
    :memo "[[https://www.youtube.com/watch?v=zwo7ZTHS8Wg][RubyConf 2016 - Composition by James Dabbs - YouTube]]"))
(hoarder:fetch "OpenIB/OpenIB"
  '(:description "An infinity fork focused on security."
    :tags ["8chan" "infinity" "bbs"]))
(hoarder:fetch "tootcafe/blocked-instances"
  '(:description "List of Mastodon instances blocked by toot.cafe"
    :tags ["mastodon"]))
(hoarder:fetch "ssbc/patchwork"
  '(:description "A decentralized messaging and sharing app built on top of Secure Scuttlebutt (SSB)."
    :tags ["crypto" "decent" "decentralized" "offline" "scuttlebutt" "social" "social-network" "ssb" "subjectivity"]))
(hoarder:fetch "Gigoteur/PX8"
  '(:description "Open source Fantasy Console in Rust (with Python and Lua)"
    :tags ["cartridge" "console" "emscripten" "emulator" "fantasy" "lua" "opensource" "python" "rust" "sdl2"]))
(hoarder:fetch "cpbotha/nvpy"
  '(:tags ["python" "notional_velocity" "note"]))
(hoarder:fetch "https://gitgud.io/m712/blazechan.git"
  '(:tags ["chan" "bbs"]))
(hoarder:fetch "solus-project/3rd-party"
  '(:description "Extra 3rd party packages "
    :tags ["solus" "package" "font" "mscorefonts"]
    :download nil
    :memo "[[https://www.youtube.com/watch?v=FdXrdsobk_E][Setting Up MS Core Fonts in Solus - Made Easy - YouTube]]
[[http://www.fosslinux.com/1387/how-to-install-microsoft-true-type-fonts-in-solus.htm][How to install Microsoft True Type Fonts in Solus | FOSS Linux]]"))
(hoarder:fetch "https://gitlab.com/dto/xelf.git"
  '(:tags ["common_lisp" "game" "gui" "widget"]
    :site "http://xelf.me"
    :memo "[[https://www.youtube.com/channel/UCKfZ9JfFgg7cxa2hYfC5O0A][dto-games - YouTube]]"))
(hoarder:fetch "atomashpolskiy/bt"
  '(:description "Java BitTorrent Done Right!"
    :tags ["bittorrent" "dht" "library" "p2p" "torrent" "java"]))
(hoarder:fetch "MrKepzie/Natron"
  '(:description "Open-source compositing software. Node-graph based. Similar in functionalities to Adobe After Effects and Nuke by The Foundry."
    :tags ["c-plus-plus" "cross-platform" "openfx" "vfx" "linux"]
    :download nil))
(hoarder:fetch "decentraland/web"
  '(:description "decentraland.org"
    :tags ["p2p" "bittorrent" "blockchain"]
    :memo "[[https://www.youtube.com/watch?v=xxmPJ0DFRPI][Decentraland: P2P Virtual Reality - YouTube]]"
    :download nil))
(hoarder:fetch "IrosTheBeggar/mStream"
  '(:description "Music Streaming Server With FLAC Support"
    :tags ["beets" "flac" "flac-streaming" "javascript" "mstream" "music" "music-streaming" "music-streaming-server"]))
(hoarder:fetch "mmontone/clavier"
  '(:description "General purpose validation library for Common Lisp"
    :tags ["common-lisp" "lisp" "utilities" "validation"]))
(hoarder:fetch "coleifer/huey"
  '(:description "a little task queue for python"
    :tags ["python" "queue" "redis" "task-queue"]))
(hoarder:fetch "psifidotos/Latte-Dock"
  '(:description "Latte is a dock based on plasma frameworks that provides an elegant and intuitive experience for your tasks and plasmoids"
    :tags ["dock" "linux"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/71qyib/kde_latte_is_not_only_a_dock_but_a_much_better/][Too Many Requests]]"))
(hoarder:fetch "varlesh/video-wallpaper-linux"
  '(:description "Little tool for set video wallpaper on Linux"
    :tags ["wallpaper" "video" "linux" "mpv"]))
(hoarder:fetch "varlesh/elementary-add"
  '(:description "elementary OS style icon theme"
    :tags ["icon" "elementary"]))
(hoarder:fetch "https://@opensourceprojects.eu/git/p/recoll1/code"
  '(:type :git
    :name "recoll"
    :tags ["search" "index"]))
(hoarder:fetch "Mechasparrow/Emojielog"
  '(:description "A nice little diary for emoji logs."
    :tags ["emoji" "javascript" "log"]))
(hoarder:fetch "slashrsm/rasstaggregator"
  '(:description "Feed aggregator written in Elixir."
    :tags ["elixir" "rss"]))
(hoarder:fetch "alpaca-lang/alpaca"
  '(:description "Functional programming inspired by ML for the Erlang VM"
    :tags ["alpaca" "erlang" "erlang-vm" "hindley-milner" "ml" "statically-typed"]))
(hoarder:fetch "jordanadams/imgur-elixir"
  '(:description ":camera: The missing Imgur client for Elixir"
    :tags ["api-client" "elxir" "imgur"]))
(hoarder:fetch "system76/pop-gtk-theme"
  '(:description "System76 Pop GTK+ Theme"
    :tags ["gtk" "theme" "linux"]
    :memo "[[https://www.youtube.com/watch?v=fKCo7yuvHGk][New \"Pop\" GTK Theme by System76 - YouTube]]"))
(hoarder:fetch "system76/pop-icon-theme"
  '(:description "System76 Pop icon theme for Linux"
    :download nil
    :tags ["icon" "theme" "linux"]))
(hoarder:fetch "ipfs-search/ipfs-search"
  '(:description "Search engine for the Interplanetary Filesystem."
    :tags ["ipfs"]))
(hoarder:fetch "webtorrent/magnet-uri"
  '(:description "Parse a magnet URI and return an object of keys/values"
    :tags ["bittorrent" "browser" "browserify" "javascript" "magnet-link" "magnet-uri" "nodejs" "parse" "torrent" "webtorrent"]))
(hoarder:fetch "Genshin/PhantomOpenEmoji"
  '(:description "POE has been discontinued. Please use emojidex."
    :tags ["font" "emoji"]))
(hoarder:fetch "emojidex/emojidex-vectors"
  '(:description "Vector [SVG] emoji assets for emojidex"
    :tags ["emoji"]
    :download nil))
(hoarder:fetch "AlphaReign/scraper"
  '(:description "AlphaReigns DHT Scraper, includes peer updater and categorizer"
    :tags ["p2p" "dht" "javascript"]))
(hoarder:fetch "TUSF/ip-nyaa"
  '(:description "Interplanetary Nyaa"
    :tags ["ipfs" "nyaa"]
    :memo "[[https://boards.4chan.org/g/thread/60214464#p60214464][/g/ - Nyaa General Thread - Technology - 4chan]]"))
(hoarder:fetch "lmatteis/torrent-net"
  '(:description "Distributed search engines using BitTorrent and SQLite"
    :tags ["torrent"]))
(hoarder:fetch "kenCode-de/c-ipfs"
  '(:description "IPFS implementation in C, (not just an API client library). Why C? Think BlockPay, routers, kiosks, IoT, vending machines, Blackphones, RasPi's, old pc's and more..."
    :tags ["ipfs"]))
(hoarder:fetch "xvw/scope"
  '(:description "Scope is a small module that provides two macros to facilitate function overload and local import/aliases execution."
    :tags ["elixir" "local" "macros" "module" "overloading" "scope"]
    :memo "[[https://www.reddit.com/r/elixir/comments/6949gg/scope_local_import_of_modules/][Too Many Requests]]"))
(hoarder:fetch "pirate/pocket-archive-stream"
  '(:description "🗄 Save an archived copy of all websites starred using Pocket.  Outputs browseable html."
    :tags ["archive" "google-chrome" "pocket" "rss" "wget" "pinboard" "bookmark"]))
(hoarder:fetch "denysdovhan/spaceship-zsh-theme"
  '(:description ":star: :rocket: An “Oh My ZSH!” theme for Astronauts."
    :tags ["git" "oh-my-zsh" "prompt" "shell" "shell-prompt" "shell-theme" "spaceship" "terminal" "vi-mode" "zsh" "zsh-theme" "zsh-users"]))
(hoarder:fetch "xdaimon/music_visualizer"
  '(:description "music visualizer for linux. uses pulseaudio."
    :memo "[[https://www.reddit.com/r/unixporn/comments/6a9luu/oc_music_visualizer/][{OC} Music Visualizer : unixporn]]
[[http://imgur.com/gallery/TwWY2][my music visualizer - Album on Imgur]]"))
(hoarder:fetch "https://gist.github.com/2eaf8479ea9efb1f94b0801432f1ca5b.git"
  '(:tags ["fvwm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6a4cq2/fvwm_going_full_monochromatic/][Too Many Requests]]"))
(hoarder:fetch "small-utils/xmenu"
  '(:tags ["dmenu"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6a42d6/oc_xmenu_is_a_fork_of_suckless_dmenu_with_open/][Too Many Requests]]")) 
(hoarder:fetch "CMB/edbrowse"
  '(:description "A command-line editor and web browser."
    :tags ["cli" "browser"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6a5dou/what_cli_browsers_other_than_elinks_w3m_are_out/][What cli browsers other than (e)links & w3m are out there? : unixporn]]"))
(hoarder:fetch "nizarmah/tintedarc"
  '(:description "An XFCE custom arc and tint2 auto-themer, voila you have yourself a nice theme"
    :tags ["arc-dark" "arc-theme" "desktop-mode" "linux" "manjaro" "theme" "xfce"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6a0cfp/xfce_my_style_of_mac_osx_for_linux/][Too Many Requests]]"))
(hoarder:fetch "SuperCuber/dotter"
  '(:description "A small dotfile manager"
    :memo "[[https://www.reddit.com/r/unixporn/comments/69wqa8/made_a_dotfile_manager_thought_youd_like_it/][Too Many Requests]]"))
(hoarder:fetch "lmatteis/dmt"
  '(:description "Decentralized Mutable Torrents reference implementation"
    :tags ["torrent"]
    :memo "[[http://www.bittorrent.org/beps/bep_0046.html#bep-39][]]"))
(hoarder:fetch "MrRio/vtop"
  '(:description "Wow such top. So stats. More better than regular top."
    :tags ["top" "monitoring" "javascript"]))
(hoarder:fetch "orthecreedence/cl-hash-util"
  '(:description "A small hash utility library for Common Lisp"
    :tags ["common_lisp" "hash_table"]))
(hoarder:fetch "daveray/dorothy"
  '(:description "Hiccup-style generation of Graphviz graphs in Clojure"
    :tags ["clojure" "hiccup" "xml" "svg"]))
(hoarder:fetch "fukuchi/quit"
  '(:description "QUIT(1): Cure your bad habit of mistyping"
    :tags ["cli" "sl"]))
(hoarder:fetch "chris-marsh/galendae"
  '(:description "A lightweight popup calendar that can be styled to match desktop/workspace themes"
    :tags ["calendar" "gtk" "popup-calendar" "workspace-themes"]))
(hoarder:fetch "kassuro/MangaScrap"
  '(:description "MangaScrap is a tool to scrap newst chapters from given mangas on mangapanda"
    :tags ["manga" "scraper"]))
(hoarder:fetch "x0rz/tweets_analyzer"
  '(:description "Tweets metadata scraper & activity analyzer"
    :tags ["analysis" "privacy" "python" "twitter"]))
(hoarder:fetch "Youpinadi/netflix-categories"
  '(:description "Netflix links to all hidden categories"
    :tags ["netflix"]))
(hoarder:fetch "yujunz/listql"
  '(:description "list query library"
    :tags ["query" "sql" "utility"]))
(hoarder:fetch "typicode/lowdb"
  '(:description ":zap: lowdb is a small local JSON database powered by lodash (supports Node, the browser and Electron)"
    :tags ["database" "electron" "json" "localstorage" "lodash" "nodejs"]))
(hoarder:fetch "vain/bevelbar"
  '(:description "X11 status bar with beveled borders"
    :tags ["status-bar" "x11"]))
(hoarder:fetch "ScriptSmith/socialreaper"
  '(:description "Social media scraping library for Facebook, Twitter, Reddit and Youtube"
    :tags ["api" "facebook" "python" "reddit" "scraping" "social-media" "twitter" "youtube"]))
(hoarder:fetch "troglobit/xplugd"
  '(:description "Monitor, keyboard, and mouse plug/unplug helper for X"
    :tags ["xorg" "monitor" "keyboard" "mouse"]))
(hoarder:fetch "Suman7495/Tzara---A-Personal-Assistant"
  '(:description "A highly customisable Virtual Personal Assistant"
    :tags ["python"]))
(hoarder:fetch "kennethreitz/blindspin"
  '(:description "It's easy to show that your command line app is active"
    :tags ["python" "braille" "spinner"]))
(hoarder:fetch "zhanglongqi/tumblr-download"
  '(:tags ["tool" "web" "tumblr" "python" "downloader"]))
(hoarder:fetch "cocrawler/cocrawler"
  '(:description "CoCrawler is a versatile web crawler built using modern tools and concurrency."
    :tags ["async-python" "crawler" "python3" "warc" "python"]))
(hoarder:fetch "kinuax/rolabesti"
  '(:description "Command-line application to manage a music collection of mp3 tracks"
    :tags ["mp3" "mutagen" "python3" "vlc" "vlc-libvlc" "vlc-player"]))
(hoarder:fetch "bryanwb/smonad"
  '(:description "Some monads for Python, partly inspired by Scala. Based on a fork of pyx's monad."
    :tags ["python" "monad"]))
(hoarder:fetch "sdispater/pastel"
  '(:description "Bring colors to your terminal"
    :tags ["cli" "python" "color"]))
(hoarder:fetch "Xonshiz/anime-dl"
  '(:description "Anime-dl is a command-line program to download anime from CrunchyRoll and Funimation."
    :tags ["anime" "anime-dl" "anime-downloader" "automation" "cfscrape" "crunchyroll" "funimation" "scraper" "scraping" "web"]))
(hoarder:fetch "Deathspike/crunchyroll.js"
  '(:description "CrunchyRoll.js is capable of downloading anime episodes from the popular CrunchyRoll streaming service. "
    :tags ["anime"]))
(hoarder:fetch "nyaadevs/nyaa"
  '(:description "The software behind Nyaa.si!"
    :tags ["nyaa"]))
(hoarder:fetch "4chenz/pantsu-plugin"
  '(:description "https://nyaa.pantsu.cat/ qbittorrent search plugin"
    :tags ["qbittorrent" "nyaa"]))
(hoarder:fetch "elendirx/web2web"
  '(:description "P2P web powered by torrents and blockchain."
    :tags ["p2p"]
    :memo "[[https://8ch.net/tech/res/743303.html#743360][/tech/ - With the demise of animu sites, we need censorship alternatives now. No more of your pie in the sky \"if only...]]"))
(hoarder:fetch "jhiesey/peercloud"
  '(:description "Serverless websites via WebTorrent"
    :memo "[[https://8ch.net/tech/res/743303.html#743360][/tech/ - With the demise of animu sites, we need censorship alternatives now. No more of your pie in the sky \"if only...]]"))
(hoarder:fetch "FoolCode/FoolFuuka"
  '(:description "FoolFuuka is a high performance imageboard software that is fully customizable. It contains a powerful administration system, extendable plugin engine, and etc. (FoolCode Package)"
    :tags ["bbs" "imageboard"]))
(hoarder:fetch "chihaya/chihaya"
  '(:description "A customizable, multi-protocol BitTorrent Tracker"
    :tags ["bittorrent" "containers" "go" "middleware" "prometheus" "quay" "tracker"]))
(hoarder:fetch "thodg/repo"
  '(:description "Source repository utilities in Common Lisp"
    :tags ["common_lisp" "repository"]))
(hoarder:fetch "git://git.sv.gnu.org/autoconf"
  '(:tags ["make" "autoconf" "gnu"]))
(hoarder:fetch "git://git.sv.gnu.org/make"
  '(:tags ["make" "gnu"]))
(hoarder:fetch "felix-starman/ex_junk"
  '(:description "Junk is a module for generating Junk data in your tests"
    :tags ["elixir" "fake" "junk" "junklet" "phoenix" "testing" "random"]))
(hoarder:fetch "google/python-fire"
  '(:description "Python Fire is a library for automatically generating command line interfaces (CLIs) from absolutely any Python object."
    :tags ["python" "cli"]))
(hoarder:fetch "msoedov/firex"
  '(:description "Firex is a library for automatically generating command line interfaces (CLIs) from elixir module"
    :tags ["cli" "cli-generators" "elixir"]))
(hoarder:fetch "NyaaPantsu/nyaa"
  '(:description "Nyaa.se replacement written in golang"
    :tags ["anime" "archive" "golang" "nyaa-replacement" "tracker"]))
(hoarder:fetch "tqdm/tqdm"
  '(:description "A fast, extensible progress bar for Python and CLI"
    :tags ["bar" "cli" "console" "eta" "gui" "meter" "parallel" "progress" "progress-bar" "progressbar" "progressmeter" "python" "rate" "terminal" "time" "utilities"]))
(hoarder:fetch "https://gitlab.com/pdfgrep/pdfgrep.git"
  '(:tags ["pdf" "grep"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6bj732/my_lesserknown_favourite_tools/][Too Many Requests]]"))
(hoarder:fetch "git://git.liw.fi/ttystatus"
  '(:tags ["cli" "progressbar"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6bj732/my_lesserknown_favourite_tools/dhnlt1f/][Too Many Requests]]"))
(hoarder:fetch "fd0/machma"
  '(:description "Easy parallel execution of commands with live feedback"
    :tags ["cli" "commands" "execution" "feedback" "go" "golang" "parallel"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6bj732/my_lesserknown_favourite_tools/dhnavli/][Too Many Requests]]"))
(hoarder:fetch "sharkdp/fd"
  '(:description "A simple, fast and user-friendly alternative to find."
    :tags ["command-line" "filesystem" "regex" "rust" "search" "tool"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6audzd/fd_a_modern_convenient_and_fast_replacement_for/][fd - a modern, convenient and fast replacement for find (my first Rust-project) : commandline]]"))
(hoarder:fetch "jarun/nnn"
  '(:description "The missing terminal file browser for X"
    :tags ["command-line" "file-browser" "terminal"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6arvdy/nnn_v11_the_missing_terminal_file_browser_for_x/][nnn v1.1 - The missing terminal file browser for X : commandline]]"))
(hoarder:fetch "Qix-/color-string"
  '(:description "Parser and generator for CSS color strings"
    :tags ["javascript" "color" "css"]))
(hoarder:fetch "irresponsible/codependence"
  '(:description "Lightweight, flexible, configuration-driven dependencies-resolved app structure"
    :tags ["clojure" "integrant"]))
(hoarder:fetch "HughPowell/railway-oriented-programming"
  '(:description "A Clojure implementation of Railway Oriented Programming (https://fsharpforfunandprofit.com/posts/recipe-part2/)"
    :tags ["clojure" "category"]))
(hoarder:fetch "mohayonao/seurat"
  '(:description ":art: JavaScript utility to generate a braille text from an image"
    :tags ["javascript" "image" "graphicsmagick" "braille"]
    :memo "[[https://boards.4chan.org/g/thread/62506355][/g/ - Found out you can set up a banner for SSH. Post mo - Technology - 4chan]]
[[https://www.imagemagick.org/Usage/quantize/#monochrome][Quantization -- IM v6 Examples]]"))
(hoarder:fetch "martinklepsch/derivatives"
  '(:description "🌱 Your companion to create derived values from a single source (atom)"
    :tags ["clojurescript" "dataflow" "reactive" "rum"]
    :memo "[[https://www.reddit.com/r/Clojure/comments/6boo9u/refrankenstein_the_deviant_fork_of_reframe/][re-frankenstein: The deviant fork of re-frame : Clojure]]"))
(hoarder:fetch "Qyriad/NyaaRedirect"
  '(:description "A Chrome extension that automatically redirects all nyaa.se links and URLs to either nyaa.pantsu.cat or nyaa.si"))
(hoarder:fetch "DistributedMemetics/DM"
  '(:description "General DM organization"))
(hoarder:fetch "NyaaPantsu/scrapers"
  '(:description "Collection of RSS scrapers written in python"
    :tags ["tracker"]))
(hoarder:fetch "dharple/detox"
  '(:description "Tames problematic filenames"
    :site "http://detox.sourceforge.net/"
    :memo "[[https://www.youtube.com/watch?v=JD7jyjV8LRU][Detox - Cleanup Filenames - Linux CLI - YouTube]]"))
(hoarder:fetch "TUSF/ip-pub"
  '(:description "InterPlanetary Publishing"
    :tags ["ipfs"]))
(hoarder:fetch "boz/cl-torrent"
  '(:description "bittorrent client in common lisp"
    :tags ["common_lisp" "torrent"]))
(hoarder:fetch "dym/closure"
  '(:description "Closure is a web browser implemented in Common Lisp."
    :tags ["comon_lisp" "browser"]))
(hoarder:fetch "simonsolnes/ls-replacement"
  '(:description "Replacement for ls that shows information that is relevant."
    :tags ["ls"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6cea30/i_created_a_replacement_for_ls_that_shows_much/][Too Many Requests]]"))
(hoarder:fetch "zombieleet/duty"
  '(:description "duty is a command line todo application written with node.js"
    :tags ["cli" "todo"]))
(hoarder:fetch "damnever/cc"
  '(:description "A Golang library for configuration management."
    :tags ["configuration-management" "golang" "library" "configuration"]))
(hoarder:fetch "borysn/dotfiles"
  '(:description ". files"
    :tags ["dotfiles" "gentoo" "gentoo-guide" "linux" "screenshot" "theme" "urxvt" "wallpaper"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6c1f98/oc_diffpy_a_script_to_help_remind_self_what_needs/][Too Many Requests]]"))
(hoarder:fetch "brentsimmons/JSONFeed"
  '(:description "The JSONFeed.org website"
    :site "https://jsonfeed.org/"
    :tags ["atom" "rss" "feed" "json" "hal" "json-ld"]
    :memo "[[https://news.ycombinator.com/item?id=14360729][JSON Feed | Hacker News]]"))
(hoarder:fetch "onodera-punpun/sponewm"
  '(:description "A fully-featured window manager written in Go."
    :tags ["golang" "wm"]))
(hoarder:fetch "QupZilla/qupzilla"
  '(:description "Cross-platform Qt web browser"
    :tags ["browser" "qtwebengine" "qt"]))
(hoarder:fetch "json-blueprint/shapecheck"
  '(:tags ["json" "schema"])) 
(hoarder:fetch "asdf-vm/asdf"
  '(:description "Extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more"
    :tags ["elixir" "erlang" "nodejs" "ruby" "version-manager"]))
(hoarder:fetch "voidlinux/void-packages"
  '(:description "The XBPS source packages collection"
    :tags ["void_linx" "linux" "package_manager"]
    :download nil))
(hoarder:fetch "pixelb/fslint"
  '(:description "Linux file system lint checker/cleaner"
    :tags ["filesystem"]))
(hoarder:fetch "leforestier/jailconf"
  '(:description "Parse and edit your FreeBSD jail.conf (jails configuration file) with python."
    :tags ["python" "freebsd" "jail"]))
(hoarder:fetch "https://gist.github.com/credmp/73fe8a327455899c891f9dfe2d96adcd.git"
  '(:tags ["opml" "rss" "org-mode"]
    :name "opml-to-org.pl"))
(hoarder:fetch "IndiscriminateCoding/clarity"
  '(:description "Functional programming library for OCaml"
    :tags ["functional-programming" "monad" "ocaml"]
    :memo "[[https://www.reddit.com/r/ocaml/comments/6coed9/more_type_classes_in_ocaml/dhxqkzc/][Too Many Requests]]"))
(hoarder:fetch "bakape/meguca"
  '(:description "High performance real-time imageboard"
    :tags ["go" "golang" "imageboard" "live" "real-time" "typescript"]))
(hoarder:fetch "bakape/hydron"
  '(:description "High performance media tagger and organizer"
    :tags ["booru" "go" "golang" "media" "organizer" "tagging"]))
(hoarder:fetch "drkhsh/slstatus"
  '(:description "slstatus is a suckless and lightweight status monitor for window managers which use WM_NAME as statusbar (e.g. DWM)."
    :tags ["c" "dwm" "minimal" "statusbar" "statusbarutil" "suckless"]))
(hoarder:fetch "aplanas/kmanga"
  '(:description "KManga site"
    :tags ["kindle" "manga" "manga-reader"]
    :site "https://kmanga.net/"))
(hoarder:fetch "dreadl0ck/zeus"
  '(:description "An Electrifying Build System"
    :tags ["automation" "build" "build-automation" "build-tool" "builder" "gnumake" "make" "makefile" "project" "scripts" "shell" "tool" "zeus"]))
(hoarder:fetch "sdwolfe32/anirip"
  '(:description "A Crunchyroll episode/subtitle ripper written in Go"
    :tags ["cli" "crunchyroll" "ffmpeg" "video"]))
(hoarder:fetch "openbsd/src"
  '(:download nil))
(hoarder:fetch "hkaj/media-server"
  '(:description "A media server configuration to run Plex, Sonarr, Radarr and Transmission in Docker"))
(hoarder:fetch "joowani/dtags"
  '(:description "Directory Tags for Lazy Programmers"
    :tags ["bash" "directories" "directory" "fish" "fish-shell" "git" "management" "parallel-processing" "productivity" "python" "python-2" "python-3" "python-3-5" "python-library" "python-script" "python2" "python3" "shell" "tagging" "zsh"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6eddpt/how_to_tag_directories_to_run_shell_command_on/][How to tag directories to run shell command on them? : commandline]]"))
(hoarder:fetch "beaston02/ChaturbateRecorder"
  '(:tags ["porn" "webcam"]
    :memo "[[https://www.reddit.com/r/DataHoarder/comments/6eixan/scripts_for_automating_the_recording_of_multiple/][Too Many Requests]]")) 
(hoarder:fetch "OrdinaryMagician/aliceinuserland"
  '(:description "Alice in Userland. A set of core utilities designed for minimalism, code cleanness and avoidance of feature creep."))
(hoarder:fetch "snowfag/chan-dl"
  '(:description "4Chan and 8chan thread image archival script made in bash"))
(hoarder:fetch "bspammer/spotify_cava_colors"
  '(:description "Generate colors for cava from the current spotify track"
    :tags ["spotify" "visualizer" "music"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6euh6x/spotify_with_automatic_color_changing_audio/][Spotify with automatic color changing audio visualizer : unixporn]]"))
(hoarder:fetch "acrisci/playerctl"
  '(:description "mpris command-line controller and library for spotify, vlc, audacious, bmp, xmms2, and others."
    :memo "[[https://www.reddit.com/r/unixporn/comments/6euh6x/spotify_with_automatic_color_changing_audio/][Spotify with automatic color changing audio visualizer : unixporn]]"))
(hoarder:fetch "thodg/facts"
  '(:description "In-memory graph database for Common Lisp"
    :memo "[[https://www.reddit.com/r/Common_Lisp/comments/69mxkr/facts_small_inmemory_graph_database_for_common/][Too Many Requests]]"))
(hoarder:fetch "eugeneia/erlangen"
  '(:description "Distributed, asychronous message passing system for Clozure Common Lisp"
    :tags ["actors" "common-lisp" "distributed" "message-passing" "supervision"]))
(hoarder:fetch "EuAndreh/cl-slug"
  '(:description "Small library to make slugs, mainly for URIs, from english and beyond."
    :tags ["common-lisp" "quicklisp" "roswell"]
    :memo "[[https://www.reddit.com/r/Common_Lisp/comments/67neph/clslug_slugify_uris_camelcase_remove_accentuation/][cl-slug: slugify URIs, CamelCase, remove accentuation and punctuation, for many languages : Common_Lisp]]"))
(hoarder:fetch "infofarmer/infofarmer.github.io"
  '(:memo "[[https://www.youtube.com/watch?v=eXgymkDNmes][BSD/Unix CLI and TUI Ecology - Andrew Pantyukhin, EuroBSDcon 2012 - YouTube]]
[[http://infofarmer.github.io/ebsdc12/ecocli.html][]]")) 
(hoarder:fetch "vain/lariza"
  '(:description "Simple WebKit2GTK+ Browser"
    :tags ["browser" "webkit" "webkit2"]))
(hoarder:fetch "akuma06/NyaaPantsu-Extension"
  '(:description "A chrome extension for Nyaa Pantsu"
    :tags ["chrome" "nyaa"]))
(hoarder:fetch "spolu/warp"
  '(:description "Secure and simple terminal sharing"
    :tags ["command-line" "sharing" "shell" "terminal" "tls"]))
(hoarder:fetch "grassmunk/Chicago95"
  '(:tags ["windows95" "xfce" "theme" "linux" "gtk"]
    :download nil)) 
(hoarder:fetch "sebastiencs/ls-icons"
  '(:description "ls command with files icons"))
(hoarder:fetch "joecannatti/soji"
  '(:description "Terminal Based Mindful Workday System"))
(hoarder:fetch "sqall01/alertR"
  '(:description "A client/server based alarm and monitoring system"
    :memo "[[https://www.reddit.com/r/HomeServer/comments/6fk4ih/selfmade_monitoring_system_alertr_xpost_rhomelab/][Self-made Monitoring System (alertR) (x-post r/homelab) : HomeServer]]"))
(hoarder:fetch "syossan27/kirimori"
  '(:description "Tool for managing vim plugin."
    :tags ["cli-command" "go" "vim-plugins"]))
(hoarder:fetch "urfave/cli"
  '(:description "A simple, fast, and fun package for building command line apps in Go"
    :tags ["cli" "golang"]))
(hoarder:fetch "jakebian/snaptile"
  '(:description "Versatile window tiling for X11 with powerful keyboard controls"
    :tags ["productivity" "x11"]))
(hoarder:fetch "girishramnani/elixir-ksuid"
  '(:description "K-Sortable Globally Unique IDs for elixir"))
(hoarder:fetch "lecram/rover"
  '(:description "simple file browser for the terminal"
    :tags ["file-browser" "file-manager" "terminal"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6g27n5/post_your_terminal_apps/][Too Many Requests]]"))
(hoarder:fetch "hannesha/GLMViz"
  '(:description "A high framerate, fully configurable OpenGL music visualizer"
    :tags ["music-visualizer" "opengl" "opengl-music-visualizer" "visualizer"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6g4q4d/ocglmviz_transparency_support/][Too Many Requests]]"))
(hoarder:fetch "annacrombie/aniview"
  '(:description "command line anime library viewer"
    :tags ["anime" "command-line" "ruby"]))
(hoarder:fetch "m45t3r/zit"
  '(:description "minimal plugin manager for ZSH"
    :tags ["zsh"]))
(hoarder:fetch "Dobbie03/dobbies-dots"
  '(:description "My Personal Config Files"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6gi3n4/openbox_dark_setup_for_a_sunday/][Too Many Requests]]"
    :download nil))
(hoarder:fetch "inconvergent/snek"
  '(:description "v1.3.x-beta-x An experimental system for writing generative systems."
    :tags ["common-lisp" "experimental" "generative" "generative-art" "lisp"]))
(hoarder:fetch "stolowski/QComicBook"
  '(:description "Viewer for comic book archives that aims at convenience and simplicity"))
(hoarder:fetch "jiaweihli/manga_downloader"
  '(:description "Cross-platform, multi-site, multi-threaded manga downloader with over 5000 distinct mangas.  Includes support for automated downloading via external .xml file and conversion for viewing on the Kindle."
    :memo "[[https://www.youtube.com/watch?v=Y3WzyVg5PwU][Manga Downloader - Linux CLI - YouTube]]"))
(hoarder:fetch "aeroxis/sultan"
  '(:description "Sultan: Command and Rule over your Shell"
    :tags ["bash" "bash-script" "cli" "command-line" "command-line-tool" "command-prompt" "compiler" "python2" "python3" "ssh" "terminal" "zsh"]
    :memo "[[https://www.reddit.com/r/onions/comments/6gtqz2/my_onion_bookmarks/][My Onion Bookmarks : onions]]"))
(hoarder:fetch "jingweno/ccat"
  '(:description "Colorizing `cat`"))
(hoarder:fetch "b4b4r07/history"
  '(:description "A CLI to provide enhanced history for your shell"
    :tags ["golang"]
    :memo "[[http://www.tellme.tokyo/entry/2017/06/13/233305][最強のヒストリ補完を作りました - tellme.tokyo]]"))
(hoarder:fetch "https://gist.github.com/e5f609defa04c06fba3b66be8b685e48.git"
  '(:name "updatejails.sh"
    :tags ["freebsd" "jail"]))
(hoarder:fetch "yjh0502/comic"
  '(:description "Minimalistic image viewer for Linux"
    :tags ["comic" "linux" "comic_viewer"]))
(hoarder:fetch "eight04/ComicCrawler"
  '(:description "An image crawler written in python."
    :tags ["cli" "crawler" "gui" "image-crawler" "python" "tkinter"]))
(hoarder:fetch "davide-romanini/comictagger"
  '(:description "A cross-platform GUI/CLI app for writing metadata to digital comics (fork)"
    :tags ["comic" "tag" "metadata"]))
(hoarder:fetch "jodal/comics"
  '(:description "comics is a web comics aggregator"
    :tags ["comics" "comics-reader" "django" "python"]))
(hoarder:fetch "pynocchio/pynocchio"
  '(:description "Pynocchio is a image viewer specialized in manga/comic reading"
    :tags ["comic" "comic-reader" "manga" "pyqt5" "python"]))
(hoarder:fetch "beville/ComicStreamer"
  '(:tags ["comic" "rest" "server"])) 
(hoarder:fetch "krytarowski/netquery"
  '(:description "netquery - the system introspection tool"
    :tags ["system" "information" "netbsd"]))
(hoarder:fetch "pch/welder"
  '(:description "🔥Set up your Linux server with plain shell scripts"))
(hoarder:fetch "zerotier/ZeroTierOne"
  '(:description "A Smart Ethernet Switch for Earth"))
(hoarder:fetch "arenanet/png2svg"
  '(:description "Command line tool for compressing a png into an svg"
    :tags ["png" "svg"]))
(hoarder:fetch "kryptco/kr"
  '(:description "kr | SSH using a key stored in Kryptonite."
    :tags ["ssh"]))
(hoarder:fetch "segmentio/ksuid"
  '(:description "K-Sortable Globally Unique IDs"
    :memo "[[https://segment.com/blog/a-brief-history-of-the-uuid/]]"))
(hoarder:fetch "conformal/spectrwm"
  '(:description "A small dynamic tiling window manager for X11."))
(hoarder:fetch "koying/SPMC"
  '(:description "fork of xbmc/kodi"
    :download nil))
(hoarder:fetch "vulkd/xround"
  '(:description "Rounded corners for Linux"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6h8e4s/oc_rounded_corners_for_linux/][{OC} Rounded corners for Linux : unixporn]]"))
(hoarder:fetch "Anshuman-Verma/awesome-anime-stream-and-download"
  '(:description "Awesome anime streaming/downloading websites list"
    :tags ["anime" "anime-fans" "anime-search" "anime-website" "awesome" "awesome-list" "links" "list" "webapps"]
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6hkozs/building_a_curated_list_for_all_anime/][Too Many Requests]]"))
(hoarder:fetch "chrisallenlane/cheat"
  '(:description "cheat allows you to create and view interactive cheatsheets on the command-line. It was designed to help remind *nix system administrators of options for commands that they use frequently, but not frequently enough to remember."
    :memo "[[https://www.reddit.com/r/commandline/comments/6hdj70/cheat_create_and_view_interactive_cheatsheets_on/][Too Many Requests]]"))
(hoarder:fetch "hmhrex/tenma"
  '(:description "Comic book server with in-browser reader"
    :tags ["comics" "comicvine" "django" "drm-free-comics" "python" "python-3"]
    :memo "[[https://www.reddit.com/r/selfhosted/comments/6hezmd/tenma_selfhosted_digital_comics_server/][Tenma - Self-hosted Digital Comics server : selfhosted]]"))
(hoarder:fetch "tenta-browser/nsnitch"
  '(:description "Find out which name servers are snitching on you."
    :memo "[[https://www.reddit.com/r/golang/comments/6hgzdq/open_source_dns_resolver_written_in_golang/][Open source DNS Resolver written in Golang: NSnitch - Find out which name servers are snitching on you. : golang]]"))
(hoarder:fetch "mickael-kerjean/nuage"
  '(:description "Manage your files in the cloud"
    :tags ["dropbox-client" "file-manager" "file-upload" "ftp-client" "google-drive" "org-mode" "sftp-client" "webapp" "webdav-client"]
    :site "https://nuage.kerjean.me/"))
(hoarder:fetch "raduwen/unite-peercast"
  '(:tags ["unite" "vim"])) 
(hoarder:fetch "cerebrux/uCareSystem"
  '(:description "An all-in-one, one click system maintenace application for Ubuntu/Debian operating systems and derivatives"
    :site "http://utappia.org/"))
(hoarder:fetch "Pizzacus/satania.moe"
  '(:description "Satania IS the BEST waifu, no really, she is, if you don't believe me, this website will convince you"
    :tags ["anime" "best" "bulli" "do" "dropout" "gabriel" "her" "not" "please" "satan" "satania" "thx" "waifu"]
    :site "http://satania.moe/"))
(hoarder:fetch "https://gitlab.com/esr/open-adventure.git"
  '(:memo "[[http://www.theregister.co.uk/2017/05/30/eric_raymond_sets_colossal_cave_adventure_free/?utm_content=55077306&utm_medium=social&utm_source=twitter][Seminal game 'Colossal Cave Adventure' released onto GitLab • The Register]]"))
(hoarder:fetch "https://gitlab.com/Isleward/isleward.git"
  '(:tags ["rogue-like"]))
(hoarder:fetch "oNaiPs/hipster-shell"
  '(:description "A unix based command line interpreter for hipsters"))
(hoarder:fetch "https://gitlab.com/ibiscybernetics/sighte.git"
  '(:tags ["browser" "webkit"]))
(hoarder:fetch "felipedaragon/sandcat"
  '(:description "An open-source, pentest and developer-oriented web browser, using the power of Lua"
    :tags ["lua" "browser"]))
(hoarder:fetch "https://gitlab.com/hoosieree/chrome-extension-obscura.git")
(hoarder:fetch "https://gitlab.com/xuhaiyang1234/AAK-Cont.git"
  '(:tags ["adblock"]))
(hoarder:fetch "jspenguin2017/uBlockProtector"
  '(:tags ["adblock"])) 
(hoarder:fetch "qntm/base65536"
  '(:description "Unicode's answer to Base64"
    :tags ["base64" "unicode" "hash"]))
(hoarder:fetch "tj/mmake"
  '(:description "Modern Make "
    :tags ["build-system" "build-tool" "make" "makefile" "mmake" "task-manager" "task-runner"]))
(hoarder:fetch "rgbkrk/covfefe"
  '(:description "covfefe"
    :tags ["constant" "despite" "negative" "press" "the"]))
(hoarder:fetch "sindresorhus/electron-store"
  '(:description "Simple data persistence for your Electron app or module - Save and load user preferences, app state, cache, etc"))
(hoarder:fetch "evilhero/mylar"
  '(:description "An automated Comic Book downloader (cbr/cbz) for use with SABnzbd, NZBGet and torrents"
    :tags ["comic" "freenas"]))
(hoarder:fetch "ejurgensen/forked-daapd"
  '(:description "Linux/FreeBSD DAAP (iTunes) and MPD media server with support for AirPlay devices (multiroom), Apple Remote (and compatibles), Chromecast, Spotify and internet radio."
    :tags ["airplay" "apple-remote" "c" "chromecast-audio" "daap" "internet-radio" "itunes" "mpd" "spotify"]))
(hoarder:fetch "neeasade/txth"
  '(:description "Return the pixel height of the given strings for the given font"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6hjuzc/oc_txth_return_pixel_height_of_strings_for_a/][{oc} txth - Return pixel height of strings for a given font : unixporn]]"))
(hoarder:fetch "defndaines/meiro"
  '(:description "Maze generation code, inspired by Mazes for Programmers."
    :tags ["clojure" "maze" "maze-algorithms"]
    :memo "[[https://www.reddit.com/r/Clojure/comments/6hy8hh/maze_generation_code_inspired_by_mazes_for/][Maze generation code, inspired by Mazes for Programmers : Clojure]]"))
(hoarder:fetch "jacekjursza/Torznab-Python-Indexer"
  '(:description "Torznab indexer written in python/django. "
    :tags ["sonarr"]
    :memo "[[https://github.com/Sonarr/Sonarr/wiki/Implementing-a-Torznab-indexer][Implementing a Torznab indexer · Sonarr/Sonarr Wiki · GitHub]]"))
(hoarder:fetch "KiLMaN/T411-Torznab"
  '(:description "A NodeJs proxy to download from T411 in Sonarr"
    :memo "[[https://github.com/Sonarr/Sonarr/wiki/Implementing-a-Torznab-indexer][Implementing a Torznab indexer · Sonarr/Sonarr Wiki · GitHub]]"))
(hoarder:fetch "chiru-no/cloveros"
  '(:description "CloverOS GNU/Linux"
    :download nil))
(hoarder:fetch "git://git.netsurf-browser.org/netsurf.git"
  '(:tags ["browser"]))
(hoarder:fetch "https://git.teknik.io/gyroninja/netrunner"
  '(:tags ["browser" "4chan"]
    :type :git
    :memo "https://github.com/5yph3r/Netrunner
[[https://boards.4chan.org/g/thread/60965920#p60965920][/g/ - Netrunner - Technology - 4chan]]
[[https://boards.4chan.org/g/thread/60974102][/g/ - Netrunner - Technology - 4chan]]"))
(hoarder:fetch "https://gitgud.io/odilitime/netrunner.git")
(hoarder:fetch "uprootlabs/gngr"
  '(:description "a cross-platform browser focussed on privacy."
    :tags ["browser" "css" "html" "javascript" "privacy" "web"]))
(hoarder:fetch "lotz84/haskell"
  '(:description "Haskell 俯瞰まとめ"
    :tags ["awesome" "haskell"]))
(hoarder:fetch "https://gitlab.com/Primokorn/FLOSS_Android_apps.git"
  '(:tags ["floss" "android"]))
(hoarder:fetch "alexanderepstein/bsupdate"
  '(:description "A drop in bash script that can be added to any bash application/CLI to automate updating"
    :tags ["automatic" "automation" "bash" "linux" "osx" "update"]))
(hoarder:fetch "NyaaPantsu/NyaaPantsu"
  '(:description "NyaaPantsu mobile app in react-native"))
(hoarder:fetch "https://gitlab.com/vyuh/matrix-and-determinant.scm"
  '(:type :git))
(hoarder:fetch "https://bitbucket.org/Stonepaw/library-organizer"
  '(:type :hg
    :tags ["comicrack" "comic"]
    :memo "[[http://comicrack.cyolito.com/forum/13-scripts/11603-library-organizer-version-2111-september-25-2014?limitstart=0][ComicRack User Forum: Library Organizer (Version 2.1.11) (September 25, 2014) (1/72)]]
[[https://www.reddit.com/r/DataHoarder/comments/2vlkix/comic_organizing/][Too Many Requests]]
"))
(hoarder:fetch "cbanack/comic-vine-scraper"
  '(:description "An add-on script for ComicRack that lets you copy details from Comic Vine into your comic books."
    :memo "[[http://comicrack.cyolito.com/forum/32-news-and-announcements/29196-comic-vine-scraper-1053-55][ComicRack User Forum: Comic Vine Scraper 1.0.53-58 (1/20)]]
https://www.reddit.com/r/DataHoarder/comments/2vlkix/comic_organizing/ " ))
(hoarder:fetch "fake-name/MangaCMS"
  '(:description "System for automatic Manga management and retreival."
    :memo "https://www.reddit.com/r/DataHoarder/comments/2vlkix/comic_organizing/"))
(hoarder:fetch "xchewtoyx/calibre-comicvine"
  '(:description "Comicvine calibre metadata source for comic-books and Graphic Novels"
    :tags ["calibre"]))
(hoarder:fetch "https://git.code.sf.net/p/mcomix/git"
  '(:name "mcomix-git"))
(hoarder:fetch "https://git.code.sf.net/p/bdreader/code"
  '(:name "bdreader-code"))
(hoarder:fetch "Xonshiz/comic-dl"
  '(:description "Comic-dl is a command line tool to download manga and comics from various comic and manga sites."
    :tags ["automation" "comics" "debian" "manga" "phantomjs" "python-script" "python-support" "scraping" "scrapper" "scrapping" "web" "youtube-dl"]))
(hoarder:fetch "JaxonSkye/chan"
  '(:description "degeneracy"
    :tags ["random"]))
(hoarder:fetch "randomn4me/dotfiles"
  '(:description "bspwm, i3, bash, dunst, mutt, ncmpcpp ... dots"
    :tags ["bspwm" "config" "rice" "wmutils" "sxhkd"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6ivohg/cwm_harder_better_faster_stronger/][{CWM} harder, better, faster, stronger : unixporn]]"))
(hoarder:fetch "rvirding/flavors"
  '(:description "LFE Flavor package"
    :tags ["lfe" "erlang"]
    :memo "[[https://www.youtube.com/watch?v=AcehOqbwhPk&t=1749s][Lisp Machine Flavors for LFE implementing objects on Erlang OTP - Robert Virding - YouTube]]"))
(hoarder:fetch "xsawyerx/pakket"
  '(:description "An Unopinionated Meta-Packaging System"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=aiNRbQKX9iU][Sawyer X - \"Pakket - An Unopinionated Meta-Packaging System\" - YouTube]]"))
(hoarder:fetch "exodist/Import-Box"
  '(:description "Box up imports into an object or unified function."
    :tags ["perl"]))
(hoarder:fetch "ston3o/netclix"
  '(:description "A simple cli tool to get movie streaming link."
    :tags ["cli" "imdb" "piracy" "streaming" "warez"]
    :memo "[[https://www.reddit.com/r/Piracy/comments/6iv9vj/a_simple_cli_tool_to_get_movie_streaming_link/][Too Many Requests]]"))
(hoarder:fetch "stoneo/netclix"
  '(:description "A simple cli tool to get movie streaming link."
    :tags ["cli" "imdb" "piracy" "streaming" "warez"]
    :memo "[[https://www.reddit.com/r/Piracy/comments/6iv9vj/a_simple_cli_tool_to_get_movie_streaming_link/][Too Many Requests]]"))
(hoarder:fetch "openstack-dev/bashate"
  '(:description "A pep8 equivalent for bash scripts"))
(hoarder:fetch "mcandre/flcl"
  '(:description "what if UNIX find had -charset utf-8... wouldn't that be cool?"))
(hoarder:fetch "rlue/spore"
  '(:description "A lightweight dotfile management solution"
    :memo "[[https://www.reddit.com/r/ruby/comments/6jbpbl/i_wrote_some_scripts_for_managing_dotfiles/][Too Many Requests]]"))
(hoarder:fetch "git://g.blicky.net/ncdu.git"
  '(:tags ["du" "filesystem"]))
(hoarder:fetch "git://git.liw.fi/cachedir"
  '(:tags ["cachedir" "cache"]
    :site "https://liw.fi/cachedir/"
    :memo "[[http://www.bford.info/cachedir/][Cache Directory Tagging]]"))
(hoarder:fetch "mkeeter/ao"
  '(:description "Homoiconic CAD package"
    :tags ["scheme"]))
(hoarder:fetch "Vincit/venia"
  '(:description "Clojure(Script) graphql query generation"
    :tags ["clojure" "clojurescript" "graphql"]))
(hoarder:fetch "dlrobertson/capsicum-rs"
  '(:description "Rust bindings for the FreeBSD capsicum framework"
    :tags ["capsicum" "freebsd" "rust"]))
(hoarder:fetch "QingWei-Li/docsify"
  '(:description "🃏 A magical documentation site generator."
    :tags ["doc" "docs" "docsify" "documentation" "documentation-tool" "github-pages" "markdown" "vue"]))
(hoarder:fetch "monero-project/kovri"
  '(:description "The Kovri I2P Router Project"
    :tags ["i2p" "router"]))
(hoarder:fetch "neiesc/awesome-minimalist"
  '(:description "A list of awesome minimalist frameworks (simple and lightweight)."
    :tags ["awesome-list" "micro-framework" "minimalist-framework"]))
(hoarder:fetch "nvllsvm/Audinaut"
  '(:description "A Libresonic client for Android."
    :tags ["android" "libresonic"]))
(hoarder:fetch "voice-statistics/voice-statistics.github.com"
  '(:description "page"
    :site "https://voice-statistics.github.com"
    :tags ["voice_actress"]
    :download nil))
(hoarder:fetch "london-el/london-el.github.io"
  '(:description "london.el home page"
    :site "https://london-el.github.io/"
    :tags ["emacs"]))
(hoarder:fetch "MilesCranmer/vim-stream"
  '(:description "vims - use full-blown vim commands in place of sed"
    :tags ["awk" "ex" "regex" "sed" "stdin" "text-processing" "unix-command" "unix-pipes" "vim" "vim-stream" "vims"]))
(hoarder:fetch "gokcehan/lf"
  '(:description "A terminal file manager"
    :tags ["file-manager" "terminal" "golang"]))
(hoarder:fetch "lspector/gp"
  '(:description "Clojure code for a simple genetic programming system, for demonstration purposes."
    :tags ["clojure" "genetic_programming"]
    :memo "[[https://www.youtube.com/watch?v=HWMJdO4klIE][Genetic Programming in Clojure - Lee Spector - YouTube]]"))
(hoarder:fetch "byulparan/cl-collider"
  '(:tags ["supercollider" "common_lisp"]
    :memo "[[https://www.youtube.com/watch?v=xzTH_ZqaFKI][LiveCoding in CommonLisp. - YouTube]]")) 
(hoarder:fetch "defaultxr/cl-patterns"
  '(:description "SuperCollider-inspired patterns library for Common Lisp."
    :tags ["lisp" "music" "music-composition" "patterns" "sequencer" "supercollider" "synth"]))
(hoarder:fetch "koturn/vim-podcast"
  '(:description "Podcast player for Vim"
    :tags ["vim" "podcast"]))
(hoarder:fetch "slashsBin/styleguide-git-commit-message"
  '(:description "/sBin/StyleGuide/Git/CommitMessage"
    :tags ["emoji" "emojify" "gitmoji" "style-guide" "styleguide"]))
(hoarder:fetch "jakeasmith/commit"
  '(:tags ["git" "commit"])) 
(hoarder:fetch "openist/dotfiles"
  '(:description "Personal dotfiles orchestrated with GNU Stow and Ansible"
    :tags ["dotfiles" "emacs" "tmux" "tmux-configs" "zsh" "zsh-configuration"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6kjuvz/putty_dotfiles_bankruptcy/][Too Many Requests]]"))
(hoarder:fetch "RasPlex/OpenPHT"
  '(:description "OpenPHT is a community driven fork of Plex Home Theater"
    :tags ["plex" "xbmc"]
    :download nil))
(hoarder:fetch "XProger/OpenLara"
  '(:description "Classic Tomb Raider open-source engine"
    :tags ["game" "gamedev" "graphics" "opengl" "openlara" "opensource" "shaders" "tombraider" "webgl"]))
(hoarder:fetch "https://gitlab.com/eql/EQL5-Android.git"
  '(:tags ["android" "qt" "ecl" "common_lisp"]
    :memo "[[https://common-lisp.net/project/ecl/posts/Lisp-ECL-and-QML-Qt5-on-Android.html][Embeddable Common-Lisp]]"))
(hoarder:fetch "adapta-project/adapta-gtk-theme"
  '(:description "An adaptive Gtk+ theme based on Material Design Guidelines"
    :tags ["adapta" "gtk" "theme"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6scstc/gnome_corner/][Too Many Requests]]"))
(hoarder:fetch "alexwaibel/arc-grey-flatabulous-theme"
  '(:description "A flat theme with transparent elements, greyscale colors, and OSX style window buttons."))
(hoarder:fetch "qtpm/qtpm"
  '(:description "C++ Package Manager for Qt"
    :tags ["qt" "c++" "package_manager"]
    :memo "[[https://www.slideshare.net/shibukawa/golang-tokyo-7-qtpm][Golang tokyo #7 qtpm]]"))
(hoarder:fetch "sverweij/dependency-cruiser"
  '(:description "Validate and visualize dependencies. With your rules. JavaScript, TypeScript, CoffeeScript. ES6, CommonJS, AMD."
    :tags ["circular-dependencies" "coffeescript" "dependency-analysis" "dependency-cruiser" "dependency-graph" "javascript" "static-analysis" "typescript"]))
(hoarder:fetch "jquense/yup"
  '(:description "Dead simple Object schema validation"
    :tags ["javascript" "validation"]))
(hoarder:fetch "kentaro/perl-project-libs"
  '(:description "Include modules libs automatically"
    :tags ["perl"]
    :memo "[[http://blog.kentarok.org/entry/20101123/1290530162][いい感じに@INCにあれこれ追加するProject::Libsというのを書いた - Kentaro Kuribayashi's blog]]"))
(hoarder:fetch "sago35/Getopt-Kingpin"
  '(:description "perl command line and flag parser (like golang kingpin)"
    :tags ["cli" "perl" "getopt"]))
(hoarder:fetch "miyagawa/Carmel"
  '(:description "CPAN Artifact Repository Manager"
    :tags ["perl"]))
(hoarder:fetch "perl-carton/carton"
  '(:description "Bundler or pip freeze for Perl"
    :tags ["perl" "bundlr"]))
(hoarder:fetch "mopemope/clj-crawler"
  '(:description "2ch crawler written in Clojure."
    :tags ["clojure" "2ch" "crawler"]))
(hoarder:fetch "jdomingu/GameOfLifeLisp"
  '(:description "A very simple command line implementation of Conway's Game of Life."
    :tags ["common_lisp"]))
(hoarder:fetch "icons8/titanic"
  '(:description "A set of animated icons + code to insert them into the webpages"
    :tags ["animated-icons" "icons"]))
(hoarder:fetch "bitemyapp/herms"
  '(:description "A Haskell-based manager for delicious recipes"
    :memo "[[https://www.youtube.com/watch?v=4kbcPlYRYOs&feature=youtu.be][Fixing up the Haskell Recipe Manager - YouTube]]"
    :tags ["haskell" "recipe"]))
(hoarder:fetch "rcmdnk/stow-get"
  '(:description " Package manager with stow."
    :tags ["stow"]))
(hoarder:fetch "sotayamashita/awesome-css"
  '(:description ":thumbsup: Awesome - A curated contents of amazing CSS Ever :)"
    :tags ["awesome" "awesome-list" "css" "list"]))
(hoarder:fetch "Yayaka/Yayaka"
  '(:description "Yayaka Protocol is a protocol for highly distributed social blogging."
    :tags ["sns" "mastodon" "twitter" "gnu_social"]))
(hoarder:fetch "yoursnetwork/yours-core"
  '(:description "Client-side key and content management for Yours."
    :memo "[[https://www.youtube.com/watch?v=NjMIeio_qfY][Datt: The next step in social networks? - YouTube]]"
    :tags ["p2p"]))
(hoarder:fetch "vlovgr/ciris"
  '(:description "Lightweight, extensible, and validated configuration loading in Scala"
    :memo "[[https://vlovgr.github.io/refined-types/#22][Refined Types for Validated Configurations]]
[[https://www.youtube.com/watch?v=C3ciegxMAqA][Refined types for validated configurations – Viktor Lövgren - YouTube]]"
    :tags ["scala" "configuration"]))
(hoarder:fetch "occivink/mpv-scripts"
  '(:description "Various scripts for mpv"
    :tags ["lua" "mpv" "script"]))
(hoarder:fetch "https://gist.github.com/Zehkul/25ea7ae77b30af959be0.git"
  '(:tags ["mpv" "video" "conversion"]))
(hoarder:fetch "tc39/proposal-pattern-matching"
  '(:description "Pattern matching syntax for ECMAScript"
    :tags ["javascript" "pattern_matching"]))
(hoarder:fetch "googlei18n/noto-fonts-alpha"
  '(:description "Alpha versions of Noto fonts"
    :download nil))
(hoarder:fetch "kajeagentspi/Datahoarder"
  '(:description "Scripts for grabbing files of the Internet"
    :memo "[[https://www.reddit.com/r/opendirectories/comments/6mdab1/i_wrote_a_script_that_will_grab_the_links_of_all/][Too Many Requests]]"))
(hoarder:fetch "Hexworks/zircon"
  '(:description "Zircon is a terminal emulator which targets multiple GUI platforms and designed specifically for game developers."
    :tags ["game-development" "gui" "java" "jvm" "kotlin" "swing" "terminal-emulators"]
    :memo "[[https://www.reddit.com/r/roguelikedev/comments/6mad3r/zircon_a_terminal_emulator_for_game_developers_is/][Too Many Requests]]"))
(hoarder:fetch "pratikborsadiya/vali-admin"
  '(:description "A modular and easy to customize admin theme built using Bootstrap, SASS and PugJs."
    :tags ["admin" "admin-dashboard" "bootstrap" "dashboards" "template" "theme"]))
(hoarder:fetch "coryo/ComicReader.bundle"
  '(:description "Plex Media Server channel for comic archives."
    :tags ["plex" "comic"]
    :memo "[[https://forums.plex.tv/discussion/216363/rel-comicreader-read-comic-archives-with-plex-cbz-cbr-cb7][{REL} ComicReader - Read comic archives with Plex. (CBZ, CBR, CB7) — Plex Forums]]
[[https://www.reddit.com/r/PleX/comments/6mbr7k/has_anyone_made_a_comicmanga_add_on_for_plex/][Too Many Requests]]"))
(hoarder:fetch "aviaviavi/confetti"
  '(:description "A simple configuration file swapping tool"
    :tags ["haskell" "configuration"]
    :memo "[[https://www.reddit.com/r/haskell/comments/6mb98i/confetti_a_simple_config_file_swapping_tool_built/][Too Many Requests]]"))
(hoarder:fetch "DozyDolphin/Worksets"
  '(:description "Worksets is a GUI application that helps you to quickly launch and arrange multiple applications in your desktop environment to support a specific workflow. Built for Unity 7 (R.I.P) and X11. Licensed under the GNU General Public License v3 or later. "
    :memo "[[https://www.reddit.com/r/linux/comments/6mcxyt/dozydolphinworksets_a_gui_application_that_helps/][Too Many Requests]]"))
(hoarder:fetch "svbnet/Athame"
  '(:description "An extensible music download tool written in C#"
    :tags ["c-sharp" "c-sharp-6" "music" "winforms"]
    :memo "[[https://www.reddit.com/r/Piracy/comments/6mdysw/athame_a_streaming_service_downloader_for_tidal/][Too Many Requests]]"))
(hoarder:fetch "ardagnir/athame"
  '(:description "Full vim for your shell (bash, zsh, gdb, python, etc)"
    :tags ["readline" "vim-mode" "zsh"]))
(hoarder:fetch "ameboide/webcomic_reader"
  '(:description "Webcomic Reader userscript at http://userscripts.org/scripts/show/59842"
    :memo "[[https://www.reddit.com/r/SurfaceLinux/comments/323obx/reading_comics_on_the_surface/][Too Many Requests]]"))
(hoarder:fetch "koreader/koreader"
  '(:description "An ebook reader application supporting PDF, DjVu, EPUB, FB2 and many more formats, running on Kindle, Kobo, PocketBook, Ubuntu Touch and Android devices"
    :tags ["cbz" "djvu" "djvu-reflow" "ebook" "ebook-reader" "eink" "epub" "ereader" "fb2" "kindle" "kobo" "lua" "luajit" "opds" "pdf" "pdf-reflow" "pocketbook" "reader" "reflow" "ubuntu-touch"]
    :memo "[[https://en.wikipedia.org/wiki/OPDS#cite_note-11][OPDS - Wikipedia]]
[[https://www.reddit.com/r/linux/comments/3uoogx/digital_comics_library_software_recommendations/][Too Many Requests]]"))
(hoarder:fetch "seblucas/cops"
  '(:description "Calibre OPDS (and HTML) PHP Server : web-based light alternative to Calibre content server / Calibre2OPDS to serve ebooks (epub, mobi, pdf, ...)"
    :tags ["ebook" "ebook-manager" "eink" "opds" "php"]
    :memo "[[https://en.wikipedia.org/wiki/OPDS#cite_note-11][OPDS - Wikipedia]]
[[https://www.reddit.com/r/linux/comments/3uoogx/digital_comics_library_software_recommendations/][Too Many Requests]]"))
(hoarder:fetch "dmulholland/ironclad"
  '(:description "A command line password manager."))
(hoarder:fetch "tebelorg/TagUI"
  '(:description "General purpose tool for automating web interactions"
    :tags ["automation" "casperjs" "chrome" "chrome-extension" "headless-chrome"]))
(hoarder:fetch "evrim/core-server"
  '(:description "[Core-serveR] - A Common Lisp Application Server"))
(hoarder:fetch "greglook/merkle-db"
  '(:description "Exploring merkle-tree based data storage."
    :tags ["clojure" "merkledb"]))
(hoarder:fetch "MaxArt2501/share-this"
  '(:description "Medium-like text selection sharing without dependencies"
    :tags ["medium" "popover" "selection" "sharing"]))
(hoarder:fetch "as-capabl/armageddon"
  '(:description "GUI mastodon client written in Haskell"
    :tags ["mastodon" "haskell"]))
(hoarder:fetch "marak/Faker.js"
  '(:description "generate massive amounts of fake data in Node.js and the browser"
    :tags ["fake" "fake-content" "fake-data" "faker" "faker-generator" "javascript" "mocking" "mocks"]))
(hoarder:fetch "athityakumar/colorls"
  '(:description "A Ruby gem that beautifies the terminal's ls command, with color and font-awesome icons. :tada:"
    :tags ["color" "icons" "ls" "ruby" "terminal"]))
(hoarder:fetch "rumesh986/comicconvert"
  '(:description "comicconvert is a simple script that converts any cbr or cbz files to an easy to read pdf"
    :tags ["comic"]))
(hoarder:fetch "maurobaraldi/cbr2pdf"
  '(:description "Conevert .cbr (Comic Book Reader) files to .pdf files"
    :tags ["comic"]))
(hoarder:fetch "gen2brain/comic-utils"
  '(:description "Comic book archive utils"
    :tags ["comic"]
    :memo "[[https://tecnocode.co.uk/2013/10/21/writing-a-gnome-thumbnailer/][Writing a GNOME thumbnailer — drboblog]]
[[https://forums.fedoraforum.org/showthread.php?t=313107][CBR (Comic Book RAR Archive) thumbnailer? - FedoraForum.org]]"))
(hoarder:fetch "mzyy94/RictyDiminished-for-Powerline"
  '(:description "Ricty Diminished with Powerline patched --- fonts for programming"
    :tags ["powerline" "font"]
    :download nil))
(hoarder:fetch "Swirrl/grafter"
  '(:description "Linked Data & RDF Manufacturing Tools in Clojure"
    :tags ["clojure" "data" "etl" "grafter" "linked-data" "rdf" "semantic-web"]))
(hoarder:fetch "analyticalmonk/awesome-neuroscience"
  '(:description "A curated list of awesome neuroscience libraries, software and any content related to the domain."
    :tags ["awesome" "awesome-list" "brain" "intelligence" "list" "matlab" "mooc" "neuroscience" "python"]))
(hoarder:fetch "vadimdemedes/ink"
  '(:description "🌈 React for CLIs"
    :tags ["react" "node" "cli"]))
(hoarder:fetch "zkat/npx"
  '(:description "execute npm package binaries"
    :tags ["cli" "npm" "package-manager"]
    :memo "[[https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b][Introducing npx: an npm package runner – Kat Marchán – Medium]]"))
(hoarder:fetch "schollz/timetomakefood"
  '(:description "Recursive recipe cookbook to prescribe recipes from their core components :book: :hamburger:"
    :memo "[[https://timetomakefood.com/find][Find a recipe by ingredients]]"))
(hoarder:fetch "sabotage-linux/sabotage"
  '(:description "a radical and experimental distribution based on musl libc and busybox"
    :memo "[[http://sabotage.tech/][Sabotage - the hardcore let's be oldschool UNIX experience]]
[[https://www.reddit.com/r/unixporn/comments/6mrlde/lxde_busybox_musl_rice/][{lxde} busybox + musl rice : unixporn]]
[[https://github.com/sabotage-linux/sabotage/blob/master/KEEP/bin/butch][sabotage/butch at master · sabotage-linux/sabotage · GitHub]]"))
(hoarder:fetch "sabotage-linux/butch"
  '(:description "old C version of package and build manager for sabotage linux, current version is written in shell/awk and can be found in KEEP/bin in sabotage-linux."))
(hoarder:fetch "nik-garmash/works-for-me"
  '(:description "Collection of software setups"
    :tags ["javascript" "lexer" "parser" "renderer" "tokenizer"]
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6mnk1w/works_for_me_share_and_discover_cool_setups/][Too Many Requests]]"))
(hoarder:fetch "jsalzbergedu/.stumpwm.d"
  '(:description "My stumpwm config"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6mwtia/stumpwm_this_window_manager_is_a_joy_to_use/][Too Many Requests]]"
    :dependencies "jsalzbergedu/.emacs.d"))
(hoarder:fetch "walmik/scribbletune"
  '(:description "Generate musical patterns with JavaScript and export as MIDI files using Node.js!"
    :tags ["node" "edm" "music" "midi"]
    :memo "[[https://www.youtube.com/watch?v=dIiwFzFvsmw][Using Node.js To Create Electronic Dance Music - YouTube]]"))
(hoarder:fetch "s3ththompson/new-work"
  '(:description "✨ Discover when artists post new work"))
(hoarder:fetch "cespare/reflex"
  '(:description "Run a command when files change"))
(hoarder:fetch "ryosuke-endo/girltter"
  '(:site "http://girltter.com/"
    :memo "[[https://yatteiki.fm/episode/24][24. やっていきチャンネル | yatteiki.fm]]")) 
(hoarder:fetch "kami-zh/repost"
  '(:description "An open source software to communicate with your team members through posting daily reports."
    :tags ["draft-js" "rails" "react" "redux"]
    :memo "[[https://medium.com/@kami_zh/introducing-repost-24e1a84efc55][日報共有アプリケーションをOSSとして開発している話 – kami – Medium]]"))
(hoarder:fetch "jozzez1/miscConfig"
  '(:description "Configuration for my systems ... sort of backup ..."
    :memo "[[https://github.com/jozzez1/miscConfig/blob/master/FreeBSD/etc/src.conf][miscConfig/src.conf at master · jozzez1/miscConfig · GitHub]]"
    :tags ["freebsd"]))
(hoarder:fetch "altsrc-io/Jest"
  '(:description "A ReST api for creating and managing FreeBSD jails written in Go"
    :tags ["freebsd" "golang" "rest-api"]))
(hoarder:fetch "binarymax/bashfill"
  '(:description "art for your terminal"))
(hoarder:fetch "greshake/i3status-rust"
  '(:description "Very resourcefriendly and feature-rich replacement for i3status, written in pure Rust"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6n2a0r/oci3_i_made_a_proper_i3status_replacement_in_rust/][{OC}{i3} I made a proper i3status replacement in Rust : unixporn]]"))
(hoarder:fetch "tamamu/darkmatter"
  '(:description "The notebook-style Common Lisp environment"
    :tags ["common-lisp" "notebook" "webapp"]
    :memo "[[https://medium.com/@cddadr/darkmatter-the-notebook-style-common-lisp-environment-d6cff805f22e][Darkmatter — The notebook-style Common Lisp Environment]]"))
(hoarder:fetch "jjjake/internetarchive"
  '(:description "A Python and Command-Line Interface to Archive.org"
    :memo "[[https://www.youtube.com/watch?v=t77zCv2I8eQ&t=0s][internetarchive - Search and Download from Archive.org - Linux CLI - YouTube]]"))
(hoarder:fetch "gedsic/tumbdl"
  '(:description "Tumblr image downloader and archiver"
    :memo "[[https://www.reddit.com/r/emacs/comments/6n5lde/hi_i_have_a_question_about_using_emacs_as_a_media/dk7h5nq/][Too Many Requests]]"))
(hoarder:fetch "danpla/pindl"
  '(:description "Pinterest board downloader"
    :memo "[[https://www.reddit.com/r/emacs/comments/6n5lde/hi_i_have_a_question_about_using_emacs_as_a_media/dk7h5nq/][Too Many Requests]]"))
(hoarder:fetch "https://anongit.kde.org/tellico.git"
  '(:download nil
    :site "http://tellico-project.org/"
    :memo "[[https://www.reddit.com/r/emacs/comments/6n5lde/hi_i_have_a_question_about_using_emacs_as_a_media/dk7h5nq/][Too Many Requests]]"))
(hoarder:fetch "beetbox/beets"
  '(:description "music library manager and MusicBrainz tagger"
    :tags ["cli" "music" "music-library" "musicbrainz" "python"]
    :site "http://beets.io/"
    :memo "[[https://www.reddit.com/r/emacs/comments/6n5lde/hi_i_have_a_question_about_using_emacs_as_a_media/dk7h5nq/][Too Many Requests]]"))
(hoarder:fetch "git://anonscm.debian.org/surfraw/surfraw.git"
  '(:tags ["browser" "bookmark"]
    :depth nil))
(hoarder:fetch "http://git.suckless.org/tabbed")
(hoarder:fetch "sonatard/ghs"
  '(:description "'ghs' is a command-line utility for searching Github repository ."))
(hoarder:fetch "MuoTK/design") 
(hoarder:fetch "windchime/cl-spasm"
  '(:description "A Common Lisp port of Hiccup, Clojure's HTML-building, vector- and map-based library"
    :tags ["common_lisp" "clojure" "hiccup" "html"]))
(hoarder:fetch "alexanderepstein/Bash-Snippets"
  '(:description "A collection of small bash scripts for heavy terminal users"
    :tags ["backup" "bash" "cheatsheet" "currency-converter" "encryption" "movies" "qrencode" "recommendation-engine" "stock-prices" "url-shortner" "weather" "youtube-player"]))
(hoarder:fetch "skywind3000/quickmenu.vim"
  '(:description "A nice customizable popup menu for vim"
    :tags ["vim"]))
(hoarder:fetch "beetbox/beets"
  '(:description "music library manager and MusicBrainz tagger"
    :tags ["cli" "music" "music-library" "musicbrainz" "python"]))
(hoarder:fetch "domm/lib-projectroot"
  '(:description "easier loading of local libs"
    :tags ["perl"]))
(hoarder:fetch "violentmonkey/violentmonkey"
  '(:description "Violentmonkey provides userscripts support for browsers. It works on browsers with WebExtensions support."
    :tags ["browser" "javascript" "firefox"]))
(hoarder:fetch "https://gitlab.com/hakphar/oxo-postwriter.git"
  '(:tags ["forum" "oxo"]))
(hoarder:fetch "kyukyunyorituryo/FixedEpub3JS"
  '(:description "固定レイアウトのEPUB３を作成するJavaScript"
    :tags ["epub"]
    :memo "[[http://99nyorituryo.hatenablog.com/entry/2017/07/15/224814][EPUB３の漫画向けkindleやibooksのメタデータ設定 - KDP(電子出版)のメモ　急急如律令]]
[[http://www.digital-comic.jp/press_release_DCA_EPUB3.pdf]]"))
(hoarder:fetch "javierarce/epub-boilerplate"
  '(:description "A simple template to help you create ePub-formatted books."))
(hoarder:fetch "https://gitlab.com/Zettai-Nikoru-Man/GijiNikoru.git"
  '(:tags ["chrome" "niconico"]))
(hoarder:fetch "mmontone/duologue"
  '(:description "High level user interaction library for Common Lisp"))
(hoarder:fetch "project-fifo/r-vmadm"
  '(:description "vmadm for freebsd jails"
    :tags ["freebsd" "freebsd-jail-manager" "freebsd-jails" "jails" "solaris"]))
(hoarder:fetch "JAremko/alpine-vim"
  '(:description "\"dockerized\" Vim "
    :tags ["alpine-linux" "bundle" "docker" "docker-image" "dockerfile" "editor" "vim" "vimrc"]))
(hoarder:fetch "kumarshantanu/lein-localrepo"
  '(:description "Work with local Maven repository"
    :tags ["clojure" "leiningen"]))
(hoarder:fetch "ryoppy/cool-peco"
  '(:description "peco utils. 便利なpecoを集約したい。"))
(hoarder:fetch "rastapasta/mapscii"
  '(:description "🗺  MapSCII is a Braille & ASCII map renderer for your console - enter => telnet mapscii.me <= on Mac and Linux, connect with PuTTY if you're using Windows."
    :tags ["ascii-art" "braille" "console" "console-application" "map" "openstreetmap" "vector-tiles"]))
(hoarder:fetch "DiegoRBaquero/PeerFast"
  '(:description "⚡️ P2P Fast.com Clone"
    :tags ["internet" "p2p" "peer-to-peer" "speedtest" "webtorrent"]
    :site "https://diegorbaquero.github.io/PeerFast/"))
(hoarder:fetch "ta2gch/yomu"
  '(:description "英和辞書付きPDF閲覧ソフト"
    :tags ["dictionary" "electron" "electron-app" "javascript" "pdf" "pdfjs"]))
(hoarder:fetch "kujirahand/EJDict"
  '(:description "English-Japanese Dictionary data"
    :tags ["english" "japanese" "dictionary"]))
(hoarder:fetch "https://gist.github.com/niamtokik/fe9793c07276dc7638af5358e320e5ec.git"
  '(:tags ["freebsd" "make" "jail"]
    :memo "http://aegis.sourceforge.net/auug97.pdf"))
(hoarder:fetch "tedivm/jsonsmash"
  '(:description "a shell for browsing json files"
    :tags ["json" "shell"  "browser" "cli"]))
(hoarder:fetch "https://gitlab.com/bob.denver.co/cl-ksuid.git"
  '(:tags ["common_lisp" "ksuid" "uuid"]))
(hoarder:fetch "dvjones89/sheldon"
  '(:description "Command Line Tool and Ruby library for storing, recalling and building your .dotfiles and configs."
    :tags ["dotfiles" "ruby"]))
(hoarder:fetch "https://gitlab.com/stavros/IPFessay.git"
  '(:tags ["ipfs"]))
(hoarder:fetch "jes/hardbin"
  '(:description "Encrypted pastebin using IPFS"
    :tags ["ipfs" "pastebin"]))
(hoarder:fetch "https://gitlab.com/napoleon-blue/napoleon-blue.gitlab.io.git"
  '(:site "https://napoleon.blue/"))
(hoarder:fetch "7anshuai/masq"
  '(:description "A simple local dns server extracted from Pow"
    :tags ["dns" "dnsmasq" "masq" "pow"]))
(hoarder:fetch "fredokun/defvariant"
  '(:description "Variants for Common Lisp"
    :memo "[[https://www.reddit.com/r/lisp/comments/20pce0/variants_for_common_lisp_for_ml_nostalgics/][Too Many Requests]]"))
(hoarder:fetch "elazar/gitlab-hud"
  '(:description "A personal heads up display for GitLab"
    :tags ["cli" "git" "gitlab"]))
(hoarder:fetch "ncase/fireflies"
  '(:description "Fireflies: an example of emergence"
    :site "http://ncase.me/fireflies/"
    :memo "[[http://gigazine.net/news/20170601-fireflies/][ホタルが乱舞してあちこちで光る様子を再現した「Fireflies」は大量のホタルの発光がシンクロしていく様子を体感可能 - GIGAZINE]]"))
(hoarder:fetch "tobyink/p5-type-tiny"
  '(:description "tiny, yet Moo(se)-compatible type constraint"
    :tags ["perl" "type" "constraint"]))
(hoarder:fetch "Abigail/Regexp--Common"
  '(:description "Common patterns"
    :tags ["regexp" "perl"]
    :memo "[[http://end0tknr.hateblo.jp/entry/20080901/1220272146][Regexp::Commonによる正規表現で数値やurlの書式チェック - end0tknr's kipple - 新web写経開発]]"))
(hoarder:fetch "ray1729/Regexp-Common"
  '(:description "A port of Perl's Regexp::Common to Clojure (INCOMPLETE)"
    :tags ["clojure" "perl" "regexp"]))
(hoarder:fetch "ta2gch/papyrus"
  '(:description "A Literate Programming Tool"
    :tags ["common-lisp" "literate-programming"]))
(hoarder:fetch "zcaudate/spirit"
  '(:description "data. simplified."
    :tags ["clojure"]))
(hoarder:fetch "headsetapp/headset-electron"
  '(:description "Electron wrapper for Headset"
    :site "http://headsetapp.co/"
    :tags ["music" "electron"]))
(hoarder:fetch "emilbayes/secure-password"
  '(:description "Making Password storage safer for all"
    :tags ["javascript" "hash" "password"]))
(hoarder:fetch "nachoparker/progress_bar.sh"
  '(:description "Progress bar for the shell"
    :tags ["bash" "shell" "shell-script" "zsh"]
    :memo "[[https://ownyourbits.com/2017/07/16/a-progress-bar-for-the-shell/][A progress bar for the shell – Own your bits]]
[[https://www.reddit.com/r/bash/comments/6nltd8/i_wrote_a_progress_bar_for_the_shell/][Too Many Requests]]"))
(hoarder:fetch "piotrmurach/tty-command"
  '(:description "Execute shell commands with pretty output logging and capture stdout, stderr and exit status."
    :tags ["cli" "logging" "ruby-gem" "stdout" "tty" "tty-components"]))
(hoarder:fetch "LispCookbook/cl-cookbook"
  '(:description "The Common Lisp Cookbook"
    :tags ["common-lisp" "cookbooks" "examples" "lisp"]))
(hoarder:fetch "EuAndreh/defclass-std"
  '(:description "A shortcut macro to write DEFCLASS forms quickly"
    :memo "[[https://www.reddit.com/r/Common_Lisp/comments/6iwx9w/defclassstd_a_shortcut_macro_to_write_defclass/][Too Many Requests]]"))
(hoarder:fetch "himidori/linux_cfgs"
  '(:memo "[[https://www.reddit.com/r/unixporn/comments/6nm6ip/i3_yellow_tint/][Too Many Requests]]")) 
(hoarder:fetch "ericjjj/vms"
  '(:description "A Vue.js 2.0 Content Management System"
    :tags ["nodejs" "vue" "vue-management" "vue-router" "vue2" "vuejs" "vuejs2" "vuex"]))
(hoarder:fetch "sodium-friends/sodium-native"
  '(:description "Low level bindings for libsodium"))
(hoarder:fetch "P-H-C/phc-winner-argon2"
  '(:description "The password hash Argon2, winner of PHC "
    :tags ["hash" "password" "argon2"]))
(hoarder:fetch "aviaviavi/legion"
  '(:description "Simple blockchain server written in haskell. Feedback welcome."
    :tags ["blockchain" "haskell" "peer-network"]))
(hoarder:fetch "zalando/cats.match"
  '(:description "Pattern matching for the monads in the cats Clojure library"
    :tags ["clojure" "monad" "pattern_match"]))
(hoarder:fetch "asciinema/asciicast2gif"
  '(:description "Generate GIF animations from asciicasts (asciinema recordings)"))
(hoarder:fetch "Akkiesoft/yometab"
  '(:description "嫁を表示できるプラグイン"
    :tags ["mikutter-plugin"]))
(hoarder:fetch "supermomonga/twitterbot_yuzumorisan"
  '(:description "柚子森さんの更新日を告げる南みれぃ"
    :tags ["bot" "ruby" "twitter"]))
(hoarder:fetch "gnumdk/eolie"
  '(:description "Web browser for GNOME"))
(hoarder:fetch "hooram/ownphotos-backend"
  '(:tags ["google_photos" "self-hosted"]
    :memo "[[https://www.reddit.com/r/selfhosted/comments/6ns4bh/im_working_on_a_selfhostable_google_photos_clone/][Too Many Requests]]")) 
(hoarder:fetch "mescon/Muximux"
  '(:description "A lightweight way to manage your HTPC"
    :tags ["bookmark" "couchpotato" "deluge" "htpc" "iframe" "landing-page" "nzbget" "ombi" "plex" "plexpy" "radarr" "rutorrent" "sabnzbd" "sonarr" "webserver"]
    :memo "[[https://www.reddit.com/r/PleX/comments/6nthwe/muximux_20_question/][Too Many Requests]]"))
(hoarder:fetch "ManrajGrover/organize-cli"
  '(:description "📋 Organize your files, imagine cleaning up your downloads in an instant"
    :memo "[[https://www.reddit.com/r/commandline/comments/6nuozo/organize_command_line_tool_to_organize_your_files/][Too Many Requests]]"))
(hoarder:fetch "JonnyWong16/plexpy"
  '(:description "A Python based monitoring and tracking tool for Plex Media Server."
    :tags ["analytics" "monitoring" "notifications" "plex" "plexpy" "python" "statistics" "stats"]
    :memo "[[https://www.reddit.com/r/PleX/comments/6nton5/switch_to_plexpy_on_new_server/][Too Many Requests]]"))
(hoarder:fetch "antonmedv/find-npm-name"
  '(:description "Find available npm name"
    :memo "[[https://medv.io/list-of-available-three-letter-npm-names/][List of available 3 letter npm names]]
[[https://www.reddit.com/r/javascript/comments/6nt6qd/list_of_available_3_letter_npm_names/][Too Many Requests]]"))
(hoarder:fetch "yshui/deai"
  '(:description "DEsktop Automation Infrastructure"
    :tags ["desktop-automation" "linux-desktop" "scripting"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6nr33e/oc_scripting_for_your_linux_desktop_progress/][Too Many Requests]]"))
(hoarder:fetch "vseloved/asdfx"
  '(:description "Some potential ASDF extensions"
    :memo "[[https://www.youtube.com/watch?v=VN58mZsHWXk][ELS - Loading Multiple Versions of an ASDF System in the Same Lisp Image - YouTube]]"))
(hoarder:fetch "jsmpereira/cl-simcity"
  '(:description "Moved:"
    :memo "[[http://www.youtube.com/watch?v=SNxaLiwHy50]]"
    :dependencies [("jsmpereira/common-city"
                    (:description "Common City - Lisp in Summer Projects - continuing work from https://github.com/jsmpereira/cl-simcity"))]))
(hoarder:fetch "raphael141714/personnal-Conky"
  '(:description "Personnal conky config, inspired by the Numix theme"
    :memo "[[https://www.reddit.com/r/Conkyporn/comments/6nwjw7/my_personnal_numix_inspired_conky/][Too Many Requests]]"))
(hoarder:fetch "dunst-project/dunst"
  '(:description "lightweight and customizable notification daemon"))
(hoarder:fetch "Tadly/hideIt.sh"
  '(:description "Automagically hide/show a window by its name when the cursor is within a defined region or you mouse over it."
    :tags ["automation" "bash" "cursor" "hide" "mouse" "shell" "x11" "xorg"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6o0urr/oc_hideitsh_automagically_showhide_windows/][{OC} hideIt.sh - Automagically show/hide windows depending on the cursors location (and such) : unixporn]]"))
(hoarder:fetch "alexk7110/mc-electricblue256-skin"
  '(:description "Yet another Midnight Commander skin"))
(hoarder:fetch "Roliga/urxvt-xresources-256"
  '(:description "Perl extension for rxvt-unicode that allows setting all 256 colors via X resources"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6nzetn/oc_set_color_16255_via_x_resources_in_urxvt/][Too Many Requests]]"))
(hoarder:fetch "dogescript/dogescript"
  '(:description "wow so syntax very doge much future"
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6o3ww4/wow_so_syntax_very_doge_much_future/][Too Many Requests]]"))
(hoarder:fetch "natsukagami/hakkero-project"
  '(:description "A mini web novel game where players strives to win by writing the best collaborative story they can come up with."
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6ntv6k/a_mini_web_novel_game_where_players_strives_to/][A mini web novel game where players strives to win by writing the best collaborative story they can come up with - Ha...]]"))
(hoarder:fetch "madnight/bitcoin-chart-cli"
  '(:description "Bitcoin chart for the terminal as command line util"
    :tags ["bitcoin" "charts" "cli" "nodejs" "terminal"]
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6nne9t/bitcoin_ethereum_charts_for_the_terminal/][Too Many Requests]]"))
(hoarder:fetch "NotHawthorne/kaskade"
  '(:description "Python script to search and download torrents."
    :memo "[[https://boards.4chan.org/g/thread/61438954#p61448860][/g/ - /nrg/ - Nyaa Replacements General - Technology - 4chan]]"))
(hoarder:fetch "rylio/ytdl"
  '(:description "YouTube download library and CLI written in Go"
    :tags ["golang" "youtube"]))
(hoarder:fetch "nilesr/lainmod"
  '(:memo "[[https://lainchan.org/%CE%A9/res/2449.html][/Ω/ - usercripts]]")) 
(hoarder:fetch "nilesr/dangeru-catalog"
  '(:memo "[[https://lainchan.org/%CE%A9/res/2449.html][/Ω/ - usercripts]]")) 
(hoarder:fetch "LonoCloud/lein-voom"
  '(:description "Tool for generating artifacts versioned on the most recent git commit sha and commit time."
    :tags ["clojure" "leiningen"]
    :memo "[[https://www.youtube.com/watch?v=axztcYJUN4I][Aaron Brooks - lein-voom: Projects Want to Be Values - YouTube]]"))
(hoarder:fetch "LonoCloud/lein-unison"
  '(:description "Update Leiningen projects that depend on me."
    :tags ["clojure"]))
(hoarder:fetch "LonoCloud/synthread"
  '(:description "Syntax threading macros for Clojure"
    :tags ["clojure"]))
(hoarder:fetch "yunit-io/yunit"
  '(:description "User interface shell based on the Unity 8 shell originally developed for the Unity convergent personal computing environment developed by Canonical Ltd."))
(hoarder:fetch "https://gitlab.com/Druid-of-Luhn/schemer-kings.git"
  '(:tags ["scheme" "game"]))
(hoarder:fetch "https://gitlab.com/azrazalea/muddy-alien.git"
  '(:tags ["common_lisp" "mud"]))
(hoarder:fetch "chengyin/albumcolors"
  '(:description "A JavaScript script create a 3-color palette for background and text colors based on an image. Inspired by iTunes 11.  "
    :tags ["javascript"]))
(hoarder:fetch "kristian-lange/net-glimpse"
  '(:description "1) Real-time visualization of network traffic (Ethernet and Internet), and 2) Streaming of header data from your network interfaces via WebSockets"
    :tags ["java" "javascript" "network-monitoring" "network-visualization" "websockets"]))
(hoarder:fetch "wellsjo/JSON-Splora"
  '(:description "GUI for editing, visualizing, and manipulating JSON"
    :tags ["gui" "javascript" "jq" "json" "json-splora"]))
(hoarder:fetch "p-e-w/plotinus"
  '(:description "A searchable command palette in every modern GTK+ application"
    :tags ["command-palette" "gnome" "gtk" "gtk3" "linux" "linux-desktop"]))
(hoarder:fetch "Grinnz/lib-relative"
  '(:description "lib::relative"
    :tags ["perl"]))
(hoarder:fetch "go-functional/core"
  '(:description "Core utilities for functional Programming in Go"
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6od9ni/one_of_my_colleagues_is_crazy_enough_to_build_out/][Too Many Requests]]"))
(hoarder:fetch "merkoba/hue"
  '(:description "Chat room with dynamic image/background and internet radio."))
(hoarder:fetch "amirouche/forward.scm"
  '(:description "Scheme frontend framework"
    :tags ["biwascheme" "frontend" "model-view-controller" "scheme" "virtual-dom"]
    :memo "[[https://groups.google.com/forum/#!topic/comp.lang.scheme/WYUsYHGLj60][Google グループ]]"))
(hoarder:fetch "DanDLee/DreamScheme"
  '(:description "Dream Scheme interpreter by David Joseph Stith"
    :memo "[[https://groups.google.com/forum/#!topic/comp.lang.scheme/qwhCVbPZQvk][Google グループ]]"))
(hoarder:fetch "scheme-requests-for-implementation/srfi-146"
  '(:description "Maps"
    :site "https://srfi.schemers.org/srfi-146/srfi-146.html"
    :memo "[[http://practical-scheme.net/wiliki/wiliki.cgi?Gauche%3A%E8%BE%9E%E6%9B%B8%E3%81%AE%E3%83%97%E3%83%AA%E3%83%9F%E3%83%86%E3%82%A3%E3%83%96]]"))
(hoarder:fetch "AlessandroYorba/Arcadia"
  '(:description "Vim Colorscheme"
    :tags ["colorscheme" "vim"]))
(hoarder:fetch "ajs/rando"
  '(:description "A random Perl code generator"
    :memo "[[https://www.reddit.com/r/perl/comments/6obxq3/random_perl_code/][Too Many Requests]]"))
(hoarder:fetch "yeoman/configstore"
  '(:description "Easily load and persist config without having to think about where and how"
    :tags ["configuration" "javascript"]))
(hoarder:fetch "hubbcaps/dotfiles"
  '(:description "muh dotfiles"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6owjt7/i3_brown_rice_still_brown/][{i3} Brown Rice, Still Brown : unixporn]]"))
(hoarder:fetch "kan/p5-smart-options"
  '(:description "simple argument option parser"))
(hoarder:fetch "hibariya/ruremai"
  '(:description "Object.method(:name).rurema!"))
(hoarder:fetch "alexkehayias/chocolatier"
  '(:description "WIP ClojureScript game/engine using Pixi.js for rendering."
    :tags ["clojure" "clojurescript" "entity-component-system" "game-engine"]
    :memo "[[https://www.youtube.com/watch?v=TW1ie0pIO_E][Functional Game Engine Design for the Web - Alex Kehayias - YouTube]]"))
(hoarder:fetch "tbrand/neph"
  '(:description " A modern command line job processor, similar with make command"
    :tags ["command-line" "command-line-app" "command-line-tool" "concurrency" "crystal" "job-processor" "job-scheduler" "make" "yml"]
    :memo "[[https://www.reddit.com/r/crystal_programming/comments/6p3dz9/neph_a_modern_command_line_job_processor_similar/][Too Many Requests]]"))
(hoarder:fetch "at-grandpa/clim"
  '(:description "Slim command line interface builder for Crystal."
    :tags ["clim" "command-line-interface-builder" "crystal"]))
(hoarder:fetch "raxod502/dotman"
  '(:description "🍐 One package manager to rule them all"))
(hoarder:fetch "zcaudate/lucidity"
  '(:description "tools for clarity"
    :tags ["clojure"]))
(hoarder:fetch "ryota-ka/twterm"
  '(:description "A full-featured CLI Twitter client"
    :tags ["curses" "readline" "ruby" "twitter"]))
(hoarder:fetch "johnjago/awesome-ad-free"
  '(:description "Curated list of ad-free services on the Internet."
    :tags ["ad-free" "applications" "awesome" "awesome-list" "list" "services" "websites"]))
(hoarder:fetch "tilfin/ougai"
  '(:description "A Ruby JSON logger is capable of handling a message, custom data or an exception easily."
    :tags ["bunyan" "gem" "json" "logger" "lograge" "rails" "ruby"]))
(hoarder:fetch "git://repo.or.cz/wmaker-crm.git"
  '(:tags ["wm" "windowmaker"]))
(hoarder:fetch "joe-re/tubutler"
  '(:description "Simple and useful YouTube Player for Desktop"
    :tags ["desktop-application" "electron" "youtube"]
    :memo "[[http://joe-re.hatenablog.com/entry/2017/07/26/101805][Vue/Vuexに静的に型を付ける - Please Drive Faster]]"))
(hoarder:fetch "joke2k/faker"
  '(:description "Faker is a Python package that generates fake data for you."
    :tags ["dataset" "fake" "fake-data" "python" "test-data" "test-data-generator" "testing"]))
(hoarder:fetch "clojure/tools.deps.alpha"
  '(:tags ["clojure"]
    :memo "[[https://www.youtube.com/watch?v=sStlTye-Kjk][Dependency Heaven - Alex Miller - YouTube]]")) 
(hoarder:fetch "ivanilves/xiringuito"
  '(:description "SSH-based \"VPN for poors\""
    :tags ["access" "aws" "bastion-host" "network" "security" "ssh" "vpn"]))
(hoarder:fetch "ElektraInitiative/libelektra"
  '(:description "Elektra serves as a universal and secure framework to access configuration parameters in a global, hierarchical key database."
    :memo "[[https://en.wikipedia.org/wiki/Dconf#References][dconf - Wikipedia]]
[[https://en.wikipedia.org/wiki/Reverse_domain_name_notation][Reverse domain name notation - Wikipedia]]
[[https://en.wikipedia.org/wiki/Uniform_Type_Identifier][Uniform Type Identifier - Wikipedia]]"))
(hoarder:fetch "brannondorsey/wifi-cracking"
  '(:description "Crack WPA/WPA2 Wi-Fi Routers with Airodump-ng and Aircrack-ng/Hashcat 🖧"
    :tags ["aircrack-ng" "hacking" "hashcat" "tutorial" "wifi" "wpa2-cracking"]))
(hoarder:fetch "markets/awesome-ruby"
  '(:description ":gem: A collection of awesome Ruby libraries, tools, frameworks and software"
    :tags ["awesome" "awesome-list" "collection" "ruby"]))
(hoarder:fetch "terlar/fry"
  '(:description "Simple ruby version manager for fish"
    :tags ["fish"]))
(hoarder:fetch "raphamorim/astrofish"
  '(:description "A intergalactic theme based on Spacemacs Color Scheme"
    :tags ["vim" "colorscheme"]))
(hoarder:fetch "karlch/vimiv"
  '(:description "An image viewer with vim-like keybindings."
    :tags ["gtk" "image-viewer" "python" "vim"]))
(hoarder:fetch "git://git.gnome.org/gthumb")
(hoarder:fetch "darkfeline/dantalian"
  '(:description "File tagging with hard links"
    :tags ["tagging"]
    :memo "https://www.reddit.com/r/linux/comments/3mjwn5/do_any_popular_linux_file_systems_support/cvfwlcq/
[[https://superuser.com/questions/81563/whats-a-good-solution-for-file-tagging-in-linux][What's a good solution for file-tagging in linux? - Super User]]"))
(hoarder:fetch "https://bitbucket.org/majo/oyepa"
  '(:tags ["tagging"]
    :type :hg
    :memo "https://www.reddit.com/r/linux/comments/3mjwn5/do_any_popular_linux_file_systems_support/cvfwlcq/
[[https://superuser.com/questions/81563/whats-a-good-solution-for-file-tagging-in-linux][What's a good solution for file-tagging in linux? - Super User]]"))
(hoarder:fetch "oniony/TMSU"
  '(:description "TMSU lets you tags your files and then access them through a nifty virtual filesystem from any other application."
    :tags ["command-line" "filesystem" "go" "tagging"]
    :memo "https://www.reddit.com/r/linux/comments/3mjwn5/do_any_popular_linux_file_systems_support/cvfwlcq/
[[https://superuser.com/questions/81563/whats-a-good-solution-for-file-tagging-in-linux][What's a good solution for file-tagging in linux? - Super User]]"))
(hoarder:fetch "StrumentiResistenti/Tagsistant"
  '(:description "Semantic filesystem for Linux, with relation reasoner, autotagging plugins and a deduplication service"
    :tags ["filesystem" "linux" "reasoning" "semantic" "tagging" "tags"]
    :site "http://www.tagsistant.net"
    :memo "https://www.reddit.com/r/linux/comments/3mjwn5/do_any_popular_linux_file_systems_support/cvfwlcq/
[[https://superuser.com/questions/81563/whats-a-good-solution-for-file-tagging-in-linux][What's a good solution for file-tagging in linux? - Super User]]"))
(hoarder:fetch "marook/tagfs"
  '(:description "Fuse tag file system"
    :tags ["tagging"]
    :memo "https://www.reddit.com/r/linux/comments/3mjwn5/do_any_popular_linux_file_systems_support/cvfwlcq/
[[https://superuser.com/questions/81563/whats-a-good-solution-for-file-tagging-in-linux][What's a good solution for file-tagging in linux? - Super User]]"))
(hoarder:fetch "alvatar/dfym"
  '(:description "A command-line utility to tag, search and discover files in your computer (Don't Forget Your Music)"
    :tags ["tagging"]
    :memo "https://www.reddit.com/r/linux/comments/3mjwn5/do_any_popular_linux_file_systems_support/cvfwlcq/
[[https://superuser.com/questions/81563/whats-a-good-solution-for-file-tagging-in-linux][What's a good solution for file-tagging in linux? - Super User]]"))
(hoarder:fetch "ckirkendall/enfocus"
  '(:description "DOM manipulation and templating library for ClojureScript inspired by Enlive."
    :tags ["dom" "clojure"]))
(hoarder:fetch "clojure/tools.deps.alpha"
  '(:tags ["clojure"])) 
(hoarder:fetch "hoteltonight/shameless"
  '(:description "Schemaless store"
    :tags ["ruby"]))
(hoarder:fetch "suprematic/otplike"
  '(:description "otplike"
    :tags ["clojure" "erlang"]))
(hoarder:fetch "BestImageViewer/geeqie"
  '(:description "claiming to be the best image viewer / photo collection browser"
    :tags ["image-viewer" "images" "photo-browser" "photo-manager" "photography" "picture-gallery"]
    :memo "[[http://karl-voit.at/managing-digital-photographs/][Managing Digital Files (Like Photographs) in Files and Folders]]"))
(hoarder:fetch "https://gist.github.com/substack/5eb32c57fb320bc3a2b13425aded3c31.git"
  '(:name "peermaps-data.md"
    :description " peermaps p2p data format for ad-hoc openstreetmap extracts "))
(hoarder:fetch "Free-Cities/Free-Cities"
  '(:description "A text-only slave management game. (18+)"))
(hoarder:fetch "SecUpwN/Spotify-AdKiller"
  '(:description "Your Party with Spotify - without ads!"))
(hoarder:fetch "Templarian/MaterialDesign"
  '(:description "✒2000+ Material Design Icons from the Community"
    :tags ["android" "bootstrap" "google-material" "icons" "material-design" "svg" "webfonts"]
    :site "https://materialdesignicons.com/"))
(hoarder:fetch "ipfs/ipfs-companion"
  '(:description "Browser extension that simplifies access to IPFS resources via local HTTP2IPFS gateway"
    :tags ["firefox" "ipfs" "ipfs-gateway" "p2p" "webextension"]
    :memo "[[https://hydrusnetwork.github.io/hydrus/help/ipfs.html][ipfs]]"))
(hoarder:fetch "dylanPowers/ipfs-chrome-extension"
  '(:description "Access gateway.ipfs.io urls the way they were meant: from your locally running ipfs daemon"
    :memo "[[https://hydrusnetwork.github.io/hydrus/help/ipfs.html][ipfs]]"))
(hoarder:fetch "clangen/musikcube"
  '(:description "a terminal-based cross-platform music player, audio engine, metadata indexer, and server in c++"
    :tags ["alsa" "audio-engine" "audio-player" "coreaudio" "cross-platform" "curses" "directsound" "music-player" "pulseaudio" "terminal" "wasapi"]))
(hoarder:fetch " git://git.savannah.gnu.org/xforms.git"
  '(:tags ["gui" "toolkit"]))
(hoarder:fetch "rcmdnk/sd_cl"
  '(:description "Useful functions to change directories for Bash/Zsh and GNU screen/tmux."
    :memo "[[https://rcmdnk.com/blog/2013/12/27/computer-bash-zsh-sd-cl/][ターミナルでのディレクトリ移動を保存、取り出しする #screen]]"))
(hoarder:fetch "drewc/smug"
  '(:description "Super Monadic Über Go-into : parser combinators for Common Lisp"))
(hoarder:fetch "masatoi/cl-random-forest"
  '(:description "Random forest in Common Lisp"
    :tags ["classifier" "common-lisp" "machine-learning" "random-forest"]
    :memo "[[https://www.slideshare.net/masatoi0/lispmeetup-50-clrandomforest-common-lisp][Lispmeetup #50 cl-random-forest: Common Lispによるランダムフォレストの実装]]"))
(hoarder:fetch "MadMarty/madsonic-server-5.1"
  '(:description "Madsonic Server 5.1 Build 5270"
    :memo "[[https://gist.github.com/jacobblock/4d9270c25548c65300dd][Ultimate FreeNAS Setup · GitHub]]"
    :download nil))
(hoarder:fetch "theotherp/nzbhydra"
  '(:description "Meta search for NZB indexers"
    :tags ["meta-search" "nzb-indexers" "nzbhydra" "usenet"]
    :memo "[[https://gist.github.com/jacobblock/4d9270c25548c65300dd][Ultimate FreeNAS Setup · GitHub]]"))
(hoarder:fetch "rembo10/headphones"
  '(:description "Automatic music downloader for SABnzbd"
    :memo "[[https://gist.github.com/jacobblock/4d9270c25548c65300dd#headphones][Ultimate FreeNAS Setup · GitHub]]"))
(hoarder:fetch "https://gist.github.com/jacobblock/4d9270c25548c65300dd.git"
  '(:name "FreeNAS.md"))
(hoarder:fetch "dominictarr/androidify") 
(hoarder:fetch "caiogondim/bullet-train.zsh"
  '(:description ":bullettrain_side: An oh-my-zsh shell theme based on the Powerline Vim plugin"
    :tags ["zsh" "prompt" "powerline"]))
(hoarder:fetch "ekaitz-zarraga/clojent"
  '(:description "A BitTorrent client in Clojure? WE WILL SEE."
    :tags ["clojure"]))
(hoarder:fetch "shitenshi/yuyushiki_reply_plugin"
  '(:tags ["mikutter"])) 
(hoarder:fetch "lambdaisland/uniontypes"
  '(:description "Union Types (ADTs, sum types) built on clojure.spec"
    :tags ["clojure" "type" "spec"]))
(hoarder:fetch "we-shop/arrows"
  '(:description "Extensions to the Clojure threading macros to help with manipulating nested data structures"
    :tags ["clojure"]))
(hoarder:fetch "lepisma/cfg"
  '(:description "Config files"
    :tags ["dotfiles" "fish-configuration" "stumpwm"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6px7f3/stumpwm_shades_of_gray_with_little_reddish_accent/][Too Many Requests]]"))
(hoarder:fetch "dylanaraps/bum"
  '(:description "🎵 Download and display album art for mpd/mopidy tracks."
    :tags ["mopidy" "mpv" "music" "python"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6pwbnt/i3/][Too Many Requests]]"))
(hoarder:fetch "unix121/i3wm-themer"
  '(:description "My collection of Themes for i3-wm"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6prliq/dotfiles_not_on_github_please/][Too Many Requests]]"
    :download nil))
(hoarder:fetch "ladderlife/loonie"
  '(:description "Clojure & Clojurescript build system based on Buck"
    :dependencies ["facebook/buck"]))
(hoarder:fetch "FrauBSD/pkgcenter"
  '(:description "Package Center"
    :tags ["freebsd"]))
(hoarder:fetch "RobinLinus/snapdrop"
  '(:description "A Progressive Web App for local file sharing "
    :tags ["airdrop" "browser" "file_sharing"]))
(hoarder:fetch "typestyle/csx"
  '(:description "Utility functions for TypeStyle"
    :tags ["css" "css-in-js" "typescript" "typestyle"]))
(hoarder:fetch "markhamilton1/Synchronator"
  '(:description "Python module to synchronize files between iOS device and Dropbox. (Pythonista)(Python 2)"
    :tags ["dropbox" "pythonista"]
    :memo "[[http://hitoriblog.com/?p=52226][KING JIM ポメラDM200単体でDropboxによる双方向自動ファイル同期ができるようにしてみた]]"))
(hoarder:fetch "casey/just"
  '(:description "🤖 Just a command runner"))
(hoarder:fetch "hiboma/hiboma") 
(hoarder:fetch "clojurians-org/clojure-ebook"
  '(:download nil))
(hoarder:fetch "swarmsim/swarm"
  '(:description "Swarm Simulator Javascript/browser client."))
(hoarder:fetch "takaaki-kasai/git-foresta"
  '(:description "git-foresta: Text-based git log graph viewer"
    :tags ["git"]))
(hoarder:fetch "feuery/murja-blog"
  '(:description "A blogging system written in clj/cljs"
    :tags ["blog" "clojure"]))
(hoarder:fetch "akkana/pho"
  '(:description "pho: a lightweight image viewer and triager"))
(hoarder:fetch "ChaosForge/doomrl"
  '(:description "D**m, the Roguelike"))
(hoarder:fetch "vydd/sketch"
  '(:description "A Common Lisp framework for the creation of electronic art, visual design, game prototyping, game making, computer graphics, exploration of human-computer interaction, and more."
    :tags ["2d" "art" "common-lisp" "games" "graphics" "hci" "sketch" "visual"]
    :memo "[[https://www.reddit.com/r/lisp/comments/6pxpnh/generative_art_with_lisp/][Too Many Requests]]"))
(hoarder:fetch "hyper-pokemon/hyper-star-wars"
  '(:description "🌟🚀Super awesome, your Hyper terminal shall look."
    :tags ["bash" "chewbacca" "color-scheme" "darth-vader" "han-solo" "hyper" "hyper-star-wars" "hyper-theme" "hyperterm" "hyperterminal" "luke-skywalker" "star-wars" "stormtrooper" "syntax" "terminal" "the-force-awakens" "theme" "ui" "yoda" "zsh"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6qifpb/tailormade_full_fledged_star_wars_themes_for_your/][Tailor-made, full fledged Star Wars themes for your Hyper terminal! Yes, lightsabers included! : commandline]]"))
(hoarder:fetch "BurntSushi/xsv"
  '(:description "A fast CSV toolkit written in Rust."))
(hoarder:fetch "http://git.suckless.org/dmenu")
(hoarder:fetch "zakkor/ricem"
  '(:description "A lightweight, automatic dotfile manager"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6qmspz/is_there_a_way_to_have_many_different_desktop/][Too Many Requests]]"))
(hoarder:fetch "neeasade/dotfiles"
  '(:description "bspwm, lemonbar, stuff."
    :tags ["rice"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6qebz4/bspwm_playground/][{bspwm} playground : unixporn]]"))
(hoarder:fetch "sos4nt/dynamic-colors"
  '(:description "Change terminal colors on the fly"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6qg9yy/xmonad_dynamic_urxvt_theme_switching/][Too Many Requests]]"))
(hoarder:fetch "https://git.code.sf.net/p/motif/code"
  '(:name "motif"))
(hoarder:fetch "venantius/ultra"
  '(:description "A Leiningen plugin for a superior development environment"))
(hoarder:fetch "https://git.code.sf.net/p/series/series"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/6qa6tr/optimising_dashel/][Optimising Dash.el : emacs]]
[[https://github.com/tokenrove/series/wiki][Home · tokenrove/series Wiki · GitHub]]"))
(hoarder:fetch "ejmr/chance.lua"
  '(:description "Library for Generating Random Data"
    :memo "[[https://www.reddit.com/r/emacs/comments/6qahdz/what_are_you_currently_developing_in_emacs_lisp/][What Are You Currently Developing in Emacs Lisp? : emacs]]"))
(hoarder:fetch "wasamasa/teapub"
  '(:description "EPUB viewer using CHICKEN and webkit"
    :tags ["scheme" "chicken" "webkit" "epub"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6qahdz/what_are_you_currently_developing_in_emacs_lisp/][What Are You Currently Developing in Emacs Lisp? : emacs]]"))
(hoarder:fetch "koniu/recoll-webui"
  '(:description "web interface for recoll desktop search"
    :tags ["full-text-search" "python" "search-interface" "web-interface"]))
(hoarder:fetch "atomashpolskiy/bt"
  '(:description "Java BitTorrent library with DHT, magnet links, encryption and more"
    :tags ["bittorrent" "cli" "dht" "encryption" "library" "p2p" "torrent-client"]))
(hoarder:fetch "guille/download_tv"
  '(:description "CLI application for downloading TV shows"
    :memo "[[https://www.reddit.com/r/ruby/comments/6r6o2y/i_wrote_a_gem_to_find_magnet_links_for_tv/][Too Many Requests]]"))
(hoarder:fetch "AkhilMaskery/yifi"
  '(:description "command line tool for browsing and downloading the yts torrents"
    :tags ["cli" "movies" "python" "torrent-client" "torrent-downloader" "yifi-search-engine" "yifi-torrents"]
    :memo "[[https://www.reddit.com/r/commandline/comments/6r2e60/how_about_searching_torrents_on_your_command_line/][Too Many Requests]]"))
(hoarder:fetch "Anshuman-Verma/ongaku"
  '(:description "Anime Radio"
    :tags ["anime" "ending" "javascript" "music" "opening" "ost" "webapp"]
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6r9zn3/animeradio_plays_random_anime_openingsendingsost/][Too Many Requests]]"))
(hoarder:fetch "ibaaj/awesome-OpenSourcePhotography"
  '(:description "A list of awesome free open source software & libraries for photography. Also tools for video."))
(hoarder:fetch "unixporn/colorcontest"
  '(:description "/r/unixporn color contest results"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6r6uei/colorcontest_results/][Too Many Requests]]"))
(hoarder:fetch "nEXT-Browser/nEXT"
  '(:description "nEXT Browser"
    :tags ["common_lisp" "qt" "browser"]
    :memo "[[https://www.reddit.com/r/lisp/comments/6rfx9j/seeking_developer_opensource_web_browser/][Too Many Requests]]
[[https://www.reddit.com/r/emacs/comments/71m7hg/next_browser_v002_xpost_rlisp/][Too Many Requests]]"))
(hoarder:fetch "AntonioGabrielAndrade/LIRE-Lab"
  '(:description "A desktop image retrieval tool made on top of the LIRE Java library"
    :tags ["cbir" "image-retrieval" "javafx" "javafx-desktop-apps" "lire" "testfx"]
    :dependencies ["dermotte/lire"]
    :memo "[[https://www.reddit.com/r/SideProject/comments/6rsl10/lirelab_a_desktop_imageretrieval_tool_based_on/][Too Many Requests]]"))
(hoarder:fetch "evilsoft/crocks"
  '(:description "A collection of well known Monadic Containers for your utter enjoyment."
    :tags ["adt" "composition" "curry" "functor" "lift" "monad" "monoid" "pair" "predicate-functions" "unary-functions"]
    :memo "[[https://www.youtube.com/watch?v=fIb1IOVh6cY][Functional JS - Working with ADTs - YouTube]]"))
(hoarder:fetch "Cyan4973/xxHash"
  '(:description "Extremely fast non-cryptographic hash algorithm"
    :tags ["c" "dispersion" "hash" "hash-checksum" "hash-functions" "smhasher" "xxhash"]))
(hoarder:fetch "facebook/zstd"
  '(:description "Zstandard - Fast real-time compression algorithm"))
(hoarder:fetch "ChrisPenner/conway"
  '(:description "Conway's game of life in 100 lines or less!"
    :memo "[[https://www.reddit.com/r/haskell/comments/6rzylm/yet_another_conways_gol_100_lines_using/][Too Many Requests]]"))
(hoarder:fetch "Leanny/leanny.github.io"
  '(:memo "[[https://boards.4chan.org/vg/thread/185225645#p185225645][/vg/ - /ink/ - Splatoon 2 General - Video Game Generals - 4chan]]"
    :download nil)) 
(hoarder:fetch "Ambrevar/Demlo"
  '(:description "A dynamic and extensible music library organizer"
    :tags ["dynamic" "extensible" "ffmpeg" "golang" "lua" "music" "musicbrainz" "portable" "rename-files" "scripts" "tagger"]))
(hoarder:fetch "Ambrevar/dotfiles"
  '(:tags ["archlinux" "emacs" "eshell" "exwm" "freebsd" "gentoo" "helm" "keymap" "mu4e" "posix-sh" "shell-scripts" "unix"]))
(hoarder:fetch "Ambrevar/hsync"
  '(:description "A filesystem hierarchy synchronizer"
    :tags ["golang" "json" "rsync"]))
(hoarder:fetch "kris-nova/lolgopher"
  '(:description "Rainbow Writer implementation for Golang"))
(hoarder:fetch "mcandre/shaggy"
  '(:description "a POSIX compliant shell script package manager"
    :memo "[[https://www.reddit.com/r/commandline/comments/6sfvdg/shaggy_a_posix_compliant_shell_script_package/][Too Many Requests]]"))
(hoarder:fetch "aksakalli/gtop"
  '(:description "System monitoring dashboard for terminal"
    :memo "[[https://www.reddit.com/r/linuxadmin/comments/6stfw3/system_monitoring_dashboard_for_terminal/][Too Many Requests]]"))
(hoarder:fetch "ShyPixie/cute-php-explorer"
  '(:description "A simple and beauty PHP file management"
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6sx3ta/a_simple_and_beauty_php_file_management/][Too Many Requests]]"))
(hoarder:fetch "https://gitlab.com/sj1k/gorice.git"
  '(:memo "[[https://www.reddit.com/r/unixporn/comments/6srj0g/i3gaps_config_changer_ive_been_working_on/][{i3-gaps} Config changer I've been working on : unixporn]]"
    :description "A program that stores and loads templates for config files."))
(hoarder:fetch "spjulius/dotfiles"
  '(:description "dots. configs and other herbs."
    :memo "[[https://www.reddit.com/r/unixporn/comments/6t489z/herbstluftwm_montecarlo/][{herbstluftwm} Montecarlo : unixporn]]"))
(hoarder:fetch "ptigwe/hs-flatris"
  '(:description "An implementation of Flatris using Haskell and Miso"
    :tags ["haskell"]
    :memo "[[https://www.reddit.com/r/haskell/comments/6t2esp/haskell_flatris/][Haskell Flatris : haskell]]"
    :dependencies ["haskell-miso/miso"]))
(hoarder:fetch "pineapple-tracker/pineapple-tracker"
  '(:description "A console-based sequencer with a vi-style UI"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6t18o1/xmonad_antiunixporn_bright_colors_messy_aesthetic/][Too Many Requests]]"))
(hoarder:fetch "huytd/hackernews-rss-reader"
  '(:description "Read HackerNews's RSS feed"
    :memo "[[https://www.reddit.com/r/rust/comments/6t64p7/hackernews_reader_in_rust/][Too Many Requests]]"
    :site "https://codedaily.xyz/"))
(hoarder:fetch "https://gist.github.com/6b99d27f666aeea71cc532d2543a6901.git"
  '(:name "origami.hs"
    :memo "[[https://www.reddit.com/r/haskell/comments/6t1dan/origamic_fold_%E3%83%84/][Too Many Requests]]"))
(hoarder:fetch "vadimdemedes/pronto"
  '(:description "⚡ The now.sh experience for databases"))
(hoarder:fetch "Jamessmith3125/EHentai-Downloader"
  '(:description "Downloads and filters downloaded content from e-hentai.org"))
(hoarder:fetch "hakerdefo/pmrp"
  '(:description "pmrp (Poor Man's Radio Player) - Probably best Internet radio player script."
    :memo "[[https://www.youtube.com/watch?v=eiiSKGaCfus&app=desktop][pmrp - Poor Man's Radio Player - Linux CLI - YouTube]]"))
(hoarder:fetch "gnustep/core"
  '(:description "Contains references to core libraries for convenience: libs-gui, libs-base, libs-make, libs-back"))
(hoarder:fetch "etoile/Etoile"
  '(:description "Aggregate repository to check out and build all Étoilé subproject repositories"))
(hoarder:fetch "funcool/buddy-hashers"
  '(:description "Collection of password hashers."
    :tags ["clojure" "crypto-library" "password-hash" "password-hasher"]
    :memo "[[https://github.com/funcool/buddy-hashers/blob/master/src/clojure/buddy/hashers.clj#L64][buddy-hashers/hashers.clj at master · funcool/buddy-hashers · GitHub]]"))
(hoarder:fetch "joshua-stone/DerPyBooru"
  '(:description "Python bindings for Derpibooru's API"
    :site "https://derpibooru.org/"))
(hoarder:fetch "Xe/derpigo"
  '(:description "Derpibooru API bindings in Go"))
(hoarder:fetch "def-/gifstream"
  '(:description "Make interactive games in Haskell using GIF streams that can be shown in the web browser"
    :memo "[[https://hookrace.net/blog/time.gif/][time.gif · HookRace Blog]]"))
(hoarder:fetch "def-/time.gif"
  '(:description "GIF that always shows the current time in UTC"
    :memo "[[https://hookrace.net/blog/time.gif/][time.gif · HookRace Blog]]"))
(hoarder:fetch "git://git.savannah.gnu.org/libreread.git"
  '(:memo "[[https://www.reddit.com/r/selfhosted/comments/6t7k1z/im_building_libreread_a_browserbased_selfhosted/][Too Many Requests]]"))
(hoarder:fetch "majestrate/XD"
  '(:description "standalone i2p bittorrent client"
    :tags ["anonymous" "bittorrent" "i2p"]))
(hoarder:fetch "erlang/rebar3"
  '(:description "Erlang build tool that makes it easy to compile and test Erlang applications and releases."))
(hoarder:fetch "kerl/kerl"
  '(:description "Easy building and installing of Erlang/OTP instances"
    :tags ["erlang" "homebrew" "kerl" "otp-release" "shell"]))
(hoarder:fetch "erln8/erln8"
  '(:description "erln8 v2: the sneaky Erlang version manager"))
(hoarder:fetch "susisu/kinmosa-gen"
  '(:description "きんいろモザイク"
    :memo "[[http://susisu.hatenablog.com/entry/2016/12/21/145611][Node.js でコンソールアプリを作る - Object.create(null)]]"))
(hoarder:fetch "susisu/alice"
  '(:description "Alice sings :notes:"
    :tags ["javascript" "joke"]
    :memo "[[http://susisu.hatenablog.com/entry/2016/12/21/145611][Node.js でコンソールアプリを作る - Object.create(null)]]"))
(hoarder:fetch "git://git.savannah.nongnu.org/backbone.git"
  '(:site "http://www.nongnu.org/backbone/"
    :tags ["gnustep" "nextstep" "openstep"]))
(hoarder:fetch "fapfapfapchan/fapfapfapchan.github.io") 
(hoarder:fetch "wknapik/vpnfailsafe"
  '(:description "IP leak prevention for OpenVPN"
    :tags ["dns-leak" "down-script" "failsafe" "firewall" "firewall-rules" "ip-leak" "iptables" "iptables-rules" "leak" "linux" "openvpn" "openvpn-client" "privacy" "resolv-conf" "routing" "up-script" "vpn"]))
(hoarder:fetch "alireza-amirsamimi/pdmt"
  '(:description "PDMT is a download manager which is written in bash language and it is based on aria2 and improves aria2"
    :tags ["aria2"]))
(hoarder:fetch "persepolisdm/persepolis"
  '(:description "Persepolis Download Manager is a GUI for aria2."
    :tags ["aria2" "bsd" "download-manager" "freebsd" "gnu-linux" "gui" "linux" "macosx" "openbsd" "pyqt5" "python" "python3" "qt5" "wiki" "windows"]))
(hoarder:fetch "sonnyp/aria2.js"
  '(:description "JavaScript library for aria2, \"The next generation download utility.\""))
(hoarder:fetch "mayswind/AriaNg"
  '(:description "AriaNg, a modern web frontend making aria2 easier to use."
    :tags ["aria2" "download" "gui" "html" "javascript" "ui" "web" "web-frontend" "webui"]))
(hoarder:fetch "MoePlayer/DPlayer"
  '(:description ":lollipop: Wow, such a lovely HTML5 danmaku video player"
    :tags ["danmaku" "dplayer" "player" "video"]))
(hoarder:fetch "maysrp/TALD"
  '(:description "使用Aria2作为后端 通过视频来 采集视频作为自己的视频网站:ThinkPHP Aria2 Libav Dplayer"
    :tags ["aria2" "gather"]
    :memo "https://github.com/MoePlayer/DPlayer"))
(hoarder:fetch "reimertz/letswork"
  '(:description "A CLI tool to disable all your distractions"))
(hoarder:fetch "mattn/vim-fz"
  '(:description "Ultra Fast Fuzzy Finder for Vim8"
    :tags ["fuzzyfinder" "vim" "vim8"]))
(hoarder:fetch "masakazu-yanai/char-canvas"
  '(:description "Draw Tool for Ascii Art."))
(hoarder:fetch "sugyan/termburn"
  '(:tags ["terminal"]
    :dependencies ["nsf/termbox-go"]
    :memo "[[http://memo.sugyan.com/entry/2017/08/09/011155][ターミナルでの炎上のさせ方 - すぎゃーんメモ]]
[[https://twitter.com/jagarikin/status/894452278463053824][じゃがりきんさんのツイート: \"～簡単！炎上のさせ方講座～ https://t.co/fKSOXj1Xeb\"]]"))
(hoarder:fetch "meoow/aria2rpc"
  '(:description "Add Downloading Tasks through Aria2 RPC"
    :tags ["aria2"]))
(hoarder:fetch "nmbooker/aria2-tools"
  '(:description "Tools and example settings for using aria2 as a download server"
    :tags ["aria2"]))
(hoarder:fetch "NemoAlex/glutton"
  '(:description "A web client for aria2"
    :tags ["aria2"]))
(hoarder:fetch "mariotaku/aria2-android-client"
  '(:description "Graphics interface of aria2 for Android"
    :tags ["aria2"]))
(hoarder:fetch "aaronduino/asciidots"
  '(:description "AsciiDots - The result of combining ascii art, electrical engineering, and programming"
    :tags ["ascii-art" "esolang" "esoteric-language" "programming-language" "python" "python3"]))
(hoarder:fetch "UnNetHack/UnNetHack"
  '(:description "NetHack fork that is in development"
    :tags ["nethack"]
    :memo "[[https://news.ycombinator.com/item?id=11322591][NetHack: The Greatest Game You Will Ever Play | Hacker News]]"))
(hoarder:fetch "Vanilla-NetHack/NetHack"
  '(:description "Git repository of all released NetHack versions"
    :tags ["nethack"]
    :memo "[[https://news.ycombinator.com/item?id=11322591][NetHack: The Greatest Game You Will Ever Play | Hacker News]]"))
(hoarder:fetch "krajj7/BotHack"
  '(:description "BotHack – A Nethack Bot Framework"
    :tags ["nethack" "taeb" "clojure"]
    :memo "[[https://www.reddit.com/r/nethack/comments/2tluxv/yaap_fullauto_bot_ascension_bothack/][YAAP: full-auto bot ascension (BotHack) : nethack]]
[[https://github.com/krajj7/BotHack/blob/master/src/bothack/player.clj#L359][BotHack/player.clj at master · krajj7/BotHack · GitHub]]
[[https://news.ycombinator.com/item?id=11322941][It&#x27;s so easy, even a computer can do it {1} {1} https:&#x2F;&#x2F;www.reddit.com&#x2F;r&#x2F;nethac... | Hacker ...]]
[[https://taeb.github.io/bots.html][TAEB - Other Bots]]"))
(hoarder:fetch "makegirlsmoe/makegirls.moe_web"
  '(:site "http://make.girls.moe/#/"
    :download nil 
    :memo "http://make.girls.moe/technical_report.pdf")) 
(hoarder:fetch "https://gitlab.com/sortix/sortix.git"
  '(:memo "[[https://twitter.com/sortiecat][Jonas Termansen(@sortiecat)さん | Twitter]]"))
(hoarder:fetch "paulgb/BarbBlock"
  '(:description "Chrome extension which blocks requests to sites which have used legal threats to remove themselves from other blacklists."
    :memo "[[https://news.ycombinator.com/item?id=14997799][Show HN: Extension-blocking domains removed by threat from other blacklists | Hacker News]]"))
(hoarder:fetch "kitsuyui/bamboo-crawler"
  '(:tags ["python" "crawler"])) 
(hoarder:fetch "crackwallsports/CL3Web"
  '(:description "Common Lisp (Lips)3 Web"))
(hoarder:fetch "chrisdone/wish"
  '(:description "A trivial web browser written in Haskell"
    :tags ["cairo" "haskell" "sdl" "sdl2" "web"]))
(hoarder:fetch "masutaka/github-nippou"
  '(:description "Print today's your GitHub action."
    :tags ["dockerized" "octokit"]
    :memo "[[https://masutaka.net/chalow/2017-08-07-1.html][github-nippou v3.0.0 released / マスタカの ChangeLog メモ]]"))
(hoarder:fetch "Siilwyn/awesome-pixel-art"
  '(:description "Curated list of everything awesome around pixel art."
    :tags ["awesome" "awesome-list" "list" "pixel-art"]))
(hoarder:fetch "ai/nanoid"
  '(:description "A tiny, secure URL-friendly unique string ID generator for JavaScript"))
(hoarder:fetch "stathissideris/spectacles"
  '(:description "Lenses for Clojure, checked at runtime using spec."
    :tags ["clojure"]))
(hoarder:fetch "Mashape/kong"
  '(:description ":monkey: The Microservice API Gateway "
    :tags ["api-gateway" "api-management" "apis" "cloud-native" "consul" "docker" "iot" "luajit" "microservice" "microservices" "nginx" "reverse-proxy" "serverless" "service-mesh"]))
(hoarder:fetch "OpenIB/OpenIB"
  '(:description "An infinity fork focused on security."
    :tags ["nextchan" "8chan" "bbs"]))
(hoarder:fetch "BiglySoftware/BiglyBT"
  '(:description "Feature-filled Bittorrent client based on the Azureus open source project"
    :tags ["azureus" "bittorrent" "bittorrent-client" "i2p" "p2p" "torrent" "torrent-client" "torrent-downloader" "torrent-management" "vuze"]))
(hoarder:fetch "owlworks/banquet"
  '(:description "お手軽カードゲームBanquetをコンソール上で遊べるようにした"
    :dependencies ["piotrmurach/tty"]
    :memo "[[http://qiita.com/OwlQiita/items/40703a2f02e73eae45d1][{ruby}gemを使ってテキストベースのゲームを超高速に作る - Qiita]]"))
(hoarder:fetch "https://lab.baconsvin.org/talla/talla.git"
  '(:tags ["onion" "tor"]))
(hoarder:fetch "kaktus/urls"
  '(:description "URL Library for Kaktüs"))
(hoarder:fetch "rubypico/radiko"
  '(:description "Easy access to programs on radiko.jp (unofficial)"
    :memo "[[http://ongaeshi.hatenablog.com/entry/radiko-direct-run][Radikoの番組をRubyPicoから直接開けるようになった - ブログのおんがえし]]"))
(hoarder:fetch "kaktus/db"
  '(:description "Database library of Kaktus"))
(hoarder:fetch "preaction/Log-Any"
  '(:description "Simple, fast Perl logging API compatible with any logging system"
    :memo "[[http://blogs.perl.org/users/preaction/2017/08/logany---now-with-structured-logging.html][Log::Any - Now With Structured Logging | preaction {blogs.perl.org}]]"))
(hoarder:fetch "kozmos/likedb"
  '(:description "Offline bookmarking DB that syncs with Kozmos servers"
    :tags ["javascript" "bookmark" "database"]))
(hoarder:fetch "gobolinux/AbsTK"
  '(:description "The Abstract Toolkit - a widget toolkit for GUI and text-mode applications"))
(hoarder:fetch "nEXT-Browser/nEXT"
  '(:description "nEXT - The fastest productivity web-browser."
    :memo "[[https://www.reddit.com/r/lisp/comments/6rfx9j/seeking_developer_opensource_web_browser/][Too Many Requests]]"))
(hoarder:fetch "grugq/portal"
  '(:description "Personal Onion Router To Assure Liberty"
    :tags ["openwrt"]
    :download nil))
(hoarder:fetch "https://gist.github.com/a09e3fb76a4961fb37c044671c9abd95.git"
  '(:name "README.md"
    :tags ["font" "ttf"]))
(hoarder:fetch "adobe-fonts/source-sans-pro"
  '(:description "Sans serif font family for user interface environments"
    :tags ["font" "opentype-fonts" "otf"]
    :download nil))
(hoarder:fetch "thameera/vimv"
  '(:description "Batch-rename files using Vim"
    :tags ["bash" "mv" "rename" "vim"]
    :memo "[[https://www.reddit.com/r/emacs/comments/6tq2be/do_we_have_something_like_vimv/][Too Many Requests]]"))
(hoarder:fetch "petk/awesome-community"
  '(:description "A curated list of awesome programming, development, technical support and discussion channels, groups, communities, resources and other shiny things"
    :tags ["awesome" "community" "groups"]))
(hoarder:fetch "sindresorhus/file-type"
  '(:description "Detect the file type of a Buffer/Uint8Array"
    :tags ["buffer" "detect" "file" "file-types" "javascript" "magic" "magic-numbers" "nodejs" "uint8array"]))
(hoarder:fetch "fhanau/Efficient-Compression-Tool"
  '(:memo "[[https://lainchan.org/%CE%A9/res/570.html][/Ω/ - Data compression]]")) 
(hoarder:fetch "lainchan-dev/lainchan-dev"
  '(:description "the version of vichan running on lainchan.jp"))
(hoarder:fetch "https://gist.github.com/Alquimerico/a294431f18139eb24191b406b7da4f5b.git"
  '(:memo "[[https://chrome.google.com/webstore/detail/block-site/eiimnmioipafcokbfikbljfdeojpcgbh][Block site - Chrome Web Store]]
[[https://lainchan.org/%CE%BB/res/785.html][/λ/ - What are you working on?]]"
    :name "blocksite_export_2017-04-14.csv"))
(hoarder:fetch "ReinUsesLisp/axes"
  '(:description "Common Lisp extension used to insert symbols inside a template"
    :tags ["common_lisp"]
    :memo "[[https://lainchan.org/%CE%BB/res/3.html][/λ/ - Lisp General: Previously Garbage Collected]]"))
(hoarder:fetch "dpayne/cli-visualizer"
  '(:description "CLI based audio visualizer"
    :memo "[[https://boards.4chan.org/g/thread/61886181#p61916946][/g/ - /twmg/ - Tiling Window Manager General - Technology - 4chan]]"))
(hoarder:fetch "Fugiman/diff.pics"
  '(:description "An image comparison website"))
(hoarder:fetch "https://git.trueelena.org/cgit.cgi/software/lesana"
  '(:tags ["python"]
    :depth nil))
(hoarder:fetch "s31tz/Prty"
  '(:description "Class Library in Perl"))
(hoarder:fetch "houseabsolute/Specio"
  '(:description "Type constraints and coercions for Perl"
    :tags ["moose" "perl"]))
(hoarder:fetch "benkasminbullock/Date-Qreki"
  '(:tags ["perl"])) 
(hoarder:fetch "https://bitbucket.org/carlmig/radio-tray"
  '(:type :hg
    :tags ["python" "radio"]
    :site "http://radiotray.sf.net/"))
(hoarder:fetch "HiTECNOLOGYs/cl-charms"
  '(:description "More up-to-date version of cl-charms. Forked it because it was, apparently, abandoned by author and I couldn't contact him."
    :tags ["common_lisp" "curses"]))
(hoarder:fetch "jonascarpay/apecs"
  '(:description "a fast, type driven, extensible ECS in pure Haskell"
    :tags ["haskell"]))
(hoarder:fetch "tolitius/xml-in"
  '(:description "your friendly XML navigator"
    :tags ["clojure" "xml"]))
(hoarder:fetch "c-bata/go-prompt"
  '(:description "Building a powerful interactive prompt in Go, inspired by python-prompt-toolkit."
    :tags ["cli" "command-line" "go" "golang" "interactive" "prompt" "terminal" "vt100"]
    :memo "[[http://nwpct1.hatenablog.com/entry/go-prompt-and-kube-prompt][python-prompt-toolkitをgolangに移植。kubernetesクライアント作った - c-bata web]]"))
(hoarder:fetch "tumblr/pytumblr"
  '(:description "A Python Tumblr API v2 Client"))
(hoarder:fetch "ryanjay0/miles-deep"
  '(:description "Deep Learning Porn Video Classifier/Editor with Caffe"
    :memo "[[https://8ch.net/hydrus/res/1553.html][/hydrus/ - Reposting from >>>/tech/457184Maybe relevant to your interest.Japan did it.Automatic anime images tagging ...]]"))
(hoarder:fetch "yahoo/open_nsfw"
  '(:description "code for running Model and code for Not Suitable for Work (NSFW) classification using deep neural network Caffe models"
    :memo "[[https://8ch.net/hydrus/res/1553.html][/hydrus/ - Reposting from >>>/tech/457184Maybe relevant to your interest.Japan did it.Automatic anime images tagging ...]]"))
(hoarder:fetch "pfnet/PaintsChainer"
  '(:description "line drawing colorization using chainer"
    :memo "[[https://8ch.net/hydrus/res/1553.html][/hydrus/ - Reposting from >>>/tech/457184Maybe relevant to your interest.Japan did it.Automatic anime images tagging ...]]"))
(hoarder:fetch "rachmadaniHaryono/i2vec_cli"
  '(:description "Use illustration2vec.net from cli"
    :memo "[[https://8ch.net/hydrus/res/1553.html][/hydrus/ - Reposting from >>>/tech/457184Maybe relevant to your interest.Japan did it.Automatic anime images tagging ...]]"))
(hoarder:fetch "JetBoom/boorutagparser"
  '(:description "Copy current post tags and rating on boorus and illustration2vec in to the clipboard for easy import in to a program or another booru."
    :memo "[[https://8ch.net/hydrus/res/1914.html][/hydrus/ - Tag parser script]]"))
(hoarder:fetch "JetBoom/boorutagparser-server"
  '(:description "Saves requests from github.com/jetboom/boorutagparser as file/tag list pairs for extremely easy bulk import of tagged items in to Hydrus Network."
    :memo "[[https://8ch.net/hydrus/res/1914.html][/hydrus/ - Tag parser script]]"))
(hoarder:fetch "fph/bastet"
  '(:description "Evil falling block game. http://fph.altervista.org/prog/bastet.html"
    :memo "[[https://www.cyberciti.biz/open-source/bastet-tetrisr-clone-game-for-linux-unix-console/][Linux/Unix desktop fun: Bastet Tetris(r) clone with block-choosing AI for console – nixCraft]]"))
(hoarder:fetch "mohemohe/sshconf"
  '(:description "~/.ssh/conf.d/**/*.sshconf into ~/.ssh/config"))
(hoarder:fetch "ewilderj/doap"
  '(:description "RDF schema for describing software projects"
    :memo "https://pypi.python.org/pypi"))
(hoarder:fetch "davep/delpa"
  '(:description "davep's personal emacs package repository"
    :tags ["elpa" "package"]))
(hoarder:fetch "trevordmiller/nova-colors"
  '(:description "Single source of truth to consume Nova color values"
    :tags ["color-scheme" "colors" "flat" "nova" "pastel"]))
(hoarder:fetch "trevordmiller/nova-vim"
  '(:description "Nova color scheme plugin for Vim"
    :tags ["vim" "vim-colors" "vim-colorscheme" "vim-plugin"]))
(hoarder:fetch "transloadit/uppy"
  '(:description "The next open source file uploader for web browsers :dog: "
    :tags ["es6" "file-uploads" "javascript" "mit" "modular" "open-source" "resumable" "tus" "webbrowser"]
    :download nil
    :memo "[[http://www.moongift.jp/2017/08/uppy-%E3%82%AF%E3%83%A9%E3%82%A6%E3%83%89%E3%82%B9%E3%83%88%E3%83%AC%E3%83%BC%E3%82%B8%E3%82%82%E4%BD%BF%E3%81%88%E3%82%8B%E9%AB%98%E6%A9%9F%E8%83%BD%E3%81%AA%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB/][Uppy - クラウドストレージも使える高機能なファイルアップローダー MOONGIFT]]"))
(hoarder:fetch "pgrho/open-graph"
  '(:tags ["dotnet" "xml" "graph"])) 
(hoarder:fetch "gilbitron/Raneto"
  '(:description "Markdown powered Knowledgebase for Nodejs"
    :tags ["knowledgebase" "markdown" "node"]))
(hoarder:fetch "nasa/openmct"
  '(:description "A web based mission control framework. "
    :memo "[[https://formidable.com/blog/2017/introducing-electron-webpack-dashboard/]]"))
(hoarder:fetch "FormidableLabs/electron-webpack-dashboard"
  '(:description "Electron Desktop GUI for Webpack Dashboard"
    :tags ["dashboard" "electron" "webpack" "webpack-dashboard"]
    :memo "[[https://formidable.com/blog/2017/introducing-electron-webpack-dashboard/]]"))
(hoarder:fetch "NixOS/nix")
(hoarder:fetch "https://bitbucket.org/pymaximus/catmacs.git"
  '(:description "This is an extension to Emacs to support CAT control of Yaesu Transceivers.
Currently a work in progress, but quite usable. Initial focus is on FT991(A) Transceiver."))
(hoarder:fetch "vscode-icons/vscode-icons"
  '(:description "Icons for Visual Studio Code"
    :tags ["icon-theme" "icons-provider" "vscode" "vscode-extension" "vscode-icons"]
    :download nil))
(hoarder:fetch "kjunichi/imgtype"
  '(:description "imgcat for Windows"
    :tags ["cmd" "golang" "imgcat" "windows"]
    :memo "[[http://abrakatabura.hatenablog.com/entry/2017/08/19/093906][Go言語でコマンドプロンプトに画像を表示するコマンドを作って、Vimの:terminalで表示させた - non vorrei lavorare]]"))
(hoarder:fetch "sue445/tweet_sanitizer"
  '(:description "sanitize tweet"
    :tags ["twitter-api"]
    :memo "[[http://sue445.hatenablog.com/entry/2017/08/18/133158][tweet_sanitizerというgemを作った - くりにっき]]"))
(hoarder:fetch "hyperfiddle/hypercrud.browser"
  '(:description "client/server data interface, for composable UIs"
    :memo "[[http://hyperfiddle.net/][Hyperfiddle]]"
    :tags ["datomic" "clojure"]))
(hoarder:fetch "exAspArk/batch-loader"
  '(:description ":zap: Powerful tool to avoid N+1 DB or HTTP queries"
    :tags ["batching" "dataloader" "gem" "graphql" "graphql-ruby" "n-plus-1" "nplus1" "ruby"]))
(hoarder:fetch "moelib/moelib.github.io"
  '(:description "moe library"))
(hoarder:fetch "SPICE/spice-gtk"
  '(:description "spice client library using glib and gtk, please send patches to spice-devel ML"
    :memo "[[https://www.youtube.com/watch?v=VUQYs72hrbM][2017 SPICE: New ways to remote desktops with GStreamer integration - YouTube]]"
    :tags ["rdp" "remote_desktop"]))
(hoarder:fetch "w3c/wcag"
  '(:description "Web Content Accessibility Guidelines"
    :memo "[[https://www.youtube.com/watch?v=yut-b2bxhOs][2017 Standards für barrierefreie Webseiten - YouTube]]"))
(hoarder:fetch "mapnik/mapnik"
  '(:description "Mapnik is an open source toolkit for developing mapping applications"
    :tags ["c-plus-plus" "cartography" "gis" "mapnik" "mapping" "python" "wiki"]
    :memo "[[https://www.youtube.com/watch?v=61Z9BwgOvJM][2017 Rendering map data with Mapnik and Python - YouTube]]"))
(hoarder:fetch "Katello/katello"
  '(:description "Katello integrates open source systems management tools into a single solution for controlling the lifecycle of your machines."
    :tags ["content-management" "docker" "foreman" "katello" "puppet" "rpm"]
    :memo "[[https://www.youtube.com/watch?v=niytKztXN_Q][2017 Lifecycle-Management mit Foreman und Katello - YouTube]]"))
(hoarder:fetch "akless/ccm"
  '(:description "Client-side Component Model (ccm)"
    :memo "[[https://www.youtube.com/watch?v=kCdsBFbAQqY][2017 Modular Web - YouTube]]"))
(hoarder:fetch "TheUbuntuGuy/zfs-backup-manager"
  '(:description "Automatic ZFS Backup Management Tool"
    :tags ["backup" "dataset" "pool" "ssh" "zfs" "zfs-backup"]
    :memo "[[https://www.youtube.com/watch?v=Br-KFix7o1I][How I Backup My Data - YouTube]]"))
(hoarder:fetch "https://gist.github.com/stengland/8705765.git"
  '(:name "BBC-Radio.m3u"))
(hoarder:fetch "singy15/ministg"
  '(:description "Minimal shoot'em up"
    :memo "[[http://qiita.com/kedama17/items/05458498aeb436cb1a5f][Common Lisp + OpenGLでSTGを作った - Qiita]]"))
(hoarder:fetch "https://gitlab.com/Numergent/memento.git"
  '(:tags ["clojure"]
    :memo "[[https://www.reddit.com/r/Clojure/comments/6u1haa/memento_private_notetaking_for_thoughts_you_may/][Too Many Requests]]"))
(hoarder:fetch "roman01la/prum"
  '(:description "ClojureScript's Rum with Preact.js instead of React"
    :memo "[[https://www.reddit.com/r/Clojure/comments/6unukd/are_there_libraries_like_sablano_but_for_vue/][Are there libraries like sablano but for vue, mithril, etc? : Clojure]]"))
(hoarder:fetch "johnjago/awesome-uncopyright"
  '(:description "Curated list of all things public domain."
    :tags ["awesome" "awesome-list" "cc0" "freedom" "public-domain" "uncopyright" "unlicense"]))
(hoarder:fetch "dweidenfeld/plexdrive"
  '(:description "Plexdrive mounts your Google Drive FUSE filesystem (optimized for media playback)"
    :memo "[[https://www.reddit.com/r/PlexDrive/][Plex on Google Drive]]"))
(hoarder:fetch "codelibs/fess"
  '(:description "Fess is very powerful and easily deployable Enterprise Search Server."
    :tags ["crawler" "elasticsearch" "enterprise-search" "enterprise-software" "full-text-search" "fulltext-search" "java" "lastaflute" "lucene" "search" "search-engine"]
    :memo "[[https://www.youtube.com/watch?v=G9rLrqkm41Q][2017 OpenSource Search Engines - YouTube]]"))
(hoarder:fetch "jaeksoft/opensearchserver"
  '(:description "Open-source Enterprise Grade Search Engine Software"
    :tags ["crawler" "custom-search" "enterprise" "indexing" "java" "lucene" "ocr" "opensearchserver" "search" "search-engine" "synonyms" "webcrawler" "webcrawling"]
    :memo "[[https://www.youtube.com/watch?v=G9rLrqkm41Q][2017 OpenSource Search Engines - YouTube]]"))
(hoarder:fetch "numixproject/numix-icon-theme-square"
  '(:description "  Linux packaging for Numix Square"
    :download nil))
(hoarder:fetch "Epictek/dotfiles"
  '(:description "<3 Dotfiles"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6v69g0/bspwm_cyber/][{bspwm} Cyber : unixporn]]"))
(hoarder:fetch "sneakertack/nvar"
  '(:description "Reads shell environment variables from a file and assigns them to `process.env` (or anywhere else)."
    :tags ["config" "configuration-management" "env" "environment-variables" "init" "node" "settings" "shell"]
    :memo "[[https://www.youtube.com/watch?v=MWOpWzOG3vw][JavaScript library to parse Shell variable declarations - SG Hack & Tell - YouTube]]"))
(hoarder:fetch "OpenRefine/OpenRefine"
  '(:description "OpenRefine is a free, open source power tool for working with messy data and improving it"
    :download nil
    :tags ["linked_data" "database" "sparql" "rdf" "visualisation"]
    :memo "[[https://www.youtube.com/watch?v=xPIQBEZvz9g][Practical Work in Linked Data using Digital Collections: Unleashing the Expressivity of Data - YouTube]]"))
(hoarder:fetch "Esri/esri-leaflet"
  '(:description "A lightweight set of tools for working with ArcGIS services in Leaflet."
    :tags ["arcgis" "esri" "esri-leaflet" "javascript" "leaflet-plugins" "web-development" "linked_data"]
    :memo "#thescienceofwhere
[[https://www.youtube.com/watch?v=XrU8GX7manc&app=desktop][The Science of Where - Unlock Data’s Full Potential - YouTube]]"))
(hoarder:fetch "postmarketOS/pmbootstrap"
  '(:description "Sophisticated chroot/build/flash tool to develop and install postmarketOS"
    :tags ["alpine-linux" "cross-compilation" "postmarketos" "smartphone" "touchscreen"]
    :site "https://postmarketos.github.io/"))
(hoarder:fetch "nikitavoloboev/my-mac-os"
  '(:description "💻 a list of applications, alfred workflows and various tools that make my macOS experience even more amazing "
    :tags ["alfred" "applications" "curated" "favourite" "gif" "karabiner" "km" "mac-setup" "macos" "macros" "personal"]))
(hoarder:fetch "ContinuumIO/anaconda-recipes"
  '(:description "Continuum managed recipes for free anaconda packages."
    :tags ["python"]
    :memo "[[http://qiita.com/y__sama/items/5b62d31cb7e6ed50f02c][データサイエンティストを目指す人のpython環境構築 2016 - Qiita]]
[[http://www.wazalab.com/2017/06/22/2017%E5%B9%B4python%E7%92%B0%E5%A2%83%E8%A8%AD%E5%AE%9Aandacondavirtualenvcookiecutter/][2017年Python環境設定 – andaconda/virtualenv/cookiecutter/dotenv | Waza Lab]]"))
(hoarder:fetch "rbtnn/mstdn-picker"
  '(:tags ["mastodon"])) 
(hoarder:fetch "ayojs/ayo"
  '(:description "It's pronounced like \"IO\" would be in English"
    :download nil))
(hoarder:fetch "CopperheadOS/platform_build"
  '(:tags ["android"])) 
(hoarder:fetch "jscl-project/jscl"
  '(:description "A Lisp-to-Javascript compiler bootstrapped from Common Lisp"
    :tags ["common-lisp" "javascript-compiler" "javascript"]))
(hoarder:fetch "wd-shiroma/tooterminal"
  '(:description "CiscoIOSライクなコマンドでマストドンが出来るWebクライアント"
    :tags ["mastodon"]
    :memo "[[http://www.itmedia.co.jp/news/articles/1708/22/news126.html][IOS���}�X�g�h���N���C�A���g�uTooterminal�v - ITmedia NEWS]]"))
(hoarder:fetch "zerotier/ZeroTierOne"
  '(:description "A Smart Ethernet Switch for Earth"
    :memo "[[http://rebuild.fm/189/][Rebuild: 189: Server-side Emacs (typester)]]"
    :site "https://www.zerotier.com/"))
(hoarder:fetch "justjanne/powerline-go"
  '(:description " A beautiful and useful low-latency prompt for your shell, written in go"
    :tags ["bash" "color-scheme" "developer-tools" "fish" "go" "powerline" "shell" "theme" "zsh"]))
(hoarder:fetch "mjbp/storm-adaptive-background"
  '(:description "Find the dominant colours in an image and set one as the background colour of a DOM element"))
(hoarder:fetch "epicmaxco/vuestic-admin"
  '(:description "Vue.js admin dashboard"
    :tags ["admin-dashboard" "admin-panel" "bootstrap4" "dashboard" "es6" "vue" "vue-router" "vue2" "vuejs" "vuex"]
    :memo "[[http://www.moongift.jp/2017/08/vuestic-vue-js%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%9F%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E7%AE%A1%E7%90%86%E7%94%BB%E9%9D%A2%E3%83%86%E3%83%B3%E3%83%97%E3%83%AC%E3%83%BC%E3%83%88/][VUESTIC - Vue.jsを使ったシステム管理画面テンプレート MOONGIFT]]"))
(hoarder:fetch "t-sin/one"
  '(:description "Input processing framework for Common Lisp"
    :tags ["common-lisp" "oneliners"]
    :memo "[[http://octahedron.hatenablog.jp/entry/2017/08/23/033435][One --- 手短に入出力を扱うフレームワーク - octahedron]]
[[http://octahedron.hatenablog.jp/entry/2015/10/03/122136][One --- ワンライナーのための入力処理 - octahedron]]
[[https://www.reddit.com/r/lisp_ja/comments/6vgpe0/one_%E6%89%8B%E7%9F%AD%E3%81%AB%E5%85%A5%E5%87%BA%E5%8A%9B%E3%82%92%E6%89%B1%E3%81%86%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0%E3%83%AF%E3%83%BC%E3%82%AF_octahedron/][One --- 手短に入出力を扱うフレームワーク - octahedron : lisp_ja]]"))
(hoarder:fetch "rsms/interface"
  '(:description "The Interface font family"
    :download nil))
(hoarder:fetch "bounceme/dim-jump"
  '(:description "dumb-jump.el based, search for def"))
(hoarder:fetch "servo/html5ever"
  '(:description "High-performance browser-grade HTML5 parser"))
(hoarder:fetch "carmanaught/mpvcontextmenu"
  '(:description "Context Menu for mpv"))
(hoarder:fetch "Mino-shiro/Minoshiro"
  '(:description "An async Python library for searching Japanese media "
    :tags ["anidb" "anilist" "anime" "api" "api-wrapper" "async" "asyncawait" "asyncio" "kitsu" "library" "lightnovel" "mal" "manga" "myanimelist" "postgresql" "python" "python3" "sqlite" "sqlite3"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6wweml/kde_weeb_setup/][Too Many Requests]]"))
(hoarder:fetch "fredwu/crawler"
  '(:description "A high performance web crawler in Elixir."
    :tags ["crawler" "elixir" "files" "offline" "scraper" "scraper-engine" "spider"]
    :memo "[[https://www.reddit.com/r/elixir/comments/6wzh2u/announcing_crawler_v100_easy_web_crawling/][Too Many Requests]]"))
(hoarder:fetch "webpack/tapable"
  '(:description "Just a little module for plugins."
    :memo "[[https://www.youtube.com/watch?v=NHI_PhoykVU][Sean Larkin - Everything is a plugin!! Mastering webpack from the inside out. - YouTube]]"))
(hoarder:fetch "TheLarkInn/artsy-webpack-tour"
  '(:description "Annotations on webpack source code in a pseudo-guided fashion."
    :tags ["tutorial" "webpack" "webpack-tutorial"]
    :memo "[[https://www.youtube.com/watch?v=NHI_PhoykVU][Sean Larkin - Everything is a plugin!! Mastering webpack from the inside out. - YouTube]]"))
(hoarder:fetch "TheLarkInn/everything-is-a-plugin"
  '(:description "Everything is a Plugin: Mastering webpack from the inside out. NgConf 2017"
    :tags ["webpack" "webpack-boilerplate" "webpack-plugin" "webpack-tutorial" "webpack2"]
    :memo "[[https://www.youtube.com/watch?v=NHI_PhoykVU][Sean Larkin - Everything is a plugin!! Mastering webpack from the inside out. - YouTube]]"))
(hoarder:fetch "mikeal/r2"
  '(:description "HTTP client. Spiritual successor to request."))
(hoarder:fetch "snwh/suru-icon-theme"
  '(:description "Suru Icon Theme"
    :tags ["freedesktop" "icons"]
    :download nil
    :site "https://snwh.org/suru"))
(hoarder:fetch "cowbell/mopster"
  '(:description "Mopidy client written in Ember.js"
    :tags ["mopidy"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6xcoud/weekly_workshop_20170901/][Too Many Requests]]"))
(hoarder:fetch "mopidy/mopidy-youtube"
  '(:description "Mopidy extension for playing music from YouTube"
    :tags ["mopidy" "mopidy-backend" "python" "youtube-player"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6xcoud/weekly_workshop_20170901/][Too Many Requests]]"))
(hoarder:fetch "nick92/Enso-OS"
  '(:description "a simlple OS deisgned for aging computers"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6xdbo6/lightdm_showing_my_login_some_love/][Too Many Requests]]"))
(hoarder:fetch "nick92/tranqil"
  '(:description "Soothing sounds of nature"))
(hoarder:fetch "https://gist.github.com/budRich/16765b5468201aa734d0ec1c0870fd0c.git"
  '(:name "i3zen"
    :tags ["i3wm" ]
    :memo "[[https://www.reddit.com/r/i3wm/comments/6x8ajm/oc_i3zen/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/6xbdtk/oci3_i3zen/][{OC}{i3} i3zen : unixporn]]"))
(hoarder:fetch "Dither/full-text-rss"
  '(:description "Full-Text RSS can transform partial feeds to deliver the full content stripped of clutter and ads"
    :tags ["extraction" "fulltext" "rss" "rss-feed-parser"]))
(hoarder:fetch "https://gitlab.com/ralt/avesh.git"
  '(:memo "[[https://www.reddit.com/r/emacs/comments/48opk1/eshell_and_why_cant_i_convert_to_you/][Too Many Requests]]"))
(hoarder:fetch "SolarSupremacy/sOS"
  '(:description "Solar Operating System - The ASCII OS nobody asked for."
    :memo "[[https://www.reddit.com/r/programming/comments/6y4zmv/sos_the_ascii_operating_system_nobody_asked_for/][Too Many Requests]]
[[https://www.reddit.com/r/lua/comments/6yc4ib/sos_lua_os_posted_about_below_requesting/][sOS (Lua OS, posted about below) - Requesting developers. : lua]]"))
(hoarder:fetch "nightsense/seabird"
  '(:description "a vim and terminal theme based on hue 204 (blue, blue...)"
    :tags ["elementary-os" "gnome-terminal-themes" "gvim" "iterm-theme" "iterm2-theme" "macvim" "neovim" "osx-terminal"
           "osx-terminal-themes" "pantheon-terminal" "terminal-colours" "terminal-theme" "true-color" "truecolor" "vim"
           "vim-colorscheme" "vim-theme" "white" "xresources"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6y2mat/herbstluftwm_i_like_trees/][Too Many Requests]]"))
(hoarder:fetch "smugdev/smugboard"
  '(:description "An IPFS-based imageboard"
    :memo "http://localhost:8080/ipns/client.smugchan.org/#Qmf9QKURJVU53mzmysAFAR3mj48dLXqS2rNpq2o41EugcV/tech
[[https://8ch.net/tech/res/785171.html][/tech/ - IPFS-based Imageboard]]"))
(hoarder:fetch "kanryu/quickviewer"
  '(:description "A image viewer application for folders/archives, it can show images very fast"
    :tags ["c-plus-plus" "comic" "image-processing" "linux-app" "manga" "opengl" "qt" "qt5" "viewer"]))
(hoarder:fetch "clonos/cp"
  '(:description "ClonOS WEB control panel (CBSDWEB)"
    :tags ["bhyve" "cbsd" "clonos" "freebsd" "jail" "virtualization"]
    :memo "[[https://www.youtube.com/watch?v=laJscHA0H2Y][ClonOS: FreeBSD jail and bhyve management, very first overview - YouTube]]"))
(hoarder:fetch "ofek/hatch"
  '(:description "A modern project, package, and virtual env manager for Python"
    :tags ["cleanup" "cli" "coverage" "packaging" "productivity" "project-template" "python" "testing" "versioning" "virtualenv"]))
(hoarder:fetch "nvllsvm/emby-unlocked"
  '(:description "Emby with the premium Emby Premiere features unlocked."
    :memo "[[https://www.reddit.com/r/emby/comments/6yb7x9/someone_is_making_a_tool_to_bypass_the_10s_wait/][Someone is making a tool to bypass the 10s wait time : emby]]"))
(hoarder:fetch "Kthulu120/liquid_dl"
  '(:description "Liquid-dl is a simple tool for utlities such as FFMPEG, youtube-dl, and scdl. It provides a simple framework with simple point and click options allowing users to just click on what they need and use the bare minimum commands to get the results needed."
    :download nil
    :tags ["django" "django-application" "ffmpeg" "python" "react" "soundcloud" "soundcloud-dl" "youtube-dl"]
    :memo "[[https://www.reddit.com/r/DataHoarder/comments/6y6qs0/i_made_this_by_request_as_a_server_application/][Too Many Requests]]"))
(hoarder:fetch "zwhitchcox/pers"
  '(:memo "[[https://www.reddit.com/r/github/comments/6ybpuj/pers_lets_you_easily_create_and_delete_github/][Too Many Requests]]"
    :tags ["github" "javascript"])) 
(hoarder:fetch "dmulholland/ironclad"
  '(:description "A command line password manager."
    :memo "[[https://www.reddit.com/r/commandline/comments/6y6xhr/ironclad_a_command_line_password_manager/][Ironclad: a command line password manager : commandline]]"))
(hoarder:fetch "grocid/gtile"
  '(:tags ["tiling" "tiling-scripts" "tiling-window" "tiling-window-manager"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6y3kmn/ubuntu_mate_i_made_a_macos_theme_for_mate/dml1lst/][grocid comments on {Ubuntu Mate} I made a macOS theme for MATE]]"))
(hoarder:fetch "grocid/macOS-Arc"
  '(:description "A macOS-variant of the Arc Theme"
    :tags ["macos" "mate-desktop" "theme" "ubuntumate"]
    :download nil
    :memo "[[https://www.reddit.com/r/unixporn/comments/6y3kmn/ubuntu_mate_i_made_a_macos_theme_for_mate/][{Ubuntu Mate} I made a macOS theme for MATE : unixporn]]"))
(hoarder:fetch "wasamasa/nov.el"
  '(:description "Major mode for reading EPUBs in Emacs"
    :memo "[[https://www.reddit.com/r/emacs/comments/6ygecr/novel_major_mode_for_reading_epubs_in_emacs/][Too Many Requests]]"))
(hoarder:fetch "justinethier/cyclone"
  '(:description ":cyclone: A brand-new compiler that allows practical application development using R7RS Scheme."
    :tags ["c" "compiler" "cyclone-scheme" "garbage-collector" "r7rs" "scheme"]))
(hoarder:fetch "leftmike/foment"
  '(:description "Foment is an implementation of R7RS Scheme."))
(hoarder:fetch "chasinglogic/dfm"
  '(:description "A dotfile management tool for pair programmers."
    :memo "[[https://www.reddit.com/r/emacs/comments/6ypueb/how_can_i_sync_emacs_config_across_multiple/dmpkq7c/][ChasingLogic comments on How can I sync Emacs config across multiple machines?]]"))
(hoarder:fetch "evenchange4/micro-medium-api"
  '(:description "Microservice for fetching the latest posts of Medium with GraphQL."
    :tags ["apollo-server" "docker" "graphql" "graphql-tools" "medium" "micro" "microservice" "now" "pkg" "zeit"]))
(hoarder:fetch "voten-co/voten"
  '(:description "The code that powers voten.co"
    :tags ["bookmarking" "laravel" "reddit" "social" "social-bookmarking" "social-network" "vuejs"]
    :site "https://voten.co/"
    :memo "[[https://www.reddit.com/r/emacs/comments/6yrl25/reddit_is_closing_its_source_code_time_to_switch/dmr1whu/][Too Many Requests]]"))
(hoarder:fetch "https://gitlab.com/edgyemma/raddit-app"
  '(:type :git
    :memo "[[https://www.reddit.com/r/emacs/comments/6yrl25/reddit_is_closing_its_source_code_time_to_switch/dmpxel6/][Too Many Requests]]"))
(hoarder:fetch "dbuenzli/topkg"
  '(:description "The transitory OCaml software packager"
    :memo "[[http://erratique.ch/software/topkg/doc/Topkg][Topkg]]
[[http://mort.io/blog/2017/08/28/past-present-future/][mort's mythopoeia | Platforms, Packaging, Progress]]
[[https://www.reddit.com/r/ocaml/comments/6xw9yx/platforms_packaging_progress_modernising_a_small/][Too Many Requests]]"))
(hoarder:fetch "addy-dclxvi/Openbox-Theme-Collections"
  '(:description "My Openbox Theme Collections"
    :tags ["openbox"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6yw3je/openbox_owl/][Too Many Requests]]"))
(hoarder:fetch "addy-dclxvi/Tint2-Theme-Collections"
  '(:description "My personal backup repository of Tint2 themes"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6yw3je/openbox_owl/][Too Many Requests]]"))
(hoarder:fetch "addy-dclxvi/Ultimate-Dotfiles"
  '(:description "My personal backup of my dotfiles."
    :memo "[[https://www.reddit.com/r/unixporn/comments/6yw3je/openbox_owl/][Too Many Requests]]
[[https://marcocheung.wordpress.com/][My Arch Way | A Hard Way To Be Great]]"))
(hoarder:fetch "Tomas-M/xlunch"
  '(:description "Graphical app launcher for X with little dependencies"
    :site "http://www.xlunch.org/"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6yu5zm/oc_xlunch_v3_adding_lots_of_customization_options/][Too Many Requests]]"))
(hoarder:fetch "a-schaefers/dotfiles"
  '(:tags ["freebsd" "neofetch"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6yrqbo/i3_palms_finally_made_the_switch_to_freebsd/][Too Many Requests]]")) 
(hoarder:fetch "myfreeweb/unixbar"
  '(:description "Rust library for creating output for UNIX-style desktop bars like i3bar, dzen2, lemonbar"
    :tags ["dzen2" "gui" "i3bar" "lemonbar" "rust"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/6ypqtn/i3_just_chillin_playing_some_zelda/][Too Many Requests]]"))
(hoarder:fetch "sailorhg/fairyfloss"
  '(:description "fairy floss text editor theme"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6ypqtn/i3_just_chillin_playing_some_zelda/][Too Many Requests]]"))
(hoarder:fetch "aoh/owl-lisp"
  '(:description "a functional lisp"))
(hoarder:fetch "blaenk/dots"
  '(:description "my dot files"
    :tags ["dotfiles" "emacs" "vim" "zsh" "general.el"]
    :memo "[[https://github.com/blaenk/dots/blob/master/emacs/.emacs.d/inits/conf/evil.el][dots/evil.el at master · blaenk/dots · GitHub]]"))
(hoarder:fetch "mozilla/qbrt"
  '(:description "CLI to a Gecko desktop app runtime"
    :memo "[[http://www.moongift.jp/2017/09/qbrt-gecko%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E7%89%B9%E5%AE%9A%E3%82%B5%E3%82%A4%E3%83%88%E3%81%A0%E3%81%91%E7%AB%8B%E3%81%A1%E4%B8%8A%E3%81%8C%E3%82%8B/][qbrt - Geckoエンジンを使って特定サイトだけ立ち上がるアプリを生成 MOONGIFT]]"))
(hoarder:fetch "kryptxy/torrench"
  '(:description "Command-line torrent search program (cross-platform)"
    :site "https://kryptxy.github.io/torrench/"
    :memo "[[https://www.reddit.com/r/coolgithubprojects/comments/6z3pcw/torrench_command_line_torrent_search_program/][Too Many Requests]]"))
(hoarder:fetch "https://bitbucket.org/kosovan/theunarchiver"
  '(:type :hg))
(hoarder:fetch "derat/xsettingsd"
  '(:description "Provides settings to X11 applications via the XSETTINGS specification"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6z3dx7/awesomewm_retroinspired_look/][Too Many Requests]]"))
(hoarder:fetch "SnootyMonkey/posthere.io"
  '(:description "Debug all the POST requests!"
    :tags ["clojure" "pattern_matching"]
    :memo "[[https://www.youtube.com/watch?v=n7aE6k8o_BU][Sean Johnson - Pattern Matching in Clojure - YouTube]]"))
(hoarder:fetch "belucid/clj-pattern-matching"
  '(:description "Clojure Pattern Matching: Best Practices"
    :tags ["clojure" "pattern_matching"]
    :memo "[[https://www.youtube.com/watch?v=n7aE6k8o_BU][Sean Johnson - Pattern Matching in Clojure - YouTube]]"))
(hoarder:fetch "SnootyMonkey/Falkland-CMS"
  '(:description "Falkland CMS is a Curation Management System written in Clojure, ClojureScript and CouchDB."
    :tags ["clojure" "pattern_matching"]
    :site "http://falkland-cms.com/"
    :memo "[[https://www.youtube.com/watch?v=n7aE6k8o_BU][Sean Johnson - Pattern Matching in Clojure - YouTube]]"))
(hoarder:fetch "killme2008/defun"
  '(:description "A macro to define clojure functions with parameter pattern matching just like erlang or elixir."
    :tags ["clojure" "clojure-functions" "defun" "pattern-matching" "pattern_matching"]
    :memo "[[https://www.youtube.com/watch?v=n7aE6k8o_BU][Sean Johnson - Pattern Matching in Clojure - YouTube]]"))
(hoarder:fetch "erdos/erdos.match"
  '(:description "clojure structure and type matcher library"
    :tags ["clojure" "clojure-library" "clojure-multimethods" "pattern-matching"]
    :memo "[[https://www.youtube.com/watch?v=uA_fW3GVIYk][The perfect match - YouTube]]"))
(hoarder:fetch "https://gitlab.camlcity.org/gerd/lib-findlib.git"
  '(:tags ["ocaml" "library"]))
(hoarder:fetch "https://bitbucket.org/camlspotter/opamfind"
  '(:type :hg
    :tags ["ocaml" "library"]))
(hoarder:fetch "kokoro-io/kokoro-io-app") 
(hoarder:fetch "mm2/Little-CMS"
  '(:description "A free, open source, CMM engine. It provides fast transforms between ICC profiles."))
(hoarder:fetch "n-kremeris/irix-icons-linux"
  '(:tags ["icon"]
    :download nil
    :memo "[[https://www.gnome-look.org/content/show.php/?content=107478][Retrofukation Icons(fully rewrited) - www.gnome-look.org]]")) 
(hoarder:fetch "fusuya/mogeRPG"
  '(:description "text game"
    :tags ["common_lisp" "game" "ncurces"]
    :memo "[[http://peercasket.herokuapp.com/2017a/circle/2802][きゃすけっと2017秋]]"))
(hoarder:fetch "lk-geimfari/wasserstoff"
  '(:description "Wasserstoff - is a library that help you store your configurations for applications in JSON files. "
    :tags ["config" "dev" "phases" "production" "settings" "test" "wasserstoff"]))
(hoarder:fetch "vikstrous/pirate-get"
  '(:description "A command line interface for The Pirate Bay"
    :memo "[[https://www.reddit.com/r/unixporn/comments/70dyqk/torrent_client/][Too Many Requests]]"))
(hoarder:fetch "ollej/vim-emacs"
  '(:description "vim.emacs is a vim plugin to evaluate elisp expressions in Emacs."))
(hoarder:fetch "simenheg/dog"
  '(:description "Dungeon crawler, still in its infancy"
    :tags ["common_lisp" "game"]))
(hoarder:fetch "mrchimp/mdr"
  '(:description "Terminal markdown reader with color."
    :memo "[[http://www.moongift.jp/2014/09/mdr-%E3%82%BF%E3%83%BC%E3%83%9F%E3%83%8A%E3%83%AB%E3%81%A7%E3%82%82markdown%E3%82%92%E8%AA%AD%E3%81%BF%E3%82%84%E3%81%99%E3%81%8F/][mdr·ターミナルでもMarkdownを読みやすく MOONGIFT]]"))
(hoarder:fetch "axel-download-accelerator/axel"
  '(:description "light command line download accelerator"
    :tags ["accelerate" "downloader" "light"]))
(hoarder:fetch "boutiques/boutiques"
  '(:description "JSON schema and tools for boutiques application descriptors."
    :tags ["json-schema"]))
(hoarder:fetch "tc39/proposal-import-meta"
  '(:description "import.meta proposal for JavaScript"
    :tags ["javascript" "library" "package"]))
(hoarder:fetch "lfex/los"
  '(:description "LFE Object System"
    :tags ["lfe"]))
(hoarder:fetch "lfex/lxml"
  '(:description "LFE XML wrapper for erlsom"
    :tags ["lfe"]))
(hoarder:fetch "lfex/clj"
  '(:description "MERGED to LFE - Clojure-inspired macros and functions for use in LFE"
    :tags ["lfe"]
    :memo "[[https://github.com/lfe/lfe/blob/develop/doc/lfe_clj.txt][lfe/lfe_clj.txt at develop · lfe/lfe · GitHub]]"))
(hoarder:fetch "lfex/loise"
  '(:description "A port of the Racket \"noise\" library to LFE"
    :tags ["lfe"]))
(hoarder:fetch "lfex/kla"
  '(:description "An LFE Wrapper Library used to Dress Up Erlang Libraries in a Lispy Costume"
    :tags ["lfe"]))
(hoarder:fetch "lfex/lcfg"
  '(:description "The LFE library for managing and using lfe.config files"
    :tags ["lfe"]))
(hoarder:fetch "lfe/lfe"
  '(:description "Lisp Flavoured Erlang (LFE)"
    :tags ["lfe"]))
(hoarder:fetch "nana-4/Flat-Plat"
  '(:description "A Material Design-like theme for GNOME/GTK+ based desktop environments."
    :tags ["chrome-theme" "gnome-theme" "gtk-theme" "material" "material-design" "theme"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/70rpjg/any_gnome_setup_as_consistent_as_arc_with_nord/][Too Many Requests]]"))
(hoarder:fetch "znst/znst.github.io"
  '(:description "startpage"
    :site "https://znst.github.io/startpage"
    :memo "[[https://www.reddit.com/r/unixporn/comments/70nfjx/i3gaps_another_lit_night/][Too Many Requests]]"))
(hoarder:fetch "slewsys/tagg"
  '(:description "Twitter Aggregator"
    :tags ["twitter"]))
(hoarder:fetch "OpenUserJs/OpenUserJS.org"
  '(:description "The home of FOSS user scripts."
    :tags ["express" "expressjs" "javascript" "mvc" "node" "nodejs" "online-expected" "userscript-management" "webapp"]))
(hoarder:fetch "friendlyanon/GelbooruEnhancement"
  '(:description "Image Viewer and Endless Scroll userscripts for Gelbooru and various other boorus"
    :tags ["anime" "booru" "booru-image-viewer" "e621" "endless-scroll" "gallery" "gelbooru" "image-viewer" "javacript" "konachan" "lewd" "loli" "manga" "paheal" "r18" "rule34" "sankakuchannel" "sankakucomplex" "userscript" "yandere"]))
(hoarder:fetch "simplebsd/sif"
  '(:description "Services installer on FreeBSD"
    :tags ["freebsd"]
    :memo "[[https://www.youtube.com/watch?v=Bunti5my3dU][Sif - автоматическая установка сервисов на FreeBSD - YouTube]]"))
(hoarder:fetch "dylanaraps/openbox-patched"
  '(:description "PKGBUILD and patches for Openbox with Rounded Corners"
    :tags ["openbox"]
    :memo "[[https://boards.4chan.org/g/thread/62519946][/g/ - Hi /g/ I just installed gentoo can someone spoonfe - Technology - 4chan]]
[[https://www.reddit.com/r/unixporn/comments/6t819t/openbox/][{openbox} 🌹 : unixporn]]"))
(hoarder:fetch "nilesr/braille-art"
  '(:memo "[[https://hastebin.com/raw/azopisorav]]
[[https://boards.4chan.org/g/thread/62506355][/g/ - Found out you can set up a banner for SSH. Post mo - Technology - 4chan]]
[[https://www.imagemagick.org/Usage/quantize/#monochrome][Quantization -- IM v6 Examples]]")) 
(hoarder:fetch "Mark-Weston/shitpost"
  '(:description "A CLI tool to ease shitposting on 4chan"))
(hoarder:fetch "chyves/chyves"
  '(:description "Resource manager for bhyve using ZFS."
    :tags ["freebsd" "zfs" "bhyve"]))
(hoarder:fetch "PacBSD/abs"
  '(:description "Collection of PKGBUILDS for PacBSD"
    :tags ["bsd" "operating-systems" "packages" "shell"]
    :memo "[[https://www.youtube.com/watch?v=6W4UkZEfvLw][Porting a Linux Package Manager to PacBSD w/ Adam Jimerson - YouTube]]"))
(hoarder:fetch "railsware/upterm"
  '(:description "A terminal emulator for the 21st century."
    :tags ["console" "electron" "pty" "react" "shell" "terminal" "terminal-emulators" "terminals" "tty" "typescript"]
    :memo "[[https://boards.4chan.org/g/thread/62542863][/g/ - Upterm: A terminal emulator for the 21st century built on Electron - Technology - 4chan]]"))
(hoarder:fetch "flightaware/piaware"
  '(:description "Client-side package and programs for forwarding ADS-B data to FlightAware"
    :memo "[[https://boards.4chan.org/g/thread/62549269][/g/ - Raspberry Pi - Technology - 4chan]]"))
(hoarder:fetch "operable/cog"
  '(:description "Bringing the power of the command line to chat"
    :tags ["chatops" "cog" "devops" "elixir-phoenix" "hipchat" "slack" "unix-pipes"]))
(hoarder:fetch "christhekeele/mnemonix"
  '(:description "A unified interface to Elixir and Erlang key/value stores."))
(hoarder:fetch "l333k0/torrtux"
  '(:description "Torrtux is a terminal-based program, written in perl for downloading torrents from The Pirate Bay."))
(hoarder:fetch "dimkr/fbff"
  '(:description "A small ffmpeg-based framebuffer media player (mirror of git://repo.or.cz/fbff.git)"
    :memo "[[https://github.com/dimkr/fbff][GitHub - dimkr/fbff: A small ffmpeg-based framebuffer media player (mirror of git://repo.or.cz/fbff.git)]]"))
(hoarder:fetch "https://gitgud.io/Endwall/Endware.git")
(hoarder:fetch "mateuspv/atom-mnemonic-keybindings") 
(hoarder:fetch "char0n/ramda-adjunct"
  '(:description "Adjunct is a thing added to something else as a supplementary rather than an essential part. And that something is being ramda."
    :tags ["addons" "adjunct" "cookbook" "extensions" "ramda" "recipe"]))
(hoarder:fetch "ptaoussanis/nippy"
  '(:description "High-performance serialization library for Clojure"
    :tags ["clojure" "compression" "edn" "encryption" "epl" "serialization" "taoensso"]))
(hoarder:fetch "dscarpetti/codax"
  '(:description "An idiomatic transactional embedded database for clojure"
    :memo "[[https://www.reddit.com/r/Clojure/comments/71udt1/codax_a_pure_clojure_embedded_database/][Too Many Requests]]"))
(hoarder:fetch "SparkFund/spec-tacular"
  '(:description "Make the border between Clojure and Datomic a more convenient and safe place to live."
    :memo "[[https://www.youtube.com/watch?v=gY0H0KVc_h0][Nathan Sorenson - Domain Specific Type Systems - YouTube]]"))
(hoarder:fetch "takeoutweight/bidirectional"
  '(:description "Complete and Easy Bidirectional Typechecking for for Higher-Rank Polymorphism in Clojure"
    :memo "[[https://www.youtube.com/watch?v=gY0H0KVc_h0][Nathan Sorenson - Domain Specific Type Systems - YouTube]]"))
(hoarder:fetch "clojure/test.check"
  '(:description "QuickCheck for Clojure"
    :memo "[[https://www.youtube.com/watch?v=u0t-6lUvXHo][Gary Fredericks - Purely Random - YouTube]]"))
(hoarder:fetch "gfredericks/test.chuck"
  '(:description "A utility library for test.check"
    :memo "[[https://www.youtube.com/watch?v=u0t-6lUvXHo][Gary Fredericks - Purely Random - YouTube]]"))
(hoarder:fetch "ayato-p/kuuga"
  '(:description "An extensible transformer for Hiccup(-like) data structure"
    :tags ["clojure" "clojurescript" "hiccup" "transformation"]
    :memo "[[https://www.youtube.com/watch?v=PYlW6fHUhYA][Shibuya.lisp Lispmeetup #56 「Common LispによるWebスクレイピング技法」 「Clojure 1.9 概要紹介」 - YouTube]]"))
(hoarder:fetch "pcapriotti/optparse-applicative"
  '(:description "Applicative option parser"
    :tags ["applicative" "haskell" "option-parser"]
    :memo "[[https://www.youtube.com/watch?v=v9QGWbGppis][Functional Programming Patterns for Mere Mortals - Daniel Chambers - YouTube]]"))
(hoarder:fetch "vsrch/dots"
  '(:description "system configuration files"
    :tags ["dotfiles" "rice" "unix"]
    :memo "[[https://github.com/vsrch/dots/blob/master/scripts/watup.sh][dots/watup.sh at master · vsrch/dots · GitHub]]
[[https://www.reddit.com/r/unixporn/comments/71trg8/openbox_rose/][Too Many Requests]]"))
(hoarder:fetch "nathanbuchar/atom-one-dark-terminal"
  '(:description "A Terminal theme that mimics the One Dark theme made by the Atom team."
    :tags ["atom" "iterm" "one-dark" "terminal" "theme" "zsh"]))
(hoarder:fetch "NerdyPepper/chestnut.vim"
  '(:description "Minimal syntax highlighting for 16-color terminals."
    :tags ["atom" "chestnut" "light" "syntax" "vim"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/71pexq/herbstluftwm_chestnut/][Too Many Requests]]"))
(hoarder:fetch "ikeay/otomegokoro-bot"
  '(:description "CodeIQ MAGAZINEの連載のために制作したBotです。"
    :memo "[[https://codeiq.jp/magazine/2017/09/53494/][脱シンプルBot！Chatbotプログラムを最大限活用するためには？_{PR}｜CodeIQ MAGAZINE]]"))
(hoarder:fetch "adobe-fonts/emojione-color"
  '(:description "OpenType-SVG font of EmojiOne 2.3"
    :tags ["color" "emoji" "emojione" "font" "opentype" "opentype-svg-fonts" "svg"]))
(hoarder:fetch "trogdoro/xiki"
  '(:description "A shell console with GUI features"))
(hoarder:fetch "pmai/sha3"
  '(:description "Secure Hash Algorithm 3 (Keccak) Implementation in Common Lisp"))
(hoarder:fetch "sindresorhus/make-dir"
  '(:description "Make a directory and its parents if needed - Think `mkdir -p`"))  
(hoarder:fetch "Misophistful/borealis-cursive-theme"
  '(:description "A Cursive Clojure theme with pastel colours and a dark background"))
(hoarder:fetch "ta2gch/pkgbrew"
  '(:description "non-root package manager"
    :tags ["golang" "packaging" "pkgsrc"]))
(hoarder:fetch "https://gitgud.io/nixx/anime.is-fantabulo.us.git"
  '(:description ""
    :site "http://anime.is-fantabulo.us/"
    :tags ["php" "laravel"]))
(hoarder:fetch "https://gitgud.io/nixx/uguu.git"
  '(:description "it's uguu.se but in Go"
    :tags []))
(hoarder:fetch "https://gitgud.io/softashell/lewdbot-discord.git"
  '(:description "Awful discord bot written in Go"
    :tags []))
(hoarder:fetch "https://gitgud.io/nixx/go-mkv.git"
  '(:description ""
    :tags []))
(hoarder:fetch "https://gitgud.io/nixx/mkvgrep.git"
  '(:description ""
    :tags []))
(hoarder:fetch "pyllyukko/user.js"
  '(:description "user.js -- Firefox configuration hardening"
    :tags ["firefox" "mozilla" "mozilla-firefox" "privacy" "security" "security-hardening"]
    :memo "[[https://boards.4chan.org/g/thread/62624134][/g/ - /fglt/ - Friendly GNU/Linux Thread - Technology - 4chan]]"))
(hoarder:fetch "phocean/TopIcons-plus") 
(hoarder:fetch "reactjs/reselect"
  '(:description "Selector library for Redux"
    :tags ["memoized-selectors" "redux"]))
(hoarder:fetch "thezerobit/monads"
  '(:description "Monads: A Common Lisp Monad Library"))

;;; end

;; http://bazaar.launchpad.net/~acbf-development-team/acbf/trunk/files
;; git://gitorious.org/sly/sly 
;; git://gitorious.org/src-vcs/src-vcs.git 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (hoarder:fetch "https://gist.github.com/david-christiansen/2ba5e03910666ae27203")

;; (hoarder:fetch "https://bitbucket.org/tarballs_are_good/lisp-random.git"
;; '(:tags ["common_lisp"]
;; :type hg))

;; TODO cvs support
;; nethack-el
;; cvs -d:pserver:anonymous@cvs.sv.gnu.org:/sources/nethack-el co . 
;; cvs -z3 -d:pserver:anonymous@cvs.savannah.nongnu.org:/sources/xwem co <modulename>

;; TODO svn support
;; svn checkout svn://svn.code.sf.net/p/porg/code/ porg-code
;; svn checkout http://svn.apache.org/repos/asf/pdfbox/trunk/
;; svn checkout svn://svn.code.sf.net/p/ychan/code/ ychan-code
;; http://pulkomandy.tk/projects/GrafX2/downloads?order=version&desc=1, https://www.reddit.com/r/unixporn/comments/5wheoc/using_fzf_as_app_launcher_bspwm/
;; https://gnunet.org/svn/gnunet/
;; svn checkout https://svn.code.sf.net/p/cbrpager/code/trunk cbrpager-code
;; svn checkout https://svn.code.sf.net/p/ebook-tools/code/trunk ebook-tools-code

;; TODO bzr support
;; TODO http support
;; http://www.loveshack.ukfsn.org/emacs/rfcview.el

;;; init.el ends here
