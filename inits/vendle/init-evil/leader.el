;;; leader -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun init-evil-leader ()
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

    (cl-defun switch-to-scratch-buffer ()
      (interactive)
      (switch-to-buffer
       (get-buffer-create "*scratch*")))

    (evil-leader/set-key
        "b K"  'muki:kill-other-buffers
      "b n"  'switch-to-next-buffer
      "b p"  'switch-to-prev-buffer
      "b s" 'switch-to-scratch-buffer)

    (liby 'eshell-session
      (evil-leader/set-key
          "z z" 'eshell-session:switch
        "z c" 'eshell-session:new
        "z n" 'eshell-session:next
        "z p" 'eshell-session:prev))

    (liby 'helm-ypv
      (evil-leader/set-key "e y" 'helm-ypv))

    (liby 'vendle
      (evil-leader/set-key "e v u" 'vendle-update
        "e v k" 'vendle-check
        "e v c" 'vendle-clean
        "e v l" 'helm-vendle))

    (liby 'magit
      (evil-leader/set-key
          "e g" 'magit-status))

    (liby 'helm-project-buffer
      (evil-leader/set-key "b b" 'helm-project-buffer))

    (liby 'helm
      (evil-leader/set-key
          ";" 'helm-M-x
        "?" 'helm-descbinds
        "h s"   'helm-swoop
        "h t"  'helm-themes))


    (defun-add-hook muki:evil-ace-jump-mode-setup (after-init-hook)
      (when (and (featurep 'evil) (featurep 'evil-leader))
        (evil-leader/set-key
            "<SPC>c" 'evil-ace-jump-char-mode
          "<SPC>w" 'evil-ace-jump-word-mode
          "<SPC>l" 'evil-ace-jump-line-mode)))

    ))

(provide 'init-evil-leader)

;;; leader.el ends here
