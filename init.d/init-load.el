;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(require 'cl-lib)
(require 'seq)
(require 'files)

;;;;; libs

(add-to-list 'load-path (expand-file-name
                         "huone/ateljee/emacs-muki/lisp"
                         (getenv "HOME")))
(add-to-list 'load-path (expand-file-name
                         "huone/ateljee/emacs-glof/lisp"
                         (getenv "HOME")))
(add-to-list 'load-path (expand-file-name
                         "huone/ateljee/emacs-colle/lisp"
                         (getenv "HOME")))
(require 'muki)
(add-subdirs-to-load-path (locate-user-emacs-file "init.d"))
(add-subdirs-to-load-path (locate-user-emacs-file "init.d/elisp"))

(require 'muki-layer)

;;;;; system
(muki-layer:load-layers 'system
  '(freebsd darwin))

(muki-layer:load-layers 'config
  '(
    setting
    ))

(muki-layer:load-layers 'package-manager
  '(boot
    ;; check
    ))

(muki-layer:load-layers 'package-registers
  '(register
    helm
    org
    emacs
    vim
    local
    themes
    general-packages))

(muki-layer:load-layers 'elpa
  '(archive))

;; essential
(muki-layer:load-layers 'package
  '(use-package
     validate

     ;; diminish
     ;; dim
     delight
     hoarder
     ))

(muki-layer:load-layers 'org
  '(outshine
    ;; navi
    ;; org-autolist
    org
    org-pretty-table
    ;;orgit
    org-download
    outline-magic
    org-cliplink
    orglink
    toc-org
    org-query
    org-bullets
    ;;ox-pandoc                 
    org-hlc
    ob-browser
    ;; org-breadcrumbs
    org-bookmark-heading
    org-tree-slide
    org-section-numbers
    org-elisp-help
    org-seek
    orgnav
    org-projectile
    ob-async
    org-table-sticky-header
    org-writers-room
    org-quick-peek
    org-sticky-header
    org-recent-headings
    ))

