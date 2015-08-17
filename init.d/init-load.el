;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(require 'cl-lib)
(require 'seq)

;;;;; libs
(eval-when-compile (require 'init-lib "lib/init-lib"))
(add-subdirs-to-load-path (locate-user-emacs-file "init.d"))

(require 'muki)
(require 'muki-layer)

;;;;; system
(muki-layer:load-layers 'system
  '(freebsd darwin))

(muki-layer:load-layers 'package
  '(boot
    register
    check))

(muki-layer:load-layers 'package
  '(hoarder
    diminish))

(muki-layer:load-layers 'org
  '(outshine
    ;; navi
    org-autolist
    org
    org-pretty-table
    orgit
    org-download
    outline-magic
    org-cliplink
    orglink
    ))

(muki-layer:load-layers 'package
  '(
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
    sx
    smeargle
    stumpwm-mode
    context-coloring
    dircmp
    esup

    info-plus
    elisp-slime-nav
    yaml-mode
    httprepl
    highlight-defined
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
    ;; emms-mpd
    ;; emms-player-mpv
    ;; emms-player-mpv-volume

    navi2ch
    navi2ch-file-mode
    magit
    magit-overview
    magit-idle-breadcrumbs
    git-modes
    skk

    ;; popwin
    shackle

    bbyac

    paradox
    hl-todo
    hl-indent
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
    flycheck-package
    flycheck
    multiple-cursors
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
    sly-company
    ;; sly-repl-ansi-color
    twittering-mode
    coffee-mode
    color-theme-approximate
    google-this
    nssh
    markdown-mode
    charmap
    pt
    highlight-sexp
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
    imagex
    browse-at-remote
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
    highlight-parentheses
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
    letcheck
    volatile-highlights

    ;; flyparens ; load error
    ;; cycle-themes
    ;; smart-newline
    ;; random-splash-image
    ;; hl-sentence
    ;; centered-window-mode
    ;; real-auto-save
    ;; highlight-backquotes-mode
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
    ;; indent-guide
    ;; highlight-stages
    ;; smooth-scroll
    ;; fuzzyjump
    ;; zone-settings
    ;; emux
    ;; yasnippet
    ;; js3-mode
    ;; highlight-indentation
    ;; aggressive-indent
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
    ;; auto-highlight-symbol
    ;; tabbar
    ))

;;;; highlight
(muki-layer:load-layers 'package
  '(
    ;; highlight-symbol
    highlight-thing
    ))

;;;;; package
(muki-layer:load-layers 'vim
  '(evil-leader
    evil-escape
    evil-surround
    evil-nerd-commenter
    evil-linewise
    evil-matchit
    evil-exchange
    evil-operator-comment
    evil-search-highlight-persist
    evil-jumper
    evil-visualstar
    evil-easymotion
    evil-textobj-between
    evil-extra-operator
    evil-visual-mark-mode
    ;; evil-lisp-state

    evil

    ;; evil-rsi ; after evil
    ;; evil-cleverparens
    ;; evil-smartparens
    evil-anzu
    evil-snipe
    evil-quick-scope
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
    ))

(muki-layer:load-layers 'helm
  '(helm
    helm-hoarder
    helm-ypv
    helm-alku
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
    swiper
    ace-jump-helm-line
    helm-commandlinefu
    ;; helm-swoop
    ;; helm-company
    ;; helm-delicious
    ))

(muki-layer:load-layers 'auto-completion
  '(
    company
    company-emoji
    company-quickhelp
    company-statistics
    ))


;;;;; config
(muki-layer:load-layers 'config
  '(setting
    key
    hook
    path
    face
    ;;clipboard
    font
    ;; erc
    eshell
    ;; eshell-prompt
    whitespace
    autoinsert
    dired
    eww
    newsticker
    rcirc
    tramp
    eieio
    ;; savehist ; if history file become too large, delete file or disable mode
    recentf
    ))

;;;;; packages
(require 'init-paketti)

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

;;;;; themem
(muki-layer:load-layers 'theme
  '(color-theme-sanityinc-tomorrow
    color-theme-sanityinc-solarized))

;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
