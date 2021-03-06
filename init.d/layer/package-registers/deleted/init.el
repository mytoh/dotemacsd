;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(hoarder:fetch "https://gitlab.com/blumentritt-sebastian/ryo.git"
  '(:tag ["dotfiles"]))
(hoarder:fetch "inakido/dotfiles"
  '(:tag ["dotfiles" "dwm"]))
(hoarder:register-theme "https://gitlab.com/ghostey/emacs-doomsday-theme.git")

(hoarder:fetch "https://gitlab.com/juki/archer.git"
  '(:tag ["common_lisp" "clojure"]
    :depth nil))

(hoarder:fetch "Verb656/Dotfiles"
  '(:tag ["i3" "yabar"]))

(hoarder:fetch "uwabami/el-get-deb-package"
  '(:tag ["el-get" "debian"]))

(hoarder:fetch "https://gitgud.io/raidh0/beorc-gothic.git"
  '(:tag ["font" "runic"]))

(hoarder:fetch "https://gitlab.com/KNX32542/dotfiles.git"
  '(:tag ["gitlab" "evil" "org" "emacs" "syndicate" "org-babel"]
    :depth nil))

(hoarder:fetch "d2718/dmenu_ex"
  '(:tag ["dmenu" "common_lisp"]))


(hoarder:fetch "https://gist.github.com/mordocai/50783defab3c3d1650e068b4d1c91495.git"
  '(:tag ["firacode" "font" "emacs"]))

(hoarder:fetch "redrifle/FreeView"
  '(:tag ["image" "viewer"]))

(hoarder:fetch "johnmorrisbeck/bashUserRepository"
  '(:tag ["bash" "script"]
    :site "https://www.reddit.com/r/bur/"))


(hoarder:fetch "gabriel-laddel/clim"
  '(:tag ["common_lisp" "mcclim" "gui"]))
(hoarder:fetch "anshicat/dotfiles"
  '(:tag ["firefox" "css"]
    :desc "https://github.com/anshicat/dotfiles/tree/master/css"))
(hoarder:fetch "ewhal/nyaa"
  '(:tag ["golang" "torrent"]))

(hoarder:fetch "l3oncoder/nyaa"
  '(:tag ["torrent" "php"]))

(hoarder:fetch "AlessandroYorba/Monrovia"
  '(:desc "< = > Colorscheme"
    :tag ["vim" "colorscheme"]))
(hoarder:fetch "AlessandroYorba/Sidonia"
  '(:desc "< = > Colorscheme"
    :tag ["vim" "colorscheme"]))
(hoarder:register "cdddr/ewm")
(hoarder:fetch "SickGear/SickGear"
  '(:desc "SickGear is SickBeard evolved. Automate your TV enjoyment with innovation, proven stability and reliability."
    :tag ["usenet"]))
(hoarder:register-theme "vyp/redbelly")
(hoarder:fetch "emacsmirror/mpg123"
  '(:tag ["mpg123"]))
(hoarder:fetch "emacsmirror/windows"
  '(:tag ["window_management"]
    :desc "Window manager for GNU Emacs."))
(hoarder:fetch "https://gitgud.io/Se7en/Network-config.git"
  '(:tag ["configuration"]))
(hoarder:fetch "sotojuan/anilixir"
  '(:tag ["anilist" "elixir"]))
(hoarder:fetch "https://gitgud.io/dtluna/gscli.git"
  '(:tag ["gnu_social" "cli" "python"]))
(hoarder:register "mutbuerger/twitch-streamer"
  '(:tag ["twitch" "livestreamer"]))
(hoarder:register "mutbuerger/ert-flash-modeline"
  '(:tag ["ert" "modeline"]))

(hoarder:register "mbunkus/simple-rtm"
  '(:tag ["org" "remember_the_milk"]
    :load-path "lisp"))

(hoarder:fetch "dulleh/akhyou"
  '(:tag ["anime" "android"]))

(hoarder:register-theme "fommil/darcula-theme-emacs")
(hoarder:fetch "mixflame/livepost"
  '(:desc "LivePost is a live posting site built in Amber and Crystal. And it saves your posts to Mongo"
    :site "http://livepost.mixflame.com/"
    :memo "[[https://8ch.net/tech/res/774042.html][/tech/ - livepost!!!!]]"))
(hoarder:fetch "danielsz/.emacs.d")
(hoarder:fetch "skeeto/emacs-torrent")
(hoarder:fetch "eriknstr/bsd-tar-prefixhack"
  '(:desc "Create non-exploding archive files using BSD tar without first moving or copying files."
    :tag ["bsd" "freebsd" "tar" "archive"]))

(hoarder:fetch "https://gitgud.io/drylemon/bitslut.git"
  '(:tags ["torrent" "libtorrent"]))

(hoarder:fetch "KingSann/CLD"
  '(:tags ["common_lisp" "database"]))

(hoarder:fetch "vsrch/dots"
  '(:description "system configuration files"
    :tags ["dotfiles" "rice" "unix"]
    :memo "[[https://github.com/vsrch/dots/blob/master/scripts/watup.sh][dots/watup.sh at master · vsrch/dots · GitHub]]
[[https://www.reddit.com/r/unixporn/comments/71trg8/openbox_rose/][Too Many Requests]]"))
(hoarder:fetch "thodg/facts"
  '(:description "In-memory graph database for Common Lisp"
    :memo "[[https://www.reddit.com/r/Common_Lisp/comments/69mxkr/facts_small_inmemory_graph_database_for_common/][Too Many Requests]]"))
(hoarder:fetch "merkoba/hue"
  '(:description "Chat room with dynamic image/background and internet radio."))

;; gitla.in

(hoarder:fetch "https://gitla.in/nano/Craft.git"
  '(:tags ["minecraft"]))
(hoarder:fetch "https://gitla.in/zannix/neews.git"
  '(:tags ["common_lisp" "feed"]))
(hoarder:fetch "https://gitla.in/nilesrogoff/lain-ipfs-scraper.git"
  '(:tags ["python" "scraping" "lainchan"]))
;; (hoarder:fetch "https://gitla.in/cosmicpuppet/blog.git"
;;   '(:tags ["lainchan"]))
;; (hoarder:fetch "https://gitla.in/cosmicpuppet/lainchan.rb.git"
;;   '(:memo "[[https://lainchan.org/%CE%BB/res/19446.html][λ - What personal projects have you done lately, /lam/?]]"))
(hoarder:fetch "https://gitla.in/nymphet/Haskell-Common-Lisp.git"
  '(:depth nil
    :tags ["common_lisp" "haskell"]))
(hoarder:fetch "https://gitla.in/Doc0160/kikipedo.git"
  '(:description " a fine lightweight wikipedia clone "
    :tags []))
(hoarder:fetch "https://gitla.in/zannix/zousho.git"
  '(:description ""
    :tags []))
(hoarder:fetch "https://gitla.in/zannix/gakusei.git"
  '(:description ""
    :tags []))
(hoarder:fetch "mfrelink/OpenFLIXR.Wizard"
  '(:tags ["plex"]))
(hoarder:register "tarleb/evil-scout")
(hoarder:fetch "syythe/tangerine"
  '(:tags ["artwiz" "lemon" "font" "bitmap"]
    :memo "[[https://www.reddit.com/r/unixporn/comments/4iuseu/2bwm_nuthatch/d31snhx/][Too Many Requests]]
[[https://www.reddit.com/r/unixporn/comments/4iuseu/2bwm_nuthatch/d31snhx/][Too Many Requests]]"))
(hoarder:fetch "https://gitlab.com/ScriptJunky/ariascrape.git"
  '(:tags ["8chan" "4chan" "aria2"]))
(hoarder:fetch "sxthe/yuki"
  '(:tags ["bitmap" "font"]))
(hoarder:register-theme "matteobanerjee/orpheus-theme")
(hoarder:fetch "QuickBox/QuickBox"
  '(:description "QuickBox is much more than a 'seedbox installer script'... it is a simplistic approach to achieving easy seedbox and services management from a beautifully designed dashboard. Allowing users the ability to interact with their seedbox and server on a professional grade level. With the click of a button users can install packages like Plex, SickRage, BTSync and many more... all this in a seedbox script without spending a dime!"
    :tags ["rutorrent" "torent"]))
(hoarder:fetch "project-fifo/r-vmadm"
  '(:description "vmadm for freebsd jails"
    :tags ["freebsd" "freebsd-jail-manager" "freebsd-jails" "jails" "solaris"]))
(hoarder:register-theme "yuttie/hydrangea-theme")
(hoarder:register-theme "yakovzaytsev/hhazure") 
(hoarder:register-theme "rogermolas/boracay-dark.el")
(hoarder:fetch "sixsixfive/Glare") 
(hoarder:fetch "sora-chan/mpdhanyuu"
  '(:description "An MPD client that learns your tastes in music."
    :tags ["mpd"]))
(hoarder:register "emacsattic/elite"
  '(:tags ["elite" "game"]))
(hoarder:register "mutbuerger/not-from-scratch"
  '(:tags ["scratch"]))
(hoarder:register-theme "d125q/gruvbox-dark-emacs")
(hoarder:register "manuel-uberti/helm-company"
  '(:dependencies ["rejeep/f.el"]
    :tags ["helm" "company"]))
(hoarder:register "emacsmirror/flash-paren"
  '(:tags ["parenthesis" "highlghit"]))
(hoarder:register "uemurax/uzbl-manager.el"
  '(:tags ["uzbl" "browser"]))
(hoarder:register "Alexander-Miller/atomic-container"
  '(:description "A simple atomic container for emacs lisp"
    :tags ["threads"]))
(hoarder:register "SebastianRose/org-osm"
  '(:tags ["org-mode" "osm" "map"]))
(hoarder:register-theme "thomasschimper/violet-dream-theme")
(hoarder:register "bashrc/gnu-social-mode"
  '(:tags ["gnu_social" "twitter" "quitter.se" "gnu" "sns"]))
(hoarder:register "gitlab:cryptomaniac/helm-librarian"
  '(:type :git))
(hoarder:register "jakecoble/org-gamify"
  '(:tags ["emacs lisp"]))

;;; init.el ends here
