 ;;; -*- coding: utf-8 -*-

;;;
;;; builtins
;;;

;; save curosr position
(req 'saveplace
     (setq-default save-place t))


;; checkdoc
(req 'checkdoc)

;; uniquify
(req 'uniquify
     (setq uniquify-buffer-name-style 'post-forward-angle-brackets))

;; term/bobcat
(load "term/bobcat")
(when (fboundp 'terminal-init-bobcat)
  (terminal-init-bobcat))

;; outlining everywhere
(require 'allout)
(allout-init t)


(require 'paketti-eshell)
(require 'paketti-eldoc)
(require 'paketti-whitespace)
;; (require 'paketti-erc)

;;;
;;; package from repositories
;;;

;; package.el
(req 'package
     ;; load MELPA
     (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
     (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
     (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
     (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)
     (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
     (add-to-list 'package-archives '("SC" . "http://joseito.republika.pl/sunrise-commander/") t)
     (package-initialize))


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
        dired+
        dired-single
        projectile
        project-persist
        magit
        magit-commit-training-wheels
        rainbow-mode
        scheme-complete
        expand-region
        tabbar
        suomalainen-kalenteri
        isearch+
        info+
        redo+
        haskell-mode
        yasnippet
        yasnippet-bundle
        w3m
        smartparens
        dash
        ht
        ack-and-a-half
        ;; powerline
        popwin
        ghc
        emms
        color-moccur
        git-gutter
        git-gutter-fringe
        nyan-mode
        minimap
        ag
        eshell-manual
        hackernews
        twittering-mode
        highlight-indentation
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
        fiplr
        fuzzy
        melpa-upstream-visit
        melpa
        quickrun
        sudo-ext
        vala-mode
        shell-pop
        sunrise-commander

        navi-mode
        pretty-mode
        pretty-mode-plus
        unicode-progress-reporter
        clippy
        electric-case
        paredit
        visual-regexp
        litable
        stripe-buffer
        ace-jump-mode
        ;; auto-complete-clang-async
        lua-mode
        mentor
        color-theme-approximate
        cask
        js3-mode
        cl-lib-highlight
        anzu
        coffee-mode
        whitespace-cleanup-mode
        ))

(defvar *my-paketti-list-colour-themes*
  '(;; themes
    molokai-theme
    monokai-theme
    late-night-theme
    tron-theme
    qsimpleq-theme
    solarized-theme
    birds-of-paradise-plus-theme
    soothe-theme
    subatomic-theme
    grandshell-theme
    occidental-theme
    soft-charcoal-theme
    waher-theme
    ))
(append-to-list *my-paketti-list* *my-paketti-list-colour-themes*)

(defvar *my-paketti-list-helm*
  '(helm
    helm-git
    helm-themes
    helm-c-moccur
    helm-c-yasnippet
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
    ))
(append-to-list *my-paketti-list* *my-paketti-list-helm*)

(defvar *my-paketti-list-org*
  '(org
    ;; org-magit
    org-plus-contrib
    org-bullets
    outorg
    outshine
    outline-magic
    ))
(append-to-list *my-paketti-list* *my-paketti-list-org*)



(cl-defun my-paketti-update ()
  (unless package-archive-contents
    (package-refresh-contents))
  (cl-dolist (p *my-paketti-list*)
    (unless (package-installed-p p)
      (message "install %s" p)
      (package-install p)
      (message "installing %s"  p))))

(my-paketti-update)



(defvar init-pakettit
  '(
    ;; this may cause problem
    paketti-rainbow-mode

    paketti-tumblesocks
    paketti-circe
    paketti-google-translate
    paketti-multiple-cursors
    paketti-guide-key
    paketti-dired
    ;; paketti-dired+
    paketti-image-dired+
    ;; paketti-dired-single
    paketti-expand-region
    paketti-rainbow-delimiters
    paketti-auto-complete
    paketti-tabbar
    paketti-smartparens
    paketti-projectile
    paketti-project-persist
    paketti-emms
    ;; paketti-cursor-chg
    paketti-suomalainen-kalenteri
    paketti-isearch+
    paketti-info+
    paketti-haskell-mode
    paketti-ack-and-a-half
    paketti-popwin
    paketti-w3m
    ;; paketti-git-gutter
    ;; paketti-git-gutter-fringe
    paketti-ghc
    paketti-ag
    paketti-yasnippet
    paketti-flymake
    paketti-twittering-mode
    paketti-highlight-indentation
    paketti-coffee-mode
    ;; paketti-auto-highlight-symbol
    paketti-undo-tree
    paketti-direx
    paketti-org
    ;; paketti-org-bullets
    paketti-outorg
    paketti-outshine
    paketti-magit
    paketti-lua-mode
    paketti-vala-mode
    ;; paketti-magit-commit-training-wheels
    paketti-page-break-lines
    ;; paketti-flycheck
    paketti-pretty-mode
    paketti-pretty-mode-plus
    paketti-unicode-progress-reporter
    paketti-electric-case
    paketti-visual-regexp
    paketti-litable
    paketti-stripe-buffer
    paketti-ace-jump-mode
    paketti-mentor
    paketti-fiplr
    paketti-melpa-upstream-visit
    paketti-color-theme-approximate
    paketti-quickrun
    paketti-sudo-ext
    paketti-js3
    paketti-navi-mode
    paketti-cl-lib-highlight
    paketti-anzu
    ;; paketti-shell-pop

    ;; helm
    paketti-helm
    paketti-helm-delicious
    paketti-helm-helm-commands
    paketti-helm-orgcard

    ))


(mapc #'require init-pakettit)


;; ;; egg
;; (req 'egg
;;     (setq egg-auto-update nil))

;; redo+
;; (req 'redo+
;;      (global-set-key (kbd "C-_") 'redo))


;;; hackernews
(req 'hackernews)

;; multi-term
;;(req 'multi-term)


(provide 'init-paketti)
