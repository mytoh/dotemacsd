;;; leader -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; from spacemacs
(defvar muki:evil-leader-key-binding-prefixes nil)
(setq muki:evil-leader-key-binding-prefixes
      '(("a" .  application)
        ("av" . application-hoarder)
        ("b" .  buffer)
        ("g" .  git)
        ("hi" . help-info)
        ("hd" . help-describe)
        ("am" . emms)
        ("o" . org)
        ("f" . file)
        ("s" . search)
        ("T" .  theme)
        ("z" .  mesh)))

(cl-defun muki:evil-leader-prefix-set-key (category key def)
  (cl-letf* ((found (cl-find-if (pcase-lambda (`(,_ . ,x)) (cl-equalp category x))
                                muki:evil-leader-key-binding-prefixes))
             (prefix (if found (car found) nil)))
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
      ;; Universal argument ---------------------------------------------------------
      "u" #'universal-argument)

    (muki:evil-leader-prefix-set-keys 'help-describe
      "f" #'describe-function
      "k" #'describe-key
      "m" #'describe-mode
      "c" #'describe-char
      "v" #'describe-variable)

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
          "z <tab>" #'mesh:next-pane))

    (liby 'helm-ypv
      (muki:evil-leader-prefix-set-keys 'application
        "y" #'helm-ypv))

    (liby 'helm-alku
      (muki:evil-leader-prefix-set-keys 'application
        "h" #'helm-alku
        "c" #'helm-alku-program
        "n" #'helm-alku-vihko
        "ä" #'helm-alku-ääliö))

    (liby 'hoarder
      (muki:evil-leader-prefix-set-keys 'application-hoarder
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
        "?" #'helm-descbinds
        "hl"  'helm-resume
        "h s"   #'helm-swoop)
      (muki:evil-leader-prefix-set-keys 'theme
        "h" #'helm-themes))

    (liby 'paradox
      (muki:evil-leader-prefix-set-keys 'application
        "P" #'muki:paradox-list-packages))

    (liby 'eww
      (muki:evil-leader-prefix-set-keys 'application
        "w" #'muki:eww
        "W" #'eww))

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

    (muki:evil-leader-prefix-set-keys 'file
      "f" #'helm-find-files
      "g" #'helm-ls-git-ls
      "w" 'evil-write
      "eh" #'helm-alku-layer)


    (muki:evil-leader-prefix-set-keys 'org
      "c" #'org-capture)

    (liby 'theme-looper
      (muki:evil-leader-prefix-set-keys 'theme
        "r" #'theme-looper-enable-random-theme
        "n" #'theme-looper-enable-next-theme))

    ;; (defun-add-hook muki:evil-ace-jump-mode-setup (after-init-hook)
    ;;   (when (and (featurep 'evil) (featurep 'evil-leader))
    ;;     (evil-leader/set-key
    ;;         "<SPC>c" 'evil-ace-jump-char-mode
    ;;       "<SPC>w" 'evil-ace-jump-word-mode
    ;;       "<SPC>l" 'evil-ace-jump-line-mode)))

    ))

;;; leader.el ends here
