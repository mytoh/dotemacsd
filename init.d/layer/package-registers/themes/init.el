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
(hoarder:register-theme "dracula/emacs")
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
(hoarder:register-theme "hlissner/emacs-doom-theme")
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
(hoarder:register-theme "vyp/redbelly")
(hoarder:register-theme "franksn/ambience-theme"
  '(:load-path ["variants"]))
(hoarder:register-theme "11111000000/tao-theme-emacs")
(hoarder:register-theme "osener/emacs-afternoon-theme")
(hoarder:register-theme "hlissner/emacs-doom-theme")
(hoarder:register-theme "hydandata/hydandata-light-theme")
(hoarder:register-theme "sjahl/emacs-theme-firewatch")
(hoarder:register-theme "habamax/kosmos-theme")
(hoarder:register-theme "rxse/emacs-rin-theme")
(hoarder:register-theme "thomasschimper/violet-dream-theme")
(hoarder:register "belak/base16-emacs")
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

;;; init.el ends here
