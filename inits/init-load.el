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

;;;;; system
(muki:layer-load-layers 'system
  '(freebsd darwin))

;;;;; vendle
(muki:layer-load-layers 'vendle
  '(boot
    register
    package
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
    ace-link
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
    hl-todo))

;;;;; package
(muki:layer-load-layers 'evil
  '(leader
    escape
    surround
    nerd-commenter
    lisp-state
    linewise
    matchit
    exchange
    operator-comment
    search-highlight-persist
    jumper
    visualstar
    smartparens
    easymotion
    textobj-between
    extra-operator
    snipe
    evil
    ))

(muki:layer-load-layers 'helm
  '(helm
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
    ))


;;;;; config
(muki:layer-load-layers 'config
  '(setting
    key
    hook
    path
    face
    clipboard
    font
    erc
    eshell
    eshell-prompt
    whitespace
    autoinsert
    dired
    eww
    newsticker
    rcirc
    tramp))

;;;;; packages
(require 'init-paketti)

;;;;; lang
(require 'init-lang)

;;;;; elisp
(require 'init-elisp)


;;;;; el-get
;; (require 'init-el-get)

;;;; provide
(provide 'init-load)
