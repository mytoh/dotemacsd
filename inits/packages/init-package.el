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


(require 'package-eshell)
(require 'package-eldoc)
(require 'package-whitespace)
;; (require 'package-erc)

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
(setq *my-package-list*
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

        ;; org
        org
        ;; org-magit
        org-plus-contrib
        org-bullets
        outorg
        outshine
        outline-magic

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
        ))

(defvar *my-package-list-colour-themes*
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
(append-to-list *my-package-list* *my-package-list-colour-themes*)

(defvar *my-package-list-helm*
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
(append-to-list *my-package-list* *my-package-list-helm*)


(cl-defun my-package-update ()
  (unless package-archive-contents
    (package-refresh-contents))
  (cl-dolist (p *my-package-list*)
    (unless (package-installed-p p)
      (message "install %s" p)
      (package-install p)
      (message "installing %s"  p))))

(my-package-update)



(defvar init-packages
  '(
    ;; this may cause problem
    package-rainbow-mode

    package-tumblesocks
    package-circe
    package-google-translate
    package-multiple-cursors
    package-guide-key
    package-dired
    ;; package-dired+
    package-image-dired+
    ;; package-dired-single
    package-expand-region
    package-rainbow-delimiters
    package-auto-complete
    package-tabbar
    package-smartparens
    package-projectile
    package-project-persist
    package-emms
    ;; package-cursor-chg
    package-suomalainen-kalenteri
    package-isearch+
    package-info+
    package-haskell-mode
    package-ack-and-a-half
    package-popwin
    package-w3m
    ;; package-git-gutter
    ;; package-git-gutter-fringe
    package-ghc
    package-ag
    package-yasnippet
    package-flymake
    package-twittering-mode
    package-highlight-indentation
    package-coffee-mode
    ;; package-auto-highlight-symbol
    package-undo-tree
    package-direx
    package-org
    ;; package-org-bullets
    package-outorg
    package-outshine
    package-magit
    package-lua-mode
    package-vala-mode
    ;; package-magit-commit-training-wheels
    package-page-break-lines
    ;; package-flycheck
    package-pretty-mode
    package-pretty-mode-plus
    package-unicode-progress-reporter
    package-electric-case
    package-visual-regexp
    package-litable
    package-stripe-buffer
    package-ace-jump-mode
    package-mentor
    package-fiplr
    package-melpa-upstream-visit
    package-color-theme-approximate
    package-quickrun
    package-sudo-ext
    package-js3
    package-navi-mode
    package-cl-lib-highlight
    package-anzu
    ;; package-shell-pop

    ;; helm
    package-helm
    package-helm-delicious
    package-helm-helm-commands
    package-helm-orgcard

    ))


(mapc #'require init-packages)


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


(provide 'init-package)
