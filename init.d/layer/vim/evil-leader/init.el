;;; leader -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; from spacemacs
(defvar muki:evil-leader-key-binding-prefixes nil)
(setq muki:evil-leader-key-binding-prefixes
      '(("a" .  application)
        ("ap" . application-package-manager)
        ("am" . application-multimedia)
        ("aw" . application-web)
        ("b" .  buffer)
        ("g" .  git)
        ("h" . helm)
        ("hi" . help-info)
        ("hd" . help-describe)
        ("amm" . emms)
        ("o" . org)
        ("f" . file)
        ("s" . search)
        ("T" .  theme)
        ("w" . window)
        ("z" .  mesh)))

(cl-defun muki:evil-leader-prefix-set-key (category key def)
  (cl-letf* ((found (seq-filter (pcase-lambda (`(,_ . ,x)) (cl-equalp category x))
                                muki:evil-leader-key-binding-prefixes))
             (prefix (if found (car (car found)) nil)))
    (when found
      (evil-leader/set-key (concat prefix key) def))))

(cl-defmacro muki:evil-leader-prefix-set-keys (category &rest body)
  (declare (debug t)
           (indent 1))
  (and body
       `(cl-locally
            (muki:evil-leader-prefix-set-key ,category ,(car body) ,(cadr body))
          (muki:evil-leader-prefix-set-keys ,category ,@(cddr body)))))

(cl-defun muki:init-evil-leader ()
  (req 'evil-leader
    (global-evil-leader-mode)
    (evil-leader/set-leader "<SPC>")
    (enable-option evil-leader/in-all-states)

    (evil-leader/set-key
        "qQ" #'evil-quit-all
      "qq" #'kill-buffer-and-window
      "qr" #'muki:restart-emacs
      "qR" #'muki:restart-emacs-debug
      ;; Universal argument ---------------------------------------------------------
      "u" #'universal-argument)

    (muki:evil-leader-prefix-set-keys 'help-describe
      "b" #'describe-bindings
      "f" #'describe-function
      "k" #'describe-key
      "m" #'describe-mode
      "c" #'describe-char
      "v" #'describe-variable
      "p" #'describe-package
      "F" #'describe-face
      "t" #'describe-theme)

    (cl-defun switch-to-scratch-buffer ()
      (interactive)
      (switch-to-buffer
       (get-buffer-create "*scratch*")))

    (muki:evil-leader-prefix-set-keys 'buffer
      "K"  #'muki:kill-other-buffers
      "n"  #'switch-to-next-buffer
      "p"  #'switch-to-prev-buffer
      "s" #'switch-to-scratch-buffer
      "r" #'revert-buffer)

    (muki:evil-leader-prefix-set-keys 'window
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
      "-"  #'split-window-below
      "U"  #'winner-redo
      "u"  #'winner-undo
      "v"  #'split-window-right
      "w"  #'other-window
      "/"  #'split-window-right
      "="  #'balance-windows)

    (liby 'mesh
      (muki:evil-leader-prefix-set-keys 'mesh
        "z" #'mesh:switch)
      (evil-leader/set-key-for-mode 'eshell-mode
          "zc" #'mesh:new-tab
          "zn" #'mesh:next-tab
          "zp" #'mesh:prev-tab
          "zs" #'mesh:split-tab
          "zS" #'mesh:vsplit-tab
          "zx" #'mesh:kill-pane
          "z)" #'mesh:next-session
          "z(" #'mesh:prev-session
          "zC" #'mesh:new-session
          "z <tab>" #'mesh:next-pane)
      )

    (liby 'helm-ypv
      (muki:evil-leader-prefix-set-keys 'application
        "y" #'helm-ypv))

    (liby 'helm-alku
      (muki:evil-leader-prefix-set-keys 'application
        "h" #'helm-alku
        "c" #'helm-alku-program
        "n" #'helm-alku-vihko
        "ä" #'helm-alku-ääliö)
      (muki:evil-leader-prefix-set-keys 'application-web
        "t" #'helm-alku-twitch))

    (muki:evil-leader-prefix-set-keys 'application-multimedia
      "v" #'muki:play-mpv)

    (liby 'hoarder
      (muki:evil-leader-prefix-set-keys 'application-package-manager
        "u" #'hoarder:update
        "k" #'hoarder:check
        ;; "c" #'hoarder:clean
        "l" #'helm-hoarder))

    (liby 'magit
      (muki:evil-leader-prefix-set-keys 'git
        "l" (lambda ()
              (interactive)
              (magit-log '("HEAD")))
        "s" #'magit-status))

    (liby 'helm-project-buffer
      (muki:evil-leader-prefix-set-keys 'buffer
        "b" #'helm-project-buffer))

    (liby 'helm
      (evil-leader/set-key
          ";" #'helm-M-x
        "?" #'helm-descbinds)
      (muki:evil-leader-prefix-set-keys 'helm
        "l" #'helm-resume
        "L" #'helm-locate-library
        "f" #'helm-features
        "Cl" #'helm-colo
        "b" #'helm-pp-bookmarks
        "i" #'helm-info-at-point
        "m" #'helm-man-woman
        "a" #'helm-apropos
        "ry" #'helm-show-kill-ring
        "rr" #'helm-register
        "rm" #'helm-all-mark-rings)
      (muki:evil-leader-prefix-set-keys 'theme
        "h" #'helm-themes))

    (liby 'paradox
      (muki:evil-leader-prefix-set-keys 'application
        "P" #'muki:paradox-list-packages))

    (liby 'eww
      (muki:evil-leader-prefix-set-keys 'application-web
        "e" #'muki:eww
        "E" #'eww))

    (liby 'helm-git-grep
      (muki:evil-leader-prefix-set-keys 'search
        "g" #'helm-git-grep))

    (liby 'helm-ag
      (muki:evil-leader-prefix-set-keys 'search
        "a" #'helm-do-ag))

    (liby 'swiper
      (muki:evil-leader-prefix-set-keys 'search
        "i" #'swiper))

    (liby 'emms
      (muki:evil-leader-prefix-set-keys 'emms
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

    (muki:evil-leader-prefix-set-keys 'file
      "f" #'helm-find-files
      "g" #'helm-ls-git-ls
      "w" 'evil-write
      "eh" #'helm-alku-layer
      "el" #'muki:open-file-init-load
      "er" #'muki:open-file-package-registers)


    (muki:evil-leader-prefix-set-keys 'org
      "c" #'org-capture)

    (liby 'theme-looper
      (muki:evil-leader-prefix-set-keys 'theme
        "r" #'theme-looper-enable-random-theme
        "n" #'theme-looper-enable-next-theme))

    ))

;;; leader.el ends here
