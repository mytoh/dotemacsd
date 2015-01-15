;;; init-load.el  -*- lexical-binding: t -*-
;;;; initialize
;;;;; cl-lib
(eval-when-compile
  (require 'cl-lib))
(require 'seq)

;;;;; libs
(eval-when-compile (require 'init-lib "lib/init-lib"))
(add-subdirs-to-load-path (muki:user-emacs-directory "inits"))

(require 'muki)
(require 'muki-layer)

;;;;; system
(muki-layer:load-layers 'system
  '(freebsd darwin))

;;;;; vendle
(muki-layer:load-layers 'vendle
  '(boot
    register
    check))

(muki-layer:load-layers 'vendle
  '(vendle
    diminish))

(muki-layer:load-layers 'org
  '(outshine
    ;; navi
    org-autolist
    org
    org-pretty-table
    orgit
    ))

(muki-layer:load-layers 'vendle
  '(migemo
    ssh-config-mode
    emacs-refactor
    artbollocks-mode
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
    vimrc-mode
    emoji-cheat-sheet
    olivetti
    rainbow-mode
    tumblesocks
    flatline
    navi2ch
    navi2ch-file-mode
    ;; emms
    emms-mpd
    magit
    magit-overview
    git-modes
    skk
    popwin
    ;; shackle
    company
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
    highlight-symbol
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
    highlight-parenthesis
    go-mode
    lua-mode
    bm
    rotate
    git-timemachine
    flappymacs
    yamada
    css-eldoc
    web-beautify
    direx
    oniisama
    guide-key
    guide-key-tip
    clojure-mode
    lorem-ipsum
    emacs-color-themes
    sly
    twittering-mode
    coffee-mode
    color-theme-approximate
    google-this
    nssh
    markdown-mode
    charmap
    pt
    switch-window
    highlight-sexp
    undohist
    image-archive
    js2-mode
    ace-link
    phi-grep
    smart-newline
    fill-column-indicator
    ipretty
    vim-empty-lines-mode
    csharp-mode
    bytecomp-simplify
    bijin-tokei
    seethru
    elisp-slime-expand
    top-mode
    eww-hatebu
    ;; highlight-backquotes-mode
    ;; bqlist-lock
    ;; eshell-alias
    ;; aozora-view
    ;; yascroll
    ;; nyan-mode
    ;; aria2
    ;; ids-edit
    ;; recycle
    ;; image-plus
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
    ;; auto-save-buffer-enhanced
    ;; js-beatify
    ;; camcorder
    ;; init-chart
    ;; spray
    ;; golden-ratio
    ;; writing-utils
    ;; elnode
    ;; auto-highlight-symbol
    ;; tabbar
    ;; flyparens
    ))

;;;;; package
(muki-layer:load-layers 'evil
  '(evil-leader
    evil-escape
    evil-surround
    evil-nerd-commenter
    evil-lisp-state
    evil-linewise
    evil-matchit
    evil-exchange
    evil-operator-comment
    evil-search-highlight-persist
    evil-jumper
    evil-visualstar
    evil-smartparens
    evil-easymotion
    evil-textobj-between
    evil-extra-operator
    evil-snipe
    ;; evil-anzu
    evil
    ))

(muki-layer:load-layers 'evil
  '(eww
    ))

(muki-layer:load-layers 'helm
  '(helm
    helm-vendle
    helm-ypv
    helm-alku
    helm-project-buffer
    helm-ag-r
    helm-ag
    helm-swoop
    helm-commands
    wgrep-helm
    helm-css-scss
    helm-bibtex
    helm-dictionary
    helm-emms-librefm
    helm-features
    helm-eww-bookmark
    helm-mode-manager
    ;; helm-company
    ;; helm-delicious
    ))


;;;;; config
(muki-layer:load-layers 'config
  '(setting
    key
    hook
    path
    face
    clipboard
    font
    erc
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
    savehist
    recentf))

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
(muki-layer:load-layers 'elisp
  '(csh-mode))


;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
