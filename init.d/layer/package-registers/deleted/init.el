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

;;; init.el ends here
