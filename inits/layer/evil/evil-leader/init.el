;;; leader -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; from spacemacs
(defvar muki:evil-leader-key-binding-prefixes nil)
(setq muki:evil-leader-key-binding-prefixes
      '(("a" .  application)
        ("av" . application-vendle)
        ("b" .  buffer)
        ("e" . eval)
        ("g" .  git)
        ("hi" . help-info)
        ("hd" . help-describe)
        ("m" . emms)
        ("s" . search)
        ("T" .  theme)
        ("z" .  mesh)))

(cl-defun muki:evil-leader-prefix-set-key (category key def)
  (cl-letf* ((found (cl-find-if (lambda (x) (cl-equalp category (cdr x)))
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
    (evil-leader/set-leader ",")
    (enable-option evil-leader/in-all-states)

    (evil-leader/set-key
        "v r" #'revert-buffer
      "v e" #'pp-eval-last-sexp
      "w" #'evil-write
      "Q" #'evil-quit-all
      "q" #'kill-buffer-and-window
      )

    (muki:evil-leader-prefix-set-keys 'eval
      "e" #'eval-last-sexp
      "x" #'eval-defun)

    (muki:evil-leader-prefix-set-keys 'help-describe
      "f" #'describe-function
      "k" #'describe-key
      "m" #'describe-mode
      "v" #'describe-variable)

    (cl-defun switch-to-scratch-buffer ()
      (interactive)
      (switch-to-buffer
       (get-buffer-create "*scratch*")))

    (muki:evil-leader-prefix-set-keys 'buffer
      "K"  #'muki:kill-other-buffers
      "n"  #'switch-to-next-buffer
      "p"  #'switch-to-prev-buffer
      "s" #'switch-to-scratch-buffer)

    ;; (liby 'eshell-switch
    ;;   (muki:evil-leader-prefix-set-keys 'eshell-switch
    ;;     "z" #'eshell-switch:switch
    ;;     "c" #'eshell-switch:buffer-new
    ;;     "n" #'eshell-switch:buffer-next
    ;;     "p" #'eshell-switch:buffer-prev))

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
        "ä" #'helm-alku-ääliö
        "l" #'helm-alku-layer))

    (liby 'vendle
      (muki:evil-leader-prefix-set-keys 'application-vendle
        "u" #'vendle-update
        "k" #'vendle-check
        "c" #'vendle-clean
        "l" #'helm-vendle))

    (liby 'magit
      (muki:evil-leader-prefix-set-keys 'git
        "s" #'magit-status))

    (liby 'helm-project-buffer
      (muki:evil-leader-prefix-set-keys 'buffer
        "b" #'helm-project-buffer))

    (liby 'helm
      (evil-leader/set-key
          ";" #'helm-M-x
        "?" #'helm-descbinds
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

    (liby 'emms
      (muki:evil-leader-prefix-set-keys 'emms
        "P" #'emms-player-mpd-pause
        "s" #'emms-player-mpd-stop
        "p" #'emms-player-mpd-previous
        "n" #'emms-player-mpd-next
        "b" #'emms-smart-browse
        "a f" #'emms-add-file
        "a d" #'emms-add-directory-tree
        "+" #'emms-volume-raise
        "-" #'emms-volume-lower))

    ;; (defun-add-hook muki:evil-ace-jump-mode-setup (after-init-hook)
    ;;   (when (and (featurep 'evil) (featurep 'evil-leader))
    ;;     (evil-leader/set-key
    ;;         "<SPC>c" 'evil-ace-jump-char-mode
    ;;       "<SPC>w" 'evil-ace-jump-word-mode
    ;;       "<SPC>l" 'evil-ace-jump-line-mode)))

    ))

;;; leader.el ends here
