
;;; paketti-eshell.el -*- coding: utf-8; lexical-binding: t -*-

;;; builtins

;; save curosr position
(req 'saveplace
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
(require 'allout)
(allout-init t)

(require 'paketti-newsticker)
(require 'paketti-eshell)
(require 'paketti-eldoc)
(require 'paketti-whitespace)
(require 'paketti-autoinsert)
;; (require 'paketti-erc)

;;; package repositories

;; package.el
(req 'package
     ;; load MELPA
     (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
     (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
     (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
     (add-to-list 'package-archives '("SC" . "http://joseito.republika.pl/sunrise-commander/") t)
     (package-initialize))


;;; package list

;; install packages
(setq *my-paketti-list*
      '(rainbow-delimiters
        auto-complete
        ac-ja
        ac-slime
        bookmark+
        cursor-chg
        deferred
        highlight-symbol
        ;; dired
        image-dired+
        slideview
        image+
        dired+
        dired-single
        projectile
        project-persist
        magit
        rainbow-mode
        scheme-complete
        expand-region
        tabbar
        suomalainen-kalenteri
        info+
        redo+
        yasnippet
        mew
        w3m
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
        git-gutter-fringe
        diff-hl
        nyan-mode
        minimap
        eshell-manual
        hackernews
        twittering-mode
        highlight-indentation
        auto-highlight-symbol
        multiple-cursors
        guide-key
        google-translate
        circe
        ;; tumblesocks
        undo-tree
        direx
        ;; pallet
        page-break-lines
        ;; flycheck
        fiplr
        fuzzy
        ;; melpa-upstream-visit
        ;; melpa
        quickrun
        sudo-ext
        shell-pop
        sunrise-commander

        pretty-mode
        pretty-mode-plus
        clippy
        ;; electric-case
        paredit
        visual-regexp
        litable
        stripe-buffer
        ace-jump-mode
        ;; auto-complete-clang-async
        mentor
        cask
        cl-lib-highlight
        anzu
        whitespace-cleanup-mode
        yascroll
        charmap
        project-explorer
        highlight-unique-symbol
        exec-path-from-shell
        auto-auto-indent
        perspective
        workgroups2
        smartscan
        multi-term
        free-keys
        zone-matrix
        company
        volatile-highlights
        recentf-ext
        unicode-fonts ; require eieio-1.3
        writeroom-mode
        writegood-mode
        nyan-prompt
        indent-guide
        keyfreq
        mykie
        flylisp
        helm-package
        soundcloud
        emms-soundcloud
        emacs-xkcd
        all-ext))

(defvar *my-paketti-list-prog-modes*
  '(stumpwm-mode
    coffee-mode
    lua-mode
    haskell-mode
    js3-mode
    vala-mode
    conkeror-minor-mode
    csharp-mode
    markdown-mode
    vimrc-mode
    ))
(append-to-list *my-paketti-list* *my-paketti-list-prog-modes* )

(defvar *my-paketti-list-colour-themes*
  '(;; themes
    gruvbox-theme
    afternoon-theme ; require emacs-24;.1
    sublime-themes
    subatomic-enhanced-theme
    tango-2-theme
    twilight-theme
    sea-before-storm-theme
    cyberpunk-theme
    zenburn-theme
    mustang-theme
    nzenburn-theme
    phoenix-dark-pink-theme
    phoenix-dark-mono-theme
    assemblage-theme
    dakrone-theme
    anti-zenburn-theme
    busybee-theme
    molokai-theme
    monokai-theme
    late-night-theme
    tron-theme
    qsimpleq-theme
    solarized-theme
    birds-of-paradise-plus-theme
    soothe-theme ; require emacs-24.1
    subatomic-theme
    grandshell-theme
    occidental-theme
    soft-charcoal-theme
    alect-themes
    waher-theme ; require emacs-24.1
    clues-theme ; require emacs-24.1
    ample-theme
    ir-black-theme
    purple-haze-theme ; require emacs-24.0
    flatland-theme
    deep-thought-theme
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
    jujube-theme
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
    steady-theme
    pastels-on-dark-theme
    leuven-theme))
(append-to-list *my-paketti-list* *my-paketti-list-colour-themes*)

(defvar *my-paketti-list-helm*
  '(helm
    helm-git
    helm-themes
    helm-c-yasnippet
    helm-recoll
    helm-descbinds
    ;; helm-gist
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
    ))
(append-to-list *my-paketti-list* *my-paketti-list-helm*)

(defvar *my-paketti-list-org*
  '(org
    org-magit
    org-plus-contrib
    org-bullets
    outorg
    outshine
    navi-mode
    orglink
    orglue
    ))
(append-to-list *my-paketti-list* *my-paketti-list-org*)



(cl-defun my-paketti-update ()
  (unless package-archive-contents
    (package-refresh-contents))
  (cl-dolist (p *my-paketti-list*)
    (unless (package-installed-p p)
      (message "installing %s"  p)
      (package-install p))))

(my-paketti-update)



(defvar init-paketit
  '(
    paketti-rainbow-mode     ; this may cause problem
    paketti-google-translate
    paketti-guide-key
    paketti-dired
    paketti-image-dired+
    paketti-image+
    paketti-expand-region
    paketti-multiple-cursors
    paketti-rainbow-delimiters
    paketti-company-mode
    paketti-tabbar
    paketti-smartparens
    paketti-emms
    paketti-suomalainen-kalenteri
    paketti-info+
    paketti-popwin
    paketti-w3m
    paketti-eww
    ;; paketti-git-gutter+
    ;; paketti-git-gutter
    paketti-diff-hl
    paketti-yasnippet
    paketti-flymake
    paketti-coffee-mode
    paketti-undo-tree
    paketti-direx
    paketti-magit
    paketti-lua-mode
    paketti-vala-mode
    paketti-page-break-lines
    paketti-stripe-buffer
    paketti-quickrun
    paketti-sudo-ext
    paketti-js3
    paketti-cl-lib-highlight
    paketti-anzu
    paketti-stumpwm-mode
    paketti-charmap
    paketti-highlight-unique-symbol
    paketti-auto-auto-indent
    paketti-all-ext
    paketti-auto-highlight-symbol
    paketti-conkeror-minor-mode
    paketti-csharp-mode
    paketti-smartscan
    paketti-volatile-highlights
    paketti-recentf-ext
    ;; paketti-unicode-fonts
    paketti-writegood-mode
    paketti-shell-pop
    paketti-color-moccur
    paketti-mykie
    paketti-keyfreq
    paketti-twittering-mode
    paketti-markdown-mode
    paketti-vimrc-mode
    ;; paketti-flylisp
    ;; paketti-indent-guide
    ;; paketti-tumblesocks
    ;; paketti-circe
    ;; paketti-auto-complete
    ;; paketti-projectile
    ;; paketti-project-persist
    ;; paketti-ghc
    ;; paketti-haskell-mode
    ;; paketti-highlight-indentation
    ;; paketti-pretty-mode
    ;; paketti-pretty-mode-plus
    ;; paketti-electric-case
    ;; paketti-visual-regexp
    ;; paketti-litable
    ;; paketti-ace-jump-mode
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
    ;; paketti-flycheck
    ;; paketti-migemo
    ))


(defvar *my-paketit-list-helm*
  '(;; helm
    paketti-helm
    paketti-helm-delicious
    paketti-helm-helm-commands
    paketti-helm-orgcard
    paketti-helm-swoop
    paketti-helm-ag-r
    paketti-helm-company
    paketti-helm-dictionary
    paketti-helm-recoll
    paketti-wgrep-helm
    paketti-helm-package
    ))
(append-to-list init-paketit *my-paketit-list-helm*)

(defvar *my-paketit-list-org*
  '(paketti-org
    ;; paketti-org-plus-contrib
    ;; paketti-org-bullets
    paketti-outorg
    paketti-orglue
    paketti-outshine
    paketti-navi-mode
    paketti-orglink
    ))
(append-to-list init-paketit *my-paketit-list-org*)

(mapc 'require init-paketit)


;; ;; egg
;; (req 'egg
;;     (setq egg-auto-update nil))

;; redo+
;; (req 'redo+
;;      (global-set-key (kbd "C-_") 'redo))


;;; hackernews
(req 'hackernews)

(provide 'init-paketti)
