
(require 'muki)

;; (unless (fboundp 'class-slot-initarg)
;;   (defun class-slot-initarg (class-name slot)
;;     (eieio--class-slot-initarg (eieio--class-v class-name) slot)))

;; helm
(liby 'helm
  (require 'helm-config)
  (enable-mode helm-mode)
  (enable-mode helm-adaptative-mode)

  (defun-add-hook muki:helm-set-face (after-init-hook)
    (cl-letf ((background
               (face-background 'default))
              (percent 20))
      (set-face-attribute 'helm-selection nil
                          :background
                          (color-lighten-name background percent))))

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
       (add-key helm-map (format "C-%s" (1+ n))
                `(lambda ()
                   (interactive)
                   (helm-select-nth-action ,n))))

  (add-global-key "M-x" #'helm-M-x
                  "C-c C-m" #'helm-M-x
                  "M-y" #'helm-show-kill-ring
                  "C-M-z" #'helm-resume
                  [remap find-file] #'helm-find-files
                  [remap occur] #'helm-occur
                  [remap list-buffers] #'helm-buffers-list
                  [remap jump-to-register] #'helm-register
                  [remap dabbrev-expand]   #'helm-dabbrev
                  [remap find-tag]         #'helm-etags-select)

  (add-key helm-map
    "C-M-n" #'helm-next-source
    "C-M-p" #'helm-previous-source)
  (add-key helm-read-file-map "C-h" #'delete-backward-char)
  ;; (add-key helm-read-file-map "TAB" #'helm-execute-persistent-action)

  (set-option helm-idle-delay          0.01
              helm-input-idle-delay    0.01
              helm-m-occur-idle-delay 0.01
              helm-default-external-file-browser "pcmanfm"
              helm-buffers-favorite-modes (append helm-buffers-favorite-modes
                                                  '(picture-mode artist-mode))
              ;; helm-buffer-max-length 50x
              helm-candidate-number-limit 100
              helm-raise-command                         "wmctrl -xa %s"
              )

  (set-option helm-boring-file-regexp-list
              '("/\\.git\\'" "\\.hg\\'" "\\.svn\\'" "\\.CVS\\'" "\\._darcs\\'" "\\.la\\'" "\\.o\\'" "\\.i\\'"))

  (cl-pushnew "\\.git/COMMIT_EDITMSG\\'" helm-boring-file-regexp-list)

  (enable-option helm-M-x-always-save-history
                 helm-split-window-in-side-p ; open helm buffer inside current window, not occupy whole other window
                 helm-buffer-skip-remote-checking
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

  ;; use curl
  (when (executable-find "curl")
    (enable-option helm-google-suggest-use-curl-p))

  (set-option helm-external-programs-associations
              '(("cbz" . "mcomix")
                ("cbr" . "mcomix")
                ("zip" . "mcomix")
                ("rar" . "mcomix")
                ("pdf" . "mcomix")
                ("7z" . "mcomix")
                ("tar.gz" . "mcomix")
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
                ("webm" . "mpv")
                ("pdf" . "mupdf")))

  (enable-option helm-bookmark-show-location)

  ;; (set-face-attribute  'helm-bookmark-directory nil
  ;;                      :foreground "#97cfe0"
  ;;                      :background "#4f4f37")

  ;; (set-face-attribute 'helm-source-header nil
  ;;                     :background "#324262")

  ;; (set-face-attribute 'helm-selection nil
  ;;                     :background "#236765")

      ;;;; helm-grep
  (setq helm-grep-default-command "env LANG=C grep -a -d skip %e -n%cH -e %p %f")

  )

;; helm-themes
(liby 'helm-themes
  (auto (helm-themes) "helm-themes"))

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
(liby 'helm-cmd-t
  (auto (helm-cmd-t) "helm-cmd-t")
  (add-global-key "M-t" #'helm-cmd-t))
;; (req 'helm-C-x-b
;;      (add-key global-map [remap switch-to-buffer] #'helm-C-x-b))


;; elisp-package
(liby 'helm-elisp-package
  (auto (helm-list-elisp-packages) "helm-elisp-package")
  (muki:define-launcher-key "P" #'helm-list-elisp-packages))

;; helm-git-grep
(liby 'helm-git-grep
  (auto (helm-git-grep) "helm-git-grep")
  (muki:define-launcher-key "r" #'helm-git-grep))


;;; init-helm.el ends here
