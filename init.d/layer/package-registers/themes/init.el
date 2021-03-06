;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;;;;; themes
(hoarder:register "owainlewis/emacs-color-themes")
(hoarder:register "kuanyui/moe-theme.el")
(hoarder:register-theme "caisah/seti-theme")
(hoarder:register-theme "j0ni/phoenix-dark-pink")
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
(hoarder:register-theme "kodx/TangoDark")
(hoarder:register-theme "wasamasa/gotham-theme")
(hoarder:register-theme "oneKelvinSmith/monokai-emacs")
;; (hoarder:register-theme "hbin/molokai-theme")
(hoarder:register-theme "hos/molokai-emacs")
(hoarder:register-theme "jordonbiondo/ample-theme")
(hoarder:register-theme "mjwall/ample-zen")
(hoarder:register-theme "bruce/emacs-spacegray-theme")
;; (hoarder:register-theme "nhunzaker/spacegray-emacs")
(hoarder:register-theme "juba/color-theme-tangotango")
(hoarder:register-theme "ccann/badger-theme")
;; (hoarder:register-theme "xzerocode/hipster-theme")
;; (hoarder:register-theme "xzerocode/aurora-theme")
(hoarder:register-theme "purcell/hipster-theme")
(hoarder:register-theme "purcell/aurora-theme")
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
(hoarder:register-theme "https://framagit.org/steckerhalter/grandshell-theme.git")
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
;; (hoarder:register-theme "bbatsov/solarized-emacs")
(hoarder:register-theme "yveszoundi/emacs-rimero-theme")
(hoarder:register-theme "holomorph/emacs-zenburn")
(hoarder:register-theme "darrik/zenesque-theme")
(hoarder:register-theme "Corsair/emacs-flatui-theme")
(hoarder:register-theme "stafu/noctilux-theme")
(hoarder:register-theme "yveszoundi/emacs-rimero-theme")
(hoarder:register-theme "darrik/erosiond-theme")
(hoarder:register-theme "zk-phi/lenlen-theme"
  '(:dependencies ["sellout/emacs-color-theme-solarized"]))
(hoarder:register-theme "emacsfodder/emacs-theme-darktooth")
(hoarder:register-theme "melisgl/color-theme-mgl")
(hoarder:register-theme "BrianHicks/emacs-themes")
(hoarder:register-theme "mrsipan/sipan-theme")
(hoarder:register-theme "cmack/emacs-planet-theme")
(hoarder:register-theme "cpaulik/emacs-material-theme")
(hoarder:register-theme "eglaysher/dark-forest-theme")
(hoarder:register-theme "waymondo/apropospriate-theme")
(hoarder:register-theme "john2x/plan9-theme.el")
;; (hoarder:register-theme "TheQZ/emerald-emacs")
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
(hoarder:register-theme "aalpern/emacs-color-theme-green-phosphor")
(hoarder:register-theme "Alexander-Miller/morning-star-theme")
(hoarder:register-theme "nhunzaker/emacs-ectoplasm-theme")
(hoarder:register-theme "PGGB/emacs-bluedrake-theme")
(hoarder:register-theme "kostafey/organic-green-theme")
(hoarder:register-theme "nashamri/spacemacs-theme")
(hoarder:register-theme "NicolasPetton/zerodark-theme")
(hoarder:register-theme "credmp/arjen-grey")
(hoarder:register-theme "warreq/xres-theme"
  '(:tags ["xresources"]))
(hoarder:register-theme "jonathanchu/atom-one-dark-theme")
(hoarder:register-theme "vjohansen/dark-nature-theme")
(hoarder:register-theme "zenmacs/leuven-solarized")
(hoarder:register-theme "chriskempson/tomorrow-theme"
  '(:load-path "GNU Emacs"))
(hoarder:register-theme "mattly/emacs-farmhouse-theme")
(hoarder:register-theme "edliaw/bubblegum-theme")
(hoarder:register-theme "jonathanchu/atom-one-dark-theme")
(hoarder:register-theme "bmastenbrook/termbright-theme-el")
(hoarder:register-theme "dracula/emacs")
(hoarder:register-theme "rdallasgray/graphene-meta-theme")
(hoarder:register-theme "waymondo/apropospriate-theme")
(hoarder:register-theme "gitlab:franksn/majapahit-theme")
(hoarder:register-theme "jmdeldin/underwater-theme.el")
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
(hoarder:register-theme "mswift42/silkworm-theme")
(hoarder:register-theme "mswift42/foggy-night-theme")
(hoarder:register-theme "shaunvxc/dark-mint-theme")
(hoarder:register-theme "jimeh/twilight-anti-bright-theme")
(hoarder:register-theme "ryuslash/yoshi-theme")
(hoarder:register-theme "jefflasslett/positive-reinforcement-theme")
(hoarder:register-theme "wasamasa/punpun-theme")
(hoarder:register-theme "MetroWind/emacs-deviant-theme")
(hoarder:register-theme "ranmocy/amelie-theme")
(hoarder:register-theme "marktran/color-theme-ujelly")
(hoarder:register-theme "caisah/liso-theme")
(hoarder:register-theme "ksjogo/labburn-theme")
(hoarder:register-theme "kootenpv/emacs-kooten-theme")
(hoarder:register-theme "mswift42/obsidian-theme")
(hoarder:register-theme "j0ni/phoenix-dark-mono")
(hoarder:register-theme "onurtemizkan/paganini")
(hoarder:register-theme "sjrmanning/darkokai")
(hoarder:register-theme "ivanlukianchuk/myth-theme")
(hoarder:register-theme "maio/eink-emacs")
(hoarder:register-theme "caffo/monotropic-theme")
(hoarder:register-theme "0x414A/glacier-theme")
(hoarder:register-theme "fade/deepsky-theme")
(hoarder:register-theme "sjahl/emacs-theme-afterglow")
(hoarder:register-theme "hlissner/emacs-doom-theme"
  '(:dependencies ["hlissner/emacs-solaire-mode"]))
(hoarder:register-theme "olkinn/forest-blue-emacs")
(hoarder:register-theme "shafayetkhan/materialistic-seti")
(hoarder:register-theme "mssola/soria")
(hoarder:register-theme "vjohansen/dark-nature-theme")
(hoarder:register-theme "rdallasgray/graphene-meta-theme")
(hoarder:register-theme "Donearm/Ubaryd-emacs")
(hoarder:register-theme "mswift42/MetalHeart-Emacs")
(hoarder:register-theme "philiparvidsson/zweilight-emacs")
(hoarder:register-theme "mattly/emacs-farmhouse-theme")
(hoarder:register-theme "JayZar21/orangespacs")
(hoarder:register-theme "terry3/oceanic-theme")
(hoarder:register-theme "franksn/ambience-theme"
  '(:load-path ["variants"]))
(hoarder:register-theme "11111000000/tao-theme-emacs")
(hoarder:register-theme "osener/emacs-afternoon-theme")
(hoarder:register-theme "hlissner/emacs-doom-theme")
(hoarder:register-theme "hydandata/hydandata-light-theme")
(hoarder:register-theme "sjahl/emacs-theme-firewatch")
(hoarder:register-theme "habamax/kosmos-theme")
(hoarder:register-theme "rxse/emacs-rin-theme")
(hoarder:register-theme "belak/base16-emacs"
  '(:load-path ["build"]))
(hoarder:register-theme "protonpopsicle/arise-theme")
(hoarder:register-theme "mswift42/breezy-fall-theme")
(hoarder:register-theme "avkoval/avk-emacs-themes")
(hoarder:register-theme "lbolla/emacs-quasi-monochrome")
(hoarder:register-theme "tashrifsanil/vital-dark-theme")
(hoarder:register-theme "cs14095/civic-theme.el")
(hoarder:register-theme "nuncostans/sexy-monochrome-theme")
(hoarder:register-theme "kootenpv/emacs-kooten-theme")
(hoarder:register-theme "techquila/melancholy-theme")
(hoarder:register-theme "gilbertw1/sourcerer-emacs")
(hoarder:register-theme "rails-to-cosmos/danneskjold-theme")
(hoarder:register-theme "emacsfodder/emacs-theme-creamsody")
(hoarder:register-theme "emacsfodder/emacs-deep-thought-theme")
(hoarder:register-theme "jimeh/birds-of-paradise-plus-theme.el")
(hoarder:register-theme "FelixFortis/emacs-darkane-theme")
(hoarder:register-theme "stealthycoin/xmas-theme"
  '(:description "Christmas emacs theme."))
(hoarder:register-theme "vic/rebecca-theme"
  '(:description "The purple turtle theme for Spacemacs"))
(hoarder:register-theme "zk-phi/chillized-theme"
  '(:description "[Emacs] A solarized-based dark chill theme with few low-contrast colors"
    :dependencies [ "sellout/emacs-color-theme-solarized"]))
(hoarder:register-theme "windsorschmidt/betamax-theme"
  '(:description "Emacs theme based on http://dotshare.it/dots/1200/ by https://github.com/svbtext"))
;; (hoarder:register-theme "zk-phi/monojelly-theme"
;;   '(:description "[Emacs] a solarized-based nearly-monochrome theme with jellybeans colors"))
(hoarder:register-theme "adamgraham/polykai"
  '(:description "A dark color scheme inspired by Wimer Hazenberg's Monokai theme."
    :load-path "Emacs"))
(hoarder:register-theme "geoffmacintosh/offworlders-theme"
  '(:description "A totes minimal dark theme for Emacs"))
(hoarder:register-theme "thblt/eziam-theme-emacs"
  '(:description "A mostly grayscale theme for Emacs, inspired by Tao and Leuven."))
(hoarder:register-theme "rbanffy/green-screen-emacs"
  '(:description "A nice color theme for those who miss green CRTs"))
(hoarder:register-theme "arcticicestudio/nord-emacs"
  '(:description "An arctic, north-bluish clean and elegant Emacs theme."))
(hoarder:register-theme "madhat2r/madhat2r-theme"
  '(:description "Dark theme for (spac[e]macs) that supports GUI and terminal"))
(hoarder:register-theme "prassee/prassee-emacs-theme"
  '(:description "dark theme for Emacs based on Doom Theme (https://github.com/hlissner/emacs-doom-theme)"))
(hoarder:register-theme "ogdenwebb/emacs-kaolin-themes"
  '(:description "Set of eye pleasing themes for GNU Emacs."
    :tags ["colorscheme" "emacs" "emacs-theme" "theme"]
    :load-path ["." "themes"]))
(hoarder:register-theme "tokenrove/pink-bliss-theme"
  '(:description "Alex Schroeder's Pink Bliss emacs theme updated for emacs24"))
(hoarder:register-theme "choppsv1/emacs-mandm-theme"
  '(:description "M&Ms (the candy) color zenburn derivative "))
(hoarder:register-theme "m-cat/nimbus-theme"
  '(:description "The best dark theme for Emacs"))
(hoarder:register-theme "dawidof/emacs-monokai-theme"
  '(:description "Monokai theme for emacs"))
(hoarder:register-theme "MaxSt/challenger-deep"
  '(:description "Emacs Theme"))
(hoarder:register-theme "gorauskas/darkburn-theme"
  '(:description "Dark Burn Theme for Emacs 24"))
(hoarder:register-theme "darrik/tronlight-theme"
  '(:description "Emacs port of Dayle Rees and Tim Heckman's TronLight Sublime Text / Textmate theme."))
(hoarder:register-theme "martijnat/nubox") 
(hoarder:register-theme "shaunvxc/dark-mint-theme")
(hoarder:register-theme "zk-phi/monoplanet-theme"
  '(:dependencies ["sellout/emacs-color-theme-solarized"]))
(hoarder:register-theme "dcjohnson/inverse-acme-theme"
  '(:description "I forked it because it had a complete listing of all the colors and did most of the lifting for me. "))
(hoarder:register-theme "d11wtq/subatomic256"
  '(:description "Emacs color theme"))
(hoarder:register-theme "azer/emacs-jungle-theme"
  '(:description "My personal Emacs theme. It may change occasionally."))
(hoarder:register-theme "jbharat/exotica-theme"
  '(:description "Emacs Theme"))
(hoarder:register-theme "mortezaipo/lop-theme"
  '(:description "Emacs LOP Theme"
    :tags ["emacs" "theme"]))
(hoarder:register-theme "GuidoSchmidt/emacs-hemera-theme"
  '(:description "Light theme for Emacs"
    :tags ["emacs" "emacs-themes" "light-theme" "theme" "themes"]))
(hoarder:register-theme "GuidoSchmidt/emacs-nyx-theme"
  '(:description "Dark theme for Emacs"
    :tags ["dark-theme" "emacs" "emacs-theme" "emacs-themes" "theme"]))
(hoarder:register-theme "m00natic/anti-zenburn-theme"
  '(:description "Low contrast grayish Emacs theme, Zenburn palette complemented."))
(hoarder:register-theme "mvarela/Sunburn-Theme"
  '(:description "Sunburn — a low-contrast theme for Emacs and iTerm2"
    :memo "[[https://www.reddit.com/r/emacs/comments/75c8k2/sunburn_a_new_lowcontrast_theme/][Sunburn — a new low-contrast theme : emacs]]"))
(hoarder:register-theme "fuxialexander/modern-light-theme"
  '(:description "Modified from spacemacs-light"
    :tags ["emacs lisp"]))
(hoarder:register-theme "idaisukee/Nakahamatiyau"
  '(:description "color sheme at 82235"
    :tags ["emacs lisp"]))
(hoarder:register-theme "kostafey/elite-theme"
  '(:description "Dark color theme for Emacs named in honor of the great Elite game."
    :tags ["emacs lisp"]))
(hoarder:register-theme "fgeller/basic-theme.el"
  '(:description "Minimal color theme for Emacs using base16 colors."
    :tags ["emacs lisp" "emacs" "emacs-lisp" "theme"]))
(hoarder:register-theme "metamode/base16-oneburn-emacs"
  '(:tags ["emacs lisp"]))
(hoarder:register-theme "halvorgb/base16-halvorgb"
  '(:description "modified base16-eighties color theme for emacs"
    :tags ["emacs lisp"]))
(hoarder:register-theme "jamiecollinson/emacs-panda-theme"
  '(:description "A superminimal, dark syntax theme for emacs"
    :tags ["emacs lisp" "colorscheme" "colortheme" "emacs" "emacs-theme" "gnu" "gui" "spacemacs" "theme" "ui"]))
(hoarder:register-theme "Baransu/emacs-snazzy"
  '(:description "Elegant Emacs theme with bright colors, based on https://github.com/sindresorhus/hyper-snazzy"
    :tags ["emacs lisp" "bright-colors" "elegant" "emacs" "emacs-theme" "snazzy" "theme"]))
(hoarder:register-theme "weijiangan/emacs-snazzy"
  '(:description "Elegant Emacs theme with bright colors"
    :tags ["emacs lisp" "bright-colors" "emacs" "emacs-theme" "melpa" "theme"]))
(hoarder:register-theme "manuel-uberti/doneburn-theme"
  '(:description "A light theme for Emacs based on Zenburn"
    :tags ["emacs lisp" "emacs" "emacs-theme" "light-theme"]))
(hoarder:register-theme "philiparvidsson/GitHub-Modern-Theme-for-Emacs"
  '(:description "Syntax highlighting color theme mimicking the new and updated look of GitHub's code viewer."
    :tags ["emacs lisp" "elisp" "emacs" "emacs-theme" "github" "github-theme" "syntax-highlighting" "theme"]
    :memo "[[https://www.reddit.com/r/emacs/comments/8d4uyy/doneburn_a_new_light_theme/][Too Many Requests]]"))
(hoarder:register-theme "chrisdone/zenburn"
  '(:description "Fork of Zenburn theme for emacs"
    :tags ["emacs lisp"]))
(hoarder:register-theme "WJCFerguson/emacs-faff-theme"
  '(:description "Emacs Faff Theme - a light theme based on the Emacs default, extensively tweaked."
    :tags ["emacs lisp"]))
(hoarder:register-theme "balajisivaraman/emacs-one-themes"
  '(:description "A port of the Vim/Atom One Dark and Light themes to Emacs"
    :tags ["emacs lisp" "colorscheme" "emacs" "emacs-color-theme" "one-dark" "one-light"]))
(hoarder:register-theme "habamax/habamax-theme"
  '(:description "Emacs theme with boring white background color that gets the job done."
    :tags ["emacs lisp"]))

;; (hoarder:register-theme "bobbypriambodo/nord-spacemacs"
;;     '(:description "Unofficial port of Nord color palette for Spacemacs."))

;;; init.el ends here
