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

(require 'package-eshell)
(require 'package-eldoc)
;; (require 'package-whitespace)
;; (require 'package-erc)

;;;
;;; melpa or marmalade
;;;
;; package.el
(req 'package
     ;; load MELPA
     (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                              ("melpa" . "http://melpa.milkbox.net/packages/")
                              ("ELPA" . "http://tromey.com/elpa/")
                              ("marmalade" . "http://marmalade-repo.org/packages/")
                              ))
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
        ;; helm
        helm
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
        projectile
        project-persist
        magit
        rainbow-mode
        scheme-complete
        expand-region
        tabbar
        suomalainen-kalenteri
        isearch+
        info+
        redo+
        haskell-mode
        flex-autopair
        yasnippet
        yasnippet-bundle
        w3m
        paredit
        smartparens
        ack-and-a-half
        powerline
        popwin
        ghc
        emms
        color-moccur
        git-gutter
        nyan-mode
        minimap
        ag
        eshell-manual
        pretty-symbols-mode
        hackernews
        twittering-mode
        highlight-indentation
        coffee-mode
        ;; themes
        molokai-theme
        monokai-theme
        late-night-theme
        tron-theme
        qsimpleq-theme
        solarized-theme
        ujelly-theme
        birds-of-paradise-plus-theme
        soothe-theme
        ))

(package-refresh-contents)
(dolist (p *my-package-list*)
  (unless (package-installed-p p)
    (package-install p)
    (message "install %s"  p)))



(defvar init-packages
  '(
    ;; this may cause problem
    package-rainbow-mode

    package-dired+
    package-image-dired+
    ;; package-dired-single
    package-expand-region
    package-rainbow-delimiters
    package-auto-complete
    package-tabbar
    package-smartparens
    package-helm
    package-projectile
    package-project-persist
    package-emms
    package-cursor-chg
    package-suomalainen-kalenteri
    package-isearch+
    package-info+
    package-haskell-mode
    package-ack-and-a-half
    package-popwin
    package-w3m
    package-git-gutter
    package-ghc
    package-ag
    package-yasnippet
    package-pretty-symbols-mode
    package-flymake
    package-twittering-mode
    package-highlight-indentation
    package-org
    package-coffee-mode
    ))

(mapc #'require init-packages)


;; ;; egg
;; (req 'egg
;;     (setq egg-auto-update nil))

;; ;; redo+
;; (req 'redo+
;;     (global-set-key (kbd "C-_") 'redo))


;;; hackernews
(req 'hackernews)


;; multi-term
;;(req 'multi-term)


(provide 'init-package)
