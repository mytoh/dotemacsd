;;; init-paketti.el -*- coding: utf-8; lexical-binding: t -*-

;;;; builtins
;; save curosr position
(liby 'saveplace
      (setq-default save-place t))

;; checkdoc
(req 'checkdoc)

;; uniquify
(req 'uniquify
     (set-option uniquify-buffer-name-style 'post-forward-angle-brackets))

;; term/bobcat
(load "term/bobcat")
(when (fboundp 'terminal-init-bobcat)
  (terminal-init-bobcat))

;; outlining everywhere
;; (require 'allout)
;; (allout-auto-activation)

;;; package repositories

;; package.el
(req 'package
     ;; load MELPA
     (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") 'append)
     (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") 'append)
     (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") 'append)
     (add-to-list 'package-archives '("SC" . "http://joseito.republika.pl/sunrise-commander/") 'append)
     (package-initialize))


;;; package list

;; install packages
(setq muki:paketti-list
      '(rainbow-delimiters
        ;; rainbow-blocks
        ;; auto-complete
        ;; ac-ja
        ;; ac-slime
        bookmark+
        cursor-chg
        deferred
        highlight-symbol
        ;; dired
        image-dired+
        ;; slideview
        image+
        dired+
        dired-single
        ;; projectile
        ;; project-persist
        magit
        rainbow-mode
        ;; scheme-complete
        expand-region
        tabbar
        suomalainen-kalenteri
        info+
        redo+
        yasnippet
        ;; mew
        ;; w3m
        smartparens
        dash
        ht
        ;; powerline
        popwin
        ghc
        emms
        emms-info-mediainfo
        color-moccur
        git-gutter+
        git-gutter
        ;; git-gutter-fringe
        diff-hl
        nyan-mode
        minimap
        eshell-manual
        hackernews
        ;; twittering-mode
        ;; highlight-indentation
        auto-highlight-symbol
        multiple-cursors
        guide-key
        google-translate
        circe
        tumblesocks
        undo-tree
        direx
        ;; pallet
        page-break-lines
        flycheck
        flycheck-pos-tip
        ;; fiplr
        ;; fuzzy
        ;; melpa-upstream-visit
        ;; melpa
        quickrun
        sudo-ext
        shell-pop

        sunrise-commander
        sunrise-x-buttons
        sunrise-x-checkpoints
        sunrise-x-loop
        sunrise-x-mirror
        sunrise-x-modeline
        sunrise-x-popviewer
        sunrise-x-tabs
        sunrise-x-tree

        pretty-mode
        ;; pretty-mode-plus
        ;; clippy
        electric-case
        ;; paredit
        ;; visual-regexp
        ;; litable
        ace-jump-mode
        ;; auto-complete-clang-async
        mentor
        cask
        caskxy
        cl-lib-highlight
        anzu
        whitespace-cleanup-mode
        ;; yascroll
        ;; charmap
        ;; project-explorer
        highlight-unique-symbol
        exec-path-from-shell
        auto-auto-indent
        ;; perspective
        ;; workgroups2
        smartscan
        ;; multi-term
        free-keys
        zone-matrix
        company
        volatile-highlights
        recentf-ext
        unicode-fonts ; require eieio-1.3
        ;; writeroom-mode
        ;; writegood-mode
        ;; nyan-prompt
        ;; indent-guide
        keyfreq
        mykie
        ;; flylisp
        soundcloud
        emms-soundcloud
        xkcd
        elisp-slime-nav
        highlight-tail
        navi2ch
        elfeed
        elfeed-web
        git-commit-mode
        gitconfig-mode
        gitignore-mode
        lingr
        smartrep
        highlight-defined
        ;; sublimity
        erc-hl-nicks
        erc-image
        erc-tweet
        erc-youtube
        eldoc-extension
        manage-minor-mode
        ;; tab-group
        dim-autoload
        highlight-escape-sequences
        dark-souls
        iplayer
        prodigy
        mocker
        weechat
        sauron
        2048-game
        fancy-narrow
        migemo
        ace-link
        all-ext
        easy-kill
        stripe-buffer
        paradox
        diminish
        json-reformat
        zop-to-char
        ))

(defvar muki:paketti-list-prog-modes
  '(stumpwm-mode
    coffee-mode
    lua-mode
    haskell-mode
    js3-mode
    js2-mode
    json-mode
    ;; vala-mode
    conkeror-minor-mode
    csharp-mode
    markdown-mode
    vimrc-mode
    yaml-mode
    ))
(append-to-list muki:paketti-list muki:paketti-list-prog-modes)

(defvar muki:paketti-list-colour-themes
  '(;; themes
    firebelly-theme
    minimal-theme
    distinguished-theme
    flatui-theme
    monochrome-theme
    planet-theme
    tango-plus-theme
    colorsarenice-theme
    darkburn-theme
    tommyh-theme
    django-theme
    hemisu-theme
    heroku-theme
    sunny-day-theme
    organic-green-theme
    gruvbox-theme
    twilight-bright-theme
    cherry-blossom-theme
    afternoon-theme ; require emacs-24;.1
    sublime-themes
    tango-2-theme
    twilight-theme
    cyberpunk-theme
    mustang-theme
    phoenix-dark-pink-theme
    phoenix-dark-mono-theme
    dakrone-theme
    anti-zenburn-theme
    busybee-theme
    molokai-theme
    monokai-theme
    solarized-theme
    birds-of-paradise-plus-theme
    soothe-theme ; require emacs-24.1
    subatomic-theme
    grandshell-theme
    occidental-theme
    soft-charcoal-theme
    alect-themes
    clues-theme ; require emacs-24.1
    ample-theme
    ir-black-theme
    purple-haze-theme ; require emacs-24.0
    flatland-theme
    espresso-theme
    gandalf-theme
    gruber-darker-theme
    inkpot-theme
    spacegray-theme
    ample-zen-theme
    tronesque-theme
    underwater-theme
    base16-theme
    tangotango-theme
    calmer-forest-theme
    bubbleberry-theme
    moe-theme
    naquadah-theme
    noctilux-theme
    obsidian-theme
    soft-morning-theme
    soft-stone-theme
    subatomic256-theme
    toxi-theme
    ujelly-theme
    zen-and-art-theme
    twilight-anti-bright-theme
    pastels-on-dark-theme
    leuven-theme
    niflheim-theme
    steady-theme
    jujube-theme
    github-theme
    sea-before-storm-theme
    nzenburn-theme
    assemblage-theme
    late-night-theme
    tron-theme
    qsimpleq-theme
    deep-thought-theme
    stekene-theme
    waher-theme ; require emacs-24.1
    ))
(append-to-list muki:paketti-list muki:paketti-list-colour-themes)

(defvar muki:paketti-list-helm
  '(helm
    helm-flycheck
    helm-git
    helm-git-grep
    helm-themes
    helm-c-yasnippet
    helm-recoll
    helm-descbinds
    helm-gist
    helm-ls-git
    helm-migemo
    helm-cmd-t
    helm-projectile
    helm-ag
    helm-delicious
    helm-helm-commands
    helm-orgcard
    helm-swoop
    helm-company
    helm-dictionary
    helm-ag-r
    wgrep-helm
    helm-mode-manager
    helm-proc
    ))
(append-to-list muki:paketti-list muki:paketti-list-helm)

(defvar muki:paketti-list-org
  '(org
    org-magit
    org-plus-contrib
    org-bullets
    outorg
    outshine
    navi-mode
    orglink
    orglue
    worf
    ))
(append-to-list muki:paketti-list muki:paketti-list-org)

(cl-defun muki:paketti-update ()
  (unless package-archive-contents
    (package-refresh-contents))
  (cl-dolist (p muki:paketti-list)
    (unless (package-installed-p p)
      (message "installing %s"  p)
      (package-install p))))

(muki:paketti-update)

(defvar init-paketit
  '(
    paketti-rainbow-mode     ; this may cause problem
    paketti-google-translate
    paketti-guide-key
    paketti-image-dired+
    paketti-image+
    paketti-expand-region
    paketti-multiple-cursors
    paketti-rainbow-delimiters
    paketti-tabbar
    paketti-smartparens
    paketti-emms
    paketti-suomalainen-kalenteri
    paketti-info+
    paketti-popwin
    ;; paketti-w3m
    paketti-git-gutter
    paketti-yasnippet
    paketti-flymake
    paketti-coffee-mode
    paketti-undo-tree
    paketti-direx
    paketti-magit
    paketti-lua-mode
    paketti-vala-mode
    paketti-page-break-lines
    paketti-quickrun
    paketti-sudo-ext
    paketti-js3
    paketti-cl-lib-highlight
    paketti-anzu
    paketti-stumpwm-mode
    ;; paketti-charmap
    paketti-auto-auto-indent
    paketti-all-ext
    paketti-auto-highlight-symbol
    paketti-conkeror-minor-mode
    paketti-csharp-mode
    paketti-smartscan
    paketti-volatile-highlights
    paketti-recentf-ext
    ;; paketti-writegood-mode
    paketti-shell-pop
    paketti-color-moccur
    paketti-mykie
    paketti-keyfreq
    paketti-twittering-mode
    paketti-markdown-mode
    paketti-vimrc-mode
    paketti-elisp-slime-nav
    paketti-navi2ch
    paketti-elfeed
    paketti-smartrep
    paketti-migemo
    paketti-ace-jump-mode
    paketti-highlight-defined
    paketti-tumblesocks
    paketti-erc-image
    paketti-erc-tweet
    paketti-eldoc-extension
    paketti-manage-minor-mode
    paketti-dim-autoload
    paketti-highlight-escape-sequences
    paketti-company-mode
    paketti-fancy-narrow
    paketti-flycheck
    paketti-flycheck-pos-tip
    paketti-sunrise-commander
    paketti-ace-link
    paketti-easy-kill
    paketti-stripe-buffer
    paketti-haskell-mode
    paketti-ghc
    paketti-paradox
    paketti-diminish
    paketti-zop-to-char


    ;;; marmalade
    ;; paketti-rainbow-blocks
    ;; paketti-highlight-tail
    ;; paketti-unicode-fonts
    ;; paketti-git-gutter+
    ;; paketti-diff-hl

    ;; paketti-highlight-unique-symbol
    ;; paketti-tab-group
    ;; paketti-flylisp
    ;; paketti-indent-guide
    ;; paketti-circe
    ;; paketti-auto-complete
    ;; paketti-projectile
    ;; paketti-project-persist
    ;; paketti-highlight-indentation
    ;; paketti-pretty-mode
    ;; paketti-pretty-mode-plus
    ;; paketti-electric-case
    ;; paketti-visual-regexp
    ;; paketti-litable
    ;; paketti-mentor
    ;; paketti-fiplr
    ;; paketti-melpa-upstream-visit
    ;; paketti-minimap
    ;; paketti-project-explorer
    ;; paketti-yascroll
    ;; paketti-zone-matrix
    ;; paketti-multi-term
    ;; paketti-workgroups2
    ;; paketti-perspective
    ;; paketti-exec-path-from-shell
    ;; paketti-dired+
    ;; paketti-dired-single
    ;; paketti-cursor-chg
    ;; paketti-git-gutter-fringe
    ))


(defvar muki:paketit-list-helm
  '(;; helm
    paketti-helm
    paketti-helm-delicious
    paketti-helm-helm-commands
    paketti-helm-orgcard
    paketti-helm-swoop
    paketti-helm-ag-r
    ;; paketti-helm-ag
    paketti-helm-company
    paketti-helm-dictionary
    paketti-helm-recoll
    paketti-wgrep-helm

    ))
(append-to-list init-paketit muki:paketit-list-helm)

(defvar muki:paketit-list-org
  '(paketti-org
    ;; paketti-org-plus-contrib
    ;; paketti-org-bullets
    paketti-outorg
    paketti-orglue
    paketti-outshine
    ;; paketti-navi-mode
    paketti-orglink
    ))
(append-to-list init-paketit muki:paketit-list-org)

(mapc 'require init-paketit)


;; ;; egg
;; (req 'egg
;;     (setq egg-auto-update nil))

;; redo+
;; (req 'redo+
;;      (global-set-key (kbd "C-_") 'redo))


;; hackernews
(pak 'hackernews)

(provide 'init-paketti)
