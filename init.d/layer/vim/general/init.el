;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'general


  ;; ;; bind a key globally in normal state; keymaps must be quoted
  ;; (setq general-default-keymaps 'evil-normal-state-map)
  ;; ;; bind j and k in normal state globally
  ;; (general-define-key
  ;;  "j" 'evil-next-visual-line
  ;;  "k" 'evil-previous-visual-line)

  ;; ;; bind gj and gk
  ;; (general-define-key :prefix "g"
  ;;                     "j" 'evil-next-line
  ;;                     "k" 'evil-previous-line)

  ;; ;; named prefix key
  ;; (setq my-leader1 ",")
  ;; (general-define-key :prefix my-leader1
  ;;                     "f" 'find-file)

  ;; ;; a default prefix sequence
  ;; (setq general-default-prefix ",")
  ;; (general-define-key "f" 'find-file)

  ;; ;; bind a key in multiple states
  ;; (general-define-key :keymaps 'org-mode-map
  ;;                     :states '(insert emacs)
  ;;                     "<tab>" 'org-cycle)

  ;; (setq general-default-keymaps 'evil-normal-state-map)
  
  (general-define-key
   :states '(normal insert)
   :prefix "SPC"
   :non-normal-prefix "M-m"

   "u" #'universal-argument


   "db" #'describe-bindings
   "df" #'describe-function
   "dk" #'describe-key
   "dm" #'describe-mode
   "dc" #'describe-char
   "dv" #'describe-variable
   "dp" #'describe-package
   "dF" #'describe-face
   "dt" #'describe-theme

   "ff" #'helm-find-files
   "fs" #'save-buffer

   "ff" #'helm-find-files
   "fg" #'helm-ls-git-ls
   "fs" #'evil-write
   "fS" #'evil-write-all
   "feh" #'helm-muki-layer
   "fel" #'muki:open-file-init-load
   "fer" #'muki:open-file-package-registers

   ;; buffer
   "bk" #'kill-buffer
   "bK" #'muki:kill-other-buffers
   "bn" #'switch-to-next-buffer
   "bp" #'switch-to-prev-buffer
   "bs" #'switch-to-scratch-buffer
   "br" #'revert-buffer

   "qQ" #'evil-quit-all
   "qq" #'kill-buffer-and-window
   "qr" #'muki:restart-emacs
   "qR" #'muki:restart-emacs-debug


   "wc"  #'delete-window
   "wH"  #'evil-window-move-far-left
   "wh"  #'evil-window-left
   "wJ"  #'evil-window-move-very-bottom
   "wj"  #'evil-window-down
   "wK"  #'evil-window-move-very-top
   "wk"  #'evil-window-up
   "wL"  #'evil-window-move-far-right
   "wl"  #'evil-window-right
   "wo"  #'delete-other-windows
   "ws"  #'split-window-below
   "wb"  #'muki:switch-to-minibuffer-window
   "w-"  #'split-window-below
   "wv"  #'split-window-right
   "ww"  #'other-window
   "w/"  #'split-window-right
   "w="  #'balance-windows
   )


  (liby 'helm-project-buffer
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "bb" #'helm-project-buffer))
  
  (liby 'helm-yplistener
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "ay" #'helm-yplistener))


  (liby 'helm-muki
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "ah" #'helm-muki
     "ac" #'helm-muki-program
     "an" #'helm-muki-vihko
     "awt" #'helm-muki-twitch))


  (general-define-key
   :states '(normal insert)
   :prefix "SPC"
   :non-normal-prefix "M-m"
   "amv" #'muki:play-mpv)


  (liby 'hoarder
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "apu" #'hoarder:update
     "apk" #'hoarder:check
     ;; "c" #'hoarder:clean
     "apl" #'helm-hoarder))

  (liby 'magit
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "g" '(:package magit)
     "gl" (lambda ()
            (interactive)
            (magit-log '("HEAD")))
     "gs" #'magit-status))

  (liby 'helm
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "SPC" #'helm-M-x
     "?" #'helm-descbinds
     "hl" #'helm-resume
     "hL" #'helm-locate-library
     "hf" #'helm-features
     "hCl" #'helm-colors
     "hb" #'helm-bookmarks
     "hi" #'helm-info-at-point
     "hm" #'helm-man-woman
     "ha" #'helm-apropos
     "hry" #'helm-show-kill-ring
     "hrr" #'helm-register
     "hrm" #'helm-all-mark-rings
     "Th" #'helm-themes))

  (req 'mesh
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     ;; :keymaps 'mesh-mode-map
     "z" '(:package mesh)
     "zz" #'mesh:switch)
    (add-hook 'eshell-mode-hook
              (lambda ()
                (general-define-key
                 :states '(normal insert)
                 :prefix "SPC"
                 :non-normal-prefix "M-m"
                 :keymaps 'eshell-mode-map
                 ;; "z" '(:package eshell
                 ;;       :keymap eshell-mode-map)
                 "zz" #'mesh:switch
                 "zc" #'mesh:new-tab
                 "zn" #'mesh:next-tab
                 "zp" #'mesh:prev-tab
                 "zs" #'mesh:split-tab
                 "zS" #'mesh:vsplit-tab
                 "zx" #'mesh:kill-pane
                 "z)" #'mesh:next-session
                 "z(" #'mesh:prev-session
                 "zC" #'mesh:new-session
                 "z<tab>" #'mesh:next-pane)))
    )


  (liby 'paradox
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "aP" #'muki:paradox-list-packages))

  (liby 'eww
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "awe" #'muki:eww
     "awE" #'eww))

  (liby 'helm-git-grep
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "sg" #'helm-git-grep))

  (liby 'helm-ag
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "sa" #'helm-do-ag))

  ;; (liby 'swiper
  ;;   (bind-map-set-keys my-base-leader-search-map
  ;;       "i" #'swiper))

  (liby 'helm-swoop
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "si" #'helm-swoop-without-pre-input))
  
  (liby 'emms
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "amP" #'emms-pause
     "ams" #'emms-stop
     "amp" #'emms-previous
     "amn" #'emms-next
     "amb" #'emms-smart-browse
     "amaf" #'emms-add-file
     "amad" #'emms-add-directory-tree
     "am+" #'emms-volume-raise
     "am-" #'emms-volume-lower))

  (liby 'theme-looper
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "Tr" #'theme-looper-enable-random-theme
     "Tn" #'theme-looper-enable-next-theme))

  
  (liby 'github-browse-file
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "gho" 'github-browse-file))

  (liby 'evil-iedit-state
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "se" 'evil-iedit-state/iedit-mode))

  (liby 'link-hint
    (general-define-key
     :states '(normal insert)
     :prefix "SPC"
     :non-normal-prefix "M-m"
     "xo" 'link-hint-open-link
     "xO" 'link-hint-open-multiple-links))

  ;; bind a key in multiple states
  (general-define-key :keymaps 'org-mode-map
                      :states '(normal insert emacs)
                      "<tab>" #'org-cycle)

  )

;;; init.el ends here
