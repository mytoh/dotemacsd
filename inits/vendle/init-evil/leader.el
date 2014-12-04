;;; leader -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:


;; from spacemacs
(defvar muki:evil-leader-key-binding-prefixes nil)
(setq muki:evil-leader-key-binding-prefixes
      '(("a" .  application)
        ("av" . application-vendle)
        ("b" .  buffer)
        ("g" .  git)
        ("hi" . help-info)
        ("hd" . help-describe)
        ("T" .  theme)
        ("z" .  eshell-session)))

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
        "v r" 'revert-buffer
      "v e" 'pp-eval-last-sexp
      "w" 'evil-write
      "Q" 'evil-quit-all
      "q" 'evil-quit
      )

    (muki:evil-leader-prefix-set-keys 'help-describe
      "f" 'describe-function
      "k" 'describe-key
      "m" 'describe-mode
      "v" 'describe-variable)

    (cl-defun switch-to-scratch-buffer ()
      (interactive)
      (switch-to-buffer
       (get-buffer-create "*scratch*")))

    (muki:evil-leader-prefix-set-keys 'buffer
      "K"  'muki:kill-other-buffers
      "n"  'switch-to-next-buffer
      "p"  'switch-to-prev-buffer
      "s" 'switch-to-scratch-buffer)

    (liby 'eshell-session
      (muki:evil-leader-prefix-set-keys 'eshell-session
        "z" 'eshell-session:switch
        "c" 'eshell-session:buffer-new
        "n" 'eshell-session:buffer-next
        "p" 'eshell-session:buffer-prev))

    (liby 'helm-ypv
      (muki:evil-leader-prefix-set-keys 'application
        "y" 'helm-ypv))

    (liby 'helm-alku
      (muki:evil-leader-prefix-set-keys 'application
        "h" 'helm-alku
        "c" 'helm-alku-program
        "n" 'helm-alku-vihko))

    (liby 'vendle
      (muki:evil-leader-prefix-set-keys 'application-vendle
        "u" 'vendle-update
        "k" 'vendle-check
        "c" 'vendle-clean
        "l" 'helm-vendle))

    (liby 'magit
      (muki:evil-leader-prefix-set-keys 'git
        "s" 'magit-status))

    (liby 'helm-project-buffer
      (muki:evil-leader-prefix-set-keys 'buffer
        "b" 'helm-project-buffer))

    (liby 'helm
      (evil-leader/set-key
          ";" 'helm-M-x
        "?" 'helm-descbinds
        "h s"   'helm-swoop
        "h t"  'helm-themes))

    (liby 'paradox
      (after 'init-paradox
          (muki:evil-leader-prefix-set-keys 'application
            "P" 'muki:paradox-list-packages)))

    (liby 'eww
      (evil-leader/set-key
          "e w" 'muki:eww
        "e W" 'eww))

    (liby 'helm-git-grep
      (muki:evil-leader-prefix-set-keys 'git
        "r" 'helm-git-grep))


    ;; (defun-add-hook muki:evil-ace-jump-mode-setup (after-init-hook)
    ;;   (when (and (featurep 'evil) (featurep 'evil-leader))
    ;;     (evil-leader/set-key
    ;;         "<SPC>c" 'evil-ace-jump-char-mode
    ;;       "<SPC>w" 'evil-ace-jump-word-mode
    ;;       "<SPC>l" 'evil-ace-jump-line-mode)))

    ))

(provide 'init-evil-leader)

;;; leader.el ends here
