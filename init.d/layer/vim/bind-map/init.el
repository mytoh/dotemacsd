;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(require 'glof)

(req 'bind-map

  (cl-defmacro muki:bind-leader-map (mapname &rest args)
    (declare (indent 1))
    (if (glof:get args :evil-keys)
        `(bind-map ,mapname ,@(cl-letf* ((prefix (if (bound-and-true-p muki:evil-leader-key)
                                                     muki:evil-leader-key
                                                   "SPC")))
                                (glof:update args
                                             :evil-keys
                                             (lambda (keys)
                                               (seq-map
                                                (lambda (key)
                                                  (concat prefix " " key))
                                                keys)))))
      `(bind-map ,mapname ,@args)))

  (bind-map my-base-leader-map
      :evil-keys ("SPC")
      :evil-states (normal motion visual)
      :override-minor-modes t
      :override-mode-name muki-leader-override-map)

  (muki:bind-leader-map my-base-leader-application-map
    :evil-keys ("a")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-application-web-map
    :evil-keys ("a w")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-application-package-manager-map
    :evil-keys ("a p")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-application-multimedia-map
    :evil-keys ("a m")
    :evil-states (normal motion))
  
  (muki:bind-leader-map my-base-leader-help-describe-map
    :evil-keys ("h d")
    :evil-states (normal motion visual))

  (muki:bind-leader-map my-base-leader-buffer-map
    :evil-keys ("b")
    :evil-states (normal motion visual))

  (muki:bind-leader-map my-base-leader-window-map
    :evil-keys ("w")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-quit-map
    :evil-keys ("q")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-git-map
    :evil-keys ("g")
    :evil-states (normal motion))
  
  (muki:bind-leader-map my-base-leader-help-info-map
    :evil-keys ("h i")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-emms-map
    :evil-keys ("a m m")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-org-map
    :evil-keys ("o")
    :evil-states (normal motion))
  
  (muki:bind-leader-map my-base-leader-file-map
    :evil-keys ("f")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-search-map
    :evil-keys ("s")
    :evil-states (normal motion))

  (muki:bind-leader-map my-base-leader-theme-map
    :evil-keys ("T")
    :evil-states (normal motion))


  (bind-map-set-keys my-base-leader-map
      ;; Universal argument ---------------------------------------------------------
      "u" #'universal-argument)

  (bind-map-set-keys my-base-leader-quit-map
      "Q" #'evil-quit-all
      "q" #'kill-buffer-and-window
      "r" #'muki:restart-emacs
      "R" #'muki:restart-emacs-debug)

  (cl-defun switch-to-scratch-buffer ()
    (interactive)
    (switch-to-buffer
     (get-buffer-create "*scratch*")))

  
  (bind-map-set-keys my-base-leader-help-describe-map
      "b" #'describe-bindings
      "f" #'describe-function
      "k" #'describe-key
      "m" #'describe-mode
      "c" #'describe-char
      "v" #'describe-variable
      "p" #'describe-package
      "F" #'describe-face
      "t" #'describe-theme)

  (liby 'which-key
    (bind-map-set-keys my-base-leader-map
        "h k" 'which-key-show-top-level))

  
  (bind-map-set-keys my-base-leader-buffer-map
      "K"  #'muki:kill-other-buffers
      "n"  #'switch-to-next-buffer
      "p"  #'switch-to-prev-buffer
      "s" #'switch-to-scratch-buffer
      "r" #'revert-buffer)
  

  (defun muki:switch-to-minibuffer-window ()
    ;; spacemacs
    "switch to minibuffer window (if active)"
    (interactive)
    (when (active-minibuffer-window)
      (select-window (active-minibuffer-window))))
  
  (bind-map-set-keys my-base-leader-window-map
      "c"  #'delete-window
      "H"  #'evil-window-move-far-left
      "h"  #'evil-window-left
      "J"  #'evil-window-move-very-bottom
      "j"  #'evil-window-down
      "K"  #'evil-window-move-very-top
      "k"  #'evil-window-up
      "L"  #'evil-window-move-far-right
      "l"  #'evil-window-right
      "o"  #'delete-other-windows
      "s"  #'split-window-below
      "b"  #'muki:switch-to-minibuffer-window
      "-"  #'split-window-below
      "v"  #'split-window-right
      "w"  #'other-window
      "/"  #'split-window-right
      "="  #'balance-windows)


  (liby 'mesh
    (muki:bind-leader-map my-mesh-leader-map
      :evil-keys ("z")
      :minor-modes (mesh-mode))
    (bind-map-set-keys my-base-leader-map
        "z z" #'mesh:switch)
    (bind-map-set-keys my-mesh-leader-map
        "z" #'mesh:switch
        "c" #'mesh:new-tab
        "n" #'mesh:next-tab
        "p" #'mesh:prev-tab
        "s" #'mesh:split-tab
        "S" #'mesh:vsplit-tab
        "x" #'mesh:kill-pane
        ")" #'mesh:next-session
        "(" #'mesh:prev-session
        "C" #'mesh:new-session
        "<tab>" #'mesh:next-pane)) 

  (liby 'helm-project-buffer
    (bind-map-set-keys my-base-leader-buffer-map
        "b" #'helm-project-buffer))
  
  (liby 'helm-ypv
    (bind-map-set-keys my-base-leader-application-map
        "y" #'helm-ypv))

  
  (liby 'helm-alku
    (bind-map-set-keys my-base-leader-application-map
        "h" #'helm-alku
        "c" #'helm-alku-program
        "n" #'helm-alku-vihko
        "ä" #'helm-alku-ääliö)
    (bind-map-set-keys my-base-leader-application-web-map
        "t" #'helm-alku-twitch))

  (bind-map-set-keys my-base-leader-application-multimedia-map
      "v" #'muki:play-mpv)

  (liby 'hoarder
    (bind-map-set-keys my-base-leader-application-package-manager-map
        "u" #'hoarder:update
        "k" #'hoarder:check
        ;; "c" #'hoarder:clean
        "l" #'helm-hoarder))

  (liby 'magit
    (bind-map-set-keys my-base-leader-git-map
        "l" (lambda ()
              (interactive)
              (magit-log '("HEAD")))
        "s" #'magit-status))

  (liby 'helm
    (bind-map-set-keys my-base-leader-map
        ";" #'helm-M-x
        "?" #'helm-descbinds)
    (bind-map-set-keys my-base-leader-map
        "hl" #'helm-resume
        "hL" #'helm-locate-library
        "hf" #'helm-features
        "hCl" #'helm-colo
        "hb" #'helm-pp-bookmarks
        "hi" #'helm-info-at-point
        "hm" #'helm-man-woman
        "ha" #'helm-apropos
        "hry" #'helm-show-kill-ring
        "hrr" #'helm-register
        "hrm" #'helm-all-mark-rings)
    (bind-map-set-keys my-base-leader-theme-map
        "h" #'helm-themes))

  (liby 'paradox
    (bind-map-set-keys my-base-leader-application-map
        "P" #'muki:paradox-list-packages))

  (liby 'eww
    (bind-map-set-keys my-base-leader-application-web-map
        "e" #'muki:eww
        "E" #'eww))

  (liby 'helm-git-grep
    (bind-map-set-keys my-base-leader-search-map
        "g" #'helm-git-grep))

  (liby 'helm-ag
    (bind-map-set-keys my-base-leader-search-map
        "a" #'helm-do-ag))

  ;; (liby 'swiper
  ;;   (bind-map-set-keys my-base-leader-search-map
  ;;       "i" #'swiper))

  (liby 'helm-swoop
    (bind-map-set-keys my-base-leader-search-map
        "i" #'helm-swoop))
  
  (liby 'emms
    (bind-map-set-keys my-base-leader-emms-map
        "P" #'emms-pause
        "s" #'emms-stop
        "p" #'emms-previous
        "n" #'emms-next
        "b" #'emms-smart-browse
        "a f" #'emms-add-file
        "a d" #'emms-add-directory-tree
        "+" #'emms-volume-raise
        "-" #'emms-volume-lower))
  
  (cl-defun muki:open-file-init-load ()
    (interactive)
    (find-file (expand-file-name
                "init.d/init-load.el"
                user-emacs-directory)))

  (cl-defun muki:open-file-package-registers ()
    (interactive)
    (find-file (expand-file-name
                "package-manager/register/init.el"
                muki-layer:root)))

  (bind-map-set-keys my-base-leader-file-map
      "f" #'helm-find-files
      "g" #'helm-ls-git-ls
      "s" #'evil-write
      "S" #'evil-write-all
      "eh" #'helm-alku-layer
      "el" #'muki:open-file-init-load
      "er" #'muki:open-file-package-registers)


  (bind-map-set-keys my-base-leader-org-map
      "c" #'org-capture)

  (liby 'theme-looper
    (bind-map-set-keys my-base-leader-theme-map
        "r" #'theme-looper-enable-random-theme
        "n" #'theme-looper-enable-next-theme))

  
  (liby 'github-browse-file
    (bind-map-set-keys my-base-leader-git-map
        "ho" 'github-browse-file))

  (liby 'evil-iedit-state
    (bind-map-set-keys my-base-leader-search-map
        "e" 'evil-iedit-state/iedit-mode))

  )

;;; init.el ends here