(muki-layer:load-layers 'package
  '(migemo
    ;; no-littering
    ;;cmigemo
    ;; dashboard
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
    ;; smeargle
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
    git-gutter

    ;; flatline
    ;; smart-mode-line
    spaceline
    spaceline-all-the-icons
    ;; telephone-line

    emms
    emms-mobile-remote
    emms-mode-line-cycle
    emms-queue
    ;; emms-info
    ;; emms-state
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
    ;; form-feed
    ;; page-break-lines
    aumix-mode
    scheme-keywords
    seijiseikana
    fish-mode
    debug-print
    bookmark-extensions
    ;; bookmark-plus
    lehtifile-mode
    rebuildfm
    sos
    mesh
    eww-lnum
    yon-chan
    itail
    quickrun
    web-mode
    ;; js2-mode
    go-mode
    lua-mode
    bm
    rotate
    git-timemachine
    flappymacs
    yamada
    css-eldoc
    web-beautify
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
    ;; visual-ascii-mode
    itunes-bgm
    ;; imagex
    browse-at-remote

    super-save
    ;; auto-save-buffers-enhanced
    ;; focus-autosave-mode

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
    soundklaus
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
    beacon 
    clipmon
    font-lock-studio
    emojify
    wget
    hyai
    github-notifier
    region-state
    prettify-symbols
    prettify-utils
    erefactor
    elm-mode
    unkillable-scratch
    mode-icons
    char-menu
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

    ;; hardhat
    auto-read-only

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

    ;; spu // cause recent emacs fail?
    auto-package-update

    sshman
    emacs-reaction-sounds
    hyperbole
    disable-mouse
    swiper
    moonscript-mode
    node-ac
    pandoc
    macrostep
    imgur
    babel
    font-man
    interaction-log
    escr
    vdiff
    ;; pokemon-emacs
    so-long
    vs-comment
    toml-mode
    html-preview
    read-aloud
    gitlab
    bug-hunter
    lupin-title
    lispxmp
    cl-indent
    ;;    sound-wav
    cabledolphin
    digit-groups
    dim-autoload    
    all-the-icons
    all-the-icons-ivy
    netspeak
    adaptive-wrap
    org-easy-img-insert
    ;; magithub
    ids-edit
    visual-fill-column
    engine-mode
    ztree
    elisp-format
    el-search
    elisp-refs
    podcaster
    ;; lisp-extra-font-lock
    ;;japanese-holidays
    undo-tree
    help-mode
    auto-compile
    with-editor
    pcap-mode
    window-numbering
    vlfi
    copyit
    pdf-tools
    sauron
    hide-comnt
    insert-shebang
    aggressive-fill-paragraph-mode
    scala-mode
    make-color
    tile
    ;; projectile ; this makes emacs slow, lagging
    proced
    ;;   indicate-change
    clippy
    restart-emacs
    visible-mark
    language-detection
    ucs-cmds
    avy
    ;; avy-migemo
    grab-x-link
    anything
    color-theme-buffer-local
    untitled-new-buffer
    pcre2el
    list-environment
    ag
    open-junk-file
    zoom-window
    eros
    rainbow-identifiers
    simpleclip
    eshell-fixed-prompt-mode
    ivy-youtube
    ivy-rich
    cheatsheet
    ;; eldoc-overlay-mode
    pcmpl-git
    guess-language
    drawille
    paperless
    runner
    unify-opening
    remember-last-theme
    pocket-mode
    uimage
    waf-mode
    ereader
    find-file-in-repository
    bpr
    term-run
    web-search
    ;; omni-quotes
    ;; keyfreq
    include-anywhere
    semantic-refactor
    icons-in-terminal
    helpful
    auto-minor-mode
    json-mode
    ;;password-vault-plus
    http
    ;; org-link-minor-mode ; orglink
    container
    emacs-home
    keyinfo
    ;; vc-msg
    commit-msg-prefix
    peval
    face-explorer
    makefile-executor
    hentaigana
    frame-bufs
    dad-joke
    zen-mode
    git-complete
    pair-mode
    shrink-whitespace
    unfill
    with-simulated-input
    iqa
    outline-toc
    expando
    look-mode
    imgix
    background
    solaire-mode
    copy-file-on-save
    Sakurahasi
    ido-completing-read-plus
    amx
    re-builder
    nov
    syntactic-close
    ;;circadian
    dumb-jump
    bonjourmadame
    eshell-bookmark
    let-alist
    ;; persistent-scratch
    google-maps
    request
    pocket-reader
    zoom
    mastodon
    discover
    perlbrew
    cpanfile-mode
    cperl-mode
    perltidy
    perlcritic
    pod-mode
    ;; drill-instructor
    ;; mixed-pitch
    ;; togetter

    ;; quoted-scratch
    ;; goto-addr
    ;; elint
    ;; all-ext                               
    ;; easy-escape

    all-the-icons-dired
    ;; dired-icon

    ;; aggressive-indent
    ;; parinfer

    ;; idle-highlight-mode
    ;; ahg
    ;; golden-ratio
    ;; pangu-spacing
    ;; uuid
    ;; ert-modeline ; cause yatemplate error
    ;; ert-flash-modeline
    ;; handoff
    ;; pretty-mode
    ;; keep-temp-buffers
    
    ;; letcheck ; not work with pcase's let pattern
    ;; flyparens ; load error
    ;; cycle-themes
    ;; smart-newline
    ;; random-splash-image
    ;; hl-sentence
    centered-window-mode
    ;; real-auto-save
    ;; bqlist-lock
    ;; eshell-alias
    ;; switch-window
    ;; aozora-view
    ;; yascroll
    ;; nyan-mode
    ;; aria2
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
  '(hl-line
    ;; col-highlight
    ;; highlight-symbol
    symbol-overlay
    ;; highlight-thing

    volatile-highlights
    highlight-defined
    highlight-escape-sequences ; easy-escape
    highlight-quoted
    highlight-refontification
    highlight-numbers
    ;; hl-todo
    ;; highlight-unique-symbol

    highlight-leading-spaces
    ;; highlight-indentation
    ;; highlight-indent-guides
    ;; hl-indent
    ;; indent-guide

    highlight-parentheses
    highlight-function-calls
    ;; mic-paren
    ;; flash-paren
    paren
    ;; highlight-sexp
    ;; highlight-tail
    ;; auto-highlight-symbol
    ;; highlight-stages
    ;; highlight-backquotes-mode
    ))

