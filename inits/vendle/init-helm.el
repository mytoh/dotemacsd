;; helm
(liby 'helm (require 'helm-config)
      (enable-mode helm-mode)
      (enable-mode helm-adaptative-mode)
      (enable-mode helm-match-plugin-mode)

      (defun helm-select-2nd-action-or-end-of-line ()
        "Select the 2nd action for the currently selected candidate.
This happen when point is at the end of minibuffer.
Otherwise goto the end of minibuffer."
        (interactive)
        (if (eolp)
            (helm-select-nth-action 1)
          (end-of-line)))

      ;; bind C-1 to C-9 to actions
      (cl-loop for n from 0 to 8 do
           (muki:define-key helm-map (format "C-%s" (1+ n))
                            `(lambda ()
                               (interactive)
                               (helm-select-nth-action ,n))))

      (muki:global-set-key "M-x" 'helm-M-x)
      (muki:global-set-key "C-c C-m" 'helm-M-x)
      (muki:global-set-key "M-y" 'helm-show-kill-ring)
      (muki:global-set-key "C-M-z" 'helm-resume)
      (muki:global-set-key [remap find-file] 'helm-find-files)
      (muki:global-set-key [remap occur] 'helm-occur)
      (muki:global-set-key [remap list-buffers] 'helm-buffers-list)
      (muki:global-set-key [remap jump-to-register] 'helm-register)
      (muki:global-set-key [remap dabbrev-expand]   'helm-dabbrev)
      (muki:global-set-key [remap find-tag]         'helm-etags-select)

      (muki:define-key helm-map "C-M-n" 'helm-next-source)
      (muki:define-key helm-map "C-M-p" 'helm-previous-source)
      (muki:define-key helm-read-file-map "C-h" 'delete-backward-char)
      ;; (muki:define-key helm-read-file-map "TAB" 'helm-execute-persistent-action)

      (set-option helm-idle-delay          0.01
                  helm-input-idle-delay    0.01
                  helm-m-occur-idle-delay 0.01
                  helm-default-external-file-browser "pcmanfm"
                  helm-buffers-favorite-modes (append helm-buffers-favorite-modes
                                                      '(picture-mode artist-mode))
                  ;; helm-buffer-max-length 50x
                  helm-candidate-number-limit 200)
      (set-option helm-boring-file-regexp-list '("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$" "\\._darcs$" "\\.la$" "\\.o$" "\\.i$"))
      (add-to-list 'helm-boring-file-regexp-list  "\\.git/COMMIT_EDITMSG$")

      (enable-option helm-M-x-always-save-history
                     helm-split-window-in-side-p ; open helm buffer inside current window, not occupy whole other window
                     )
      (disable-option enable-recursive-minibuffers
                      helm-quick-update
                      helm-move-to-line-cycle-in-source
                      helm-debug
                      )
      ;; helm-files
      (enable-option helm-ff-lynx-style-map
                     helm-ff-transformer-show-only-basename
                     helm-ff-search-library-in-sexp
                     helm-ff-skip-boring-files)
      (disable-option helm-ff-newfile-prompt-p)
      ;; disable auto completion
      ;; (setq helm-ff-auto-update-initial-value nil)

      ;; match plugin
      (set-option helm-mp-highlight-delay 0.2)


      (set-option helm-external-programs-associations
                  '(("cbz" . "mcomix")
                    ("cbr" . "mcomix")
                    ("zip" . "mcomix")
                    ("rar" . "mcomix")
                    ("pdf" . "mcomix")
                    ("jpg" . "pikkukivi kuva")
                    ("JPG" . "pikkukivi kuva")
                    ("png" . "pikkukivi kuva")
                    ("gif" . "pikkukivi kuva")
                    ("mov" . "mpv")
                    ("webm" . "mpv")
                    ("swf" . "mpv")
                    ("flv" . "mpv")
                    ("avi" . "mpv")
                    ("mkv" . "mpv")
                    ("mp4" . "mpv")
                    ("wmv" . "mpv")
                    ("webm" . "mpv")))

      (enable-option helm-bookmark-show-location)

      (set-face-attribute  'helm-bookmark-directory nil
                           :foreground "#97cfe0"
                           :background "#4f4f37")

      (set-face-attribute 'helm-source-header nil
                          :background "#324262")

      (set-face-attribute 'helm-selection nil
                          :background "#236765")

      ;;;; helm-grep
      (setq helm-grep-default-command "env LANG=C grep -a -d skip %e -n%cH -e %p %f")

      )

;; helm-themes
(req 'helm-themes)

;; helm-c-yasnippet (req 'helm-c-yasnippet)

;; misc
(req 'helm-misc)

;; migemo
;; (when (executable-find "cmigemo")
;;   (req 'migemo
;;        (req 'helm-migemo
;;             (setq helm-use-migemo t))))

;; descbinds
(req 'helm-descbinds (helm-descbinds-mode))

;; cmd-t
(req 'helm-cmd-t
  (muki:global-set-key "M-t" 'helm-cmd-t))
;; (req 'helm-C-x-b
;;      (muki:define-key global-map [remap switch-to-buffer] 'helm-C-x-b))

;; helm-ls-git
(req 'helm-ls-git (muki:define-global-key "f" 'helm-ls-git-ls))

;; elisp-package
(req 'helm-elisp-package (muki:define-global-key "P" 'helm-list-elisp-packages))

;; helm-git-grep
(req 'helm-git-grep
  (muki:define-global-key "r" 'helm-git-grep))

(req 'helm-mode-manager)

(provide 'init-helm)

;;; init-helm.el ends here
