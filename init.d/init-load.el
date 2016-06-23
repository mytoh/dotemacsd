;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(require 'cl-lib)
(require 'seq)
(require 'files)

;;;;; libs
(eval-when-compile (require 'init-lib "lib/init-lib"))
(add-subdirs-to-load-path (locate-user-emacs-file "init.d"))

(require 'muki)
(require 'muki-layer)

;;;;; system
(muki-layer:load-layers 'system
  '(freebsd darwin))

(muki-layer:load-layers 'package-manager
  '(boot
    register
    ;; check
    hoarder
    ))

(muki-layer:load-layers 'package
  '(
    ;; diminish
    dim
    ))

(muki-layer:load-layers 'org
  '(outshine
    ;; navi
    org-autolist
    org
    org-pretty-table
    ;;orgit
    org-download
    outline-magic
    org-cliplink
    ;; orglink
    toc-org
    org-query
    org-bullets
    ;;ox-pandoc                 
    org-hlc
    ob-browser
    org-breadcrumbs
    ))

(muki-layer:load-layers 'package
  '(
    ;; no-littering
    migemo
    ssh-config-mode
    emacs-refactor
    ;; artbollocks-mode
    leerzeichen
    darkroom
    tabula-rasa
    better-jump
    free-keys
    stripe-buffer
    url-preview
    dircmp
    ;; sx ; error loading
    smeargle
    stumpwm-mode
    context-coloring
    dircmp
    esup

    info-plus
    elisp-slime-nav
    yaml-mode
    httprepl
    rich-minority
    cat-mode
    emoji-cheat-sheet
    emoji-cheat-sheet-plus
    olivetti
    rainbow-mode
    tumblesocks
    flatline
    git-gutter

    emms
    emms-info
    emms-state
    ;; emms-mpd
    ;; emms-player-mpv
    ;; emms-player-mpv-volume

    navi2ch
    navi2ch-file-mode
    magit
    magit-overview
    ;; magit-idle-breadcrumbs
    git-modes
    skk

    ;; popwin
    shackle

    bbyac

    paradox
    rainbow-delimiters
    anzu
    smartparens
    expand-region
    e2wm
    elfeed
    haskell-mode
    hi2
    ghc
    sunrise-commander
    ;; multiple-cursors
    google-translate
    form-feed
    aumix-mode
    scheme-keywords
    seijiseikana
    fish-mode
    debug-print
    bookmark-extensions
    lehtifile-mode
    rebuildfm
    sos
    mesh
    eww-lnum
    yon-chan
    itail
    quickrun
    web-mode
    go-mode
    lua-mode
    bm
    rotate
    git-timemachine
    flappymacs
    yamada
    css-eldoc
    ;; web-beautify
    cssfmt
    direx
    oniisama

    ;; guide-key
    ;; guide-key-tip
    which-key

    clojure-mode
    clojure-cheatsheet
    cider
    lorem-ipsum
    emacs-color-themes
    sly
    ;; sly-repl-ansi-color
    twittering-mode
    coffee-mode
    color-theme-approximate
    google-this
    nssh
    markdown-mode
    charmap
    pt
    ;; undohist
    image-archive
    js2-mode
    ;; ace-link
    phi-grep
    fill-column-indicator
    ipretty
    csharp-mode
    bytecomp-simplify
    bijin-tokei
    seethru
    elisp-slime-expand
    top-mode
    eww-hatebu
    ;; vc-check-status
    gitignore
    region-bindings-mode
    jaword
    visual-ascii-mode
    itunes-bgm
    ;; imagex
    browse-at-remote
    ;; super-save
    auto-save-buffers-enhanced
    compilation-highlight
    conkeror-minor-mode
    mpv
    writeroom-mode
    default-text-scale
    fvwm-mode
    sallet
    git-messenger
    firestarter
    hnr
    theme-looper
    column-enforce-mode
    ;; autobookmarks
    focus
    soundcloud
    longlines-jp
    ssh-modes
    csv-mode
    fontawesome
    adoc-mode
    creole-mode
    psession
    picpocket
    ws-butler
    not-from-scratch
    dictionary
    sokoban
    git-auto-commit-mode
    yatt
    elisp-sandbox
    subemacs
    nameless
    wordnut
    erlang
    sml-mode
    beacon ; error invalid face :background
    clipmon
    font-lock-studio
    emojify
    wget
    hyai
    github-notifier
    region-state
    prettify-symbols
    erefactor
    elm-mode
    unkillable-scratch
    mode-icons
    char-menu
    aggressive-indent
    link-hint
    tldr
    party-mode
    yasnippet
    yatemplate
    idris-mode
    aa-edit-mode
    image-dired
    image-diredx
    tuareg
    nix-mode
    ranger
    ;; per-buffer-theme
    elisp-depend
    tea-time
    zygospore
    monky
    magic-buffer
    edit-color-stamp
    hydra
    vc
    hardhat
    ignoramus
    validate
    niceify-info
    yankpad
    saveplace
    perl6
    right-click-context
    ;; annotate-depth
    xref-js2
    color-identifiers-mode
    logview
    ducpel ;; game
    ;; random-idle-quote
    tron
    ;; mini-header-line
    spu
    sshman
    emacs-reaction-sounds
    hyperbole
    disable-mouse
    swiper
    moonscript-mode
    ;; handoff
    ;; pretty-mode
    ;; keep-temp-buffers
    
    ;; letcheck ; not work with pcase's let pattern
    ;; flyparens ; load error
    ;; cycle-themes
    ;; smart-newline
    ;; random-splash-image
    ;; hl-sentence
    ;; centered-window-mode
    ;; real-auto-save
    ;; bqlist-lock
    ;; eshell-alias
    ;; switch-window
    ;; aozora-view
    ;; yascroll
    ;; nyan-mode
    ;; aria2
    ;; ids-edit
    ;; recycle
    ;; slideview
    ;; command-dwim-2
    ;; moe-theme
    ;; smooth-scroll
    ;; fuzzyjump
    ;; zone-settings
    ;; emux
    ;; js3-mode
    ;; vi-tilde-fringe
    ;; travis
    ;; git-gutter-fringe-plus
    ;; js-beatify
    ;; camcorder
    ;; init-chart
    ;; spray
    ;; golden-ratio
    ;; writing-utils
    ;; elnode
    ;; tabbar
    ))

;;;; syntax-check
(muki-layer:load-layers 'syntax-checking
  '(flycheck-status-emoji
    flycheck-package
    flychck-css-colorguard
    flycheck))

;;;; highlight
(muki-layer:load-layers 'package
  '(
    hl-line
    ;; highlight-symbol
    highlight-thing

    volatile-highlights
    highlight-defined
    highlight-leading-spaces
    highlight-indentation
    ;; hl-todo
    ;; highlight-unique-symbol
    ;; hl-indent
    ;; indent-guide
    highlight-parentheses
    ;; mic-paren
    ;; paren
    ;; highlight-sexp
    highlight-tail
    ;; auto-highlight-symbol
    ;; highlight-stages
    ;; highlight-backquotes-mode
    ))

;;;;; package
(muki-layer:load-layers 'vim
  '(
    evil

    evil-commentary
    ;; evil-nerd-commenter
    ;; evil-operator-comment

    evil-surround
    evil-linewise
    evil-matchit
    evil-exchange
    evil-visualstar
    evil-search-highlight-persist
    evil-textobj-between
    ;; evil-extra-operator

    evil-escape
    evil-easymotion
    evil-visual-mark-mode

    ;; evil-rsi ; after evil
    evil-cleverparens
    ;; evil-smartparens
    evil-anzu
    evil-snipe
    evil-textobj-anyblock
    evil-multiedit
    ;; evil-iedit-state
    ;; evil-mc
    evil-quickscope
    ;; evil-lisp-state
    evil-magit
    syndicate
    evil-ReplaceWithRegister
    ;; evil-org-mode
    ;; pure-evil

    bind-map
    ;; general
    ))

(muki-layer:load-layers 'vim
  '(vim-empty-lines-mode
    vimrc-mode))