;;;;; package
(muki-layer:load-layers 'vim
  '(evil

    evil-commentary
    ;; evil-nerd-commenter
    ;; evil-operator-comment

    evil-surround
    ;; evil-linewise
    evil-matchit
    evil-exchange
    evil-visualstar
    ;; evil-search-highlight-persist
    evil-textobj-between
    evil-extra-operator

    evil-escape
    evil-easymotion
    evil-visual-mark-mode

    ;; evil-rsi ; after evil
    evil-cleverparens
    ;; evil-smartparens
    evil-anzu
    ;; evil-snipe
    evil-textobj-anyblock
    evil-multiedit
    ;; evil-iedit-state
    ;; evil-mc

    ;; evil-quickscope
    evil-goggles

    evil-lisp-state
    evil-magit
    syndicate
    evil-ReplaceWithRegister
    evil-visual-replace

    ;; evil-org-mode
    evil-ediff
    opener
    evil-adjust
    evil-indent-plus
    evil-lion
    evil-visual-replace
    ;; evil-integrations
    evil-expat
    evil-terminal-cursor-changer
    evil-unimpaired
    ;; targets
    ;; org-evil
    
    ;; pure-evil

    bind-map
    ;; general
    ))

(muki-layer:load-layers 'vim
  '(vim-empty-lines-mode
    vimrc-mode))

(muki-layer:load-layers 'vim
  '(eww-mode
    image-mode
    paradox-mode
    emms-mode
    emacs-lisp-mode
    org-mode
    expand-region
    skk-mode
    with-editor
    package-menu-mode
    picpocket
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
    helm-lobsters
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
    helm-org-rifle
    helm-descbinds
    helm-smex
    helm-company
    helm-git-grep
    helm-rage
    helm-hunks
    helm-ls-svn
    helm-youtube
    helm-tramp
    helm-navi
    helm-xref
    helm-directory
    helm-swish
    helm-perldoc
    ;; helm-frame
    ;; helm-ext
    ;; helm-delicious
    )) 

(muki-layer:load-layers 'auto-completion
  '(company
    company-shell
    company-statistics
    ;; company-ngram
    company-emoji
    company-fontawesome
    company-plsense
    ;; company-quickhelp
    ;; company-org-headings
    ;; company-dict
    ;; company-web
    ;; company-flx
    ;; company-words
    ;; company-org-headings
    ;; sly-company

    ;; auto-complete
    ;; ac-capf
    ;; ac-emoji
    ;; ac-skk
    ;; ;; org-ac
    ;; ac-shell
    ;; ac-kill-ring
    ))

(muki-layer:load-layers 'source-control
  '(github-browse-file))

(muki-layer:load-layers 'filetree
  '(
    neotree
    treemacs
    sidebar))

;;;;; config
(muki-layer:load-layers 'config
  '(key
    hook
    path
    face
    eshell
    whitespace
    ;; autoinsert ; using yatemplate
    dired
    eww
    newsticker
    rcirc
    ;; tramp
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
    ;; moe-theme
    ;; myth
    base16-theme
    birds-of-paradise-plus-theme
    doom-themes
    doomsday
    spacemacs-theme
    ;; chillized-theme
    ))

;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