(muki-layer:load-layers 'vim
  '(
    eww-mode
    image-mode
    paradox-mode
    emms-mode
    emacs-lisp-mode
    org-mode
    expand-region
    skk-mode
    magit
    package-menu-mode
    ))

(muki-layer:load-layers 'helm
  '(helm
    helm-hoarder
    helm-yplistener
    helm-muki
    helm-project-buffer
    helm-ag-r
    helm-ag
    helm-commands
    wgrep-helm
    helm-css-scss
    helm-bibtex
    helm-dictionary
    helm-emms-librefm
    helm-features
    helm-eww-bookmark
    helm-eww-history
    helm-eww-search-engine
    helm-mode-manager
    helm-pages
    helm-xmms2
    helm-recoll
    helm-lobste.rs
    helm-hackernews
    helm-ls-git
    helm-pt
    helm-emms
    ace-jump-helm-line
    helm-commandlinefu
    helm-unicode
    helm-github-stars
    ;; helm-fuzzier
    ;; helm-flx
    helm-open-github
    helm-japanese-weather
    helm-kaomoji
    helm-swoop
    helm-describe-modes
    helm-gitignore
    helm-proc
    f3
    helm-browse
    ;; helm-org-rifle
    ;; helm-company
    ;; helm-delicious
    ))

(muki-layer:load-layers 'auto-completion
  '(
    ;; company
    ;; company-emoji
    ;; company-quickhelp
    ;; company-statistics
    ;; company-org-headings
    ;; sly-company

    auto-complete
    ac-capf
    ac-emoji
    ac-skk
    ;; org-ac
    ac-shell
    ac-kill-ring
    ))

(muki-layer:load-layers 'source-control
  '(github-browse-file))


;;;;; config
(muki-layer:load-layers 'config
  '(
    setting
    key
    hook
    path
    face
    eshell
    whitespace
    ;; autoinsert
    dired
    eww
    newsticker
    rcirc
    tramp
    recentf
    font ; this cause slow displaying

    ;; autorevert
    ;;clipboard
    ;; erc
    ;; eshell-prompt
    ;; eieio
    ;; savehist ; if history file become too large, delete file or disable mode
    ))

;;;;; packages
;; (require 'init-paketti)
(muki-layer:load-layers 'elpa
  '(archive))

;;;;; lang
(muki-layer:load-layers 'lang
  '(lisp
    elisp
    scheme
    common-lisp
    ;; kernel-mode
    shell
    cpp
    c
    ))

;;;;; elisp
(require 'init-elisp)
;; (muki-layer:load-layers 'elisp
;;   '(csh-mode))

;;;;; theme
(muki-layer:load-layers 'theme
  '(color-theme-sanityinc-tomorrow
    color-theme-sanityinc-solarized
    apropospriate
    moe-theme
    myth))

;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
