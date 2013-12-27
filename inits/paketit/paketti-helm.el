
;; helm
(pak 'helm-config
     (global-set-key (kbd "C-c h") #'helm-mini)
     (global-set-key (kbd "M-x") #'helm-M-x)
     (global-set-key (kbd "C-c C-m") #'helm-M-x)

     (global-set-key (kbd "M-y") #'helm-show-kill-ring)
     (global-set-key (kbd "C-M-z") #'helm-resume)
     (define-key global-map [remap find-file] #'helm-find-files)
     (define-key global-map [remap occur] #'helm-occur)
     (define-key global-map (kbd "C-x b") #'helm-buffers-list)
     (define-key global-map [remap list-buffers] #'helm-buffers-list)

     (define-key helm-map (kbd "C-M-n") #'helm-next-source)
     (define-key helm-map (kbd "C-M-p") #'helm-previous-source)
     (define-key helm-c-read-file-map (kbd "C-h") #'delete-backward-char)
     (define-key helm-c-read-file-map (kbd "TAB") #'helm-execute-persistent-action)

     (set-option helm-candidate-number-limit nil)
     (set-option helm-idle-delay             0.1)
     (set-option helm-input-idle-delay       0.1)
     (set-option helm-ff-lynx-style-map nil)
     (enable-option helm-M-x-always-save-history)
     (disable-option helm-ff-transformer-show-only-basename)
     ;; disable auto completion
     ;; (setq helm-ff-auto-update-initial-value nil)
     (set-option helm-external-programs-associations
                 '(("cbz" . "mcomix")
                   ("cbr" . "mcomix")
                   ("jpg" . "kuva.sh")
                   ("png" . "kuva.sh")
                   ("gif" . "kuva.sh")
                   ("mov" . "mpv")
                   ("flv" . "mpv")
                   ("mkv" . "mpv")
                   ("mp4" . "mpv")
                   ("wmv" . "mpv")))
     (enable-option helm-bookmark-show-location)

     (defvar mytoh:helm-start-sources
       (if (locate-library "bookmark-extensions")
           '(helm-source-bookmark-files&dirs
             helm-source-recentf)
         '(helm-source-pp-bookmarks
           helm-source-recentf)))
     (cl-defun helm-start ()
       "personal helm command : [\\[helm-start]]"
       (interactive)
       (cl-letf ((helm-ff-transformer-show-only-basename nil))
         (helm :sources mytoh:helm-start-sources
               :buffer "*helm start*"
               :prompt "Start: "
               :candidate-number-limit 10)))

     (mytoh:define-global-key (kbd "h") #'helm-start)

     ;; (window-valid-p)
     ;; (window-live-p)
     (cl-defun mytoh:startup ()
       (cl-letf ((current-window
                  (frame-selected-window (selected-frame))))
         (if (and current-window
                  (window-valid-p current-window))
             (helm-start))))

     (add-hook 'after-init-hook #'mytoh:startup)

     (helm-mode 1)
     )

;; helm-themes
;; (req 'helm-themes)

;; helm-c-yasnippet
(req 'helm-c-yasnippet)

;; match plugin
(req 'helm-match-plugin)

;; misc
(req 'helm-misc)

;; migemo
;; (req 'helm-migemo)

;; descbinds
(req 'helm-descbinds
     (helm-descbinds-install))

;; ag
(req 'helm-ag
     (setq helm-ag-source-type 'file-line))

;; cmd-t
;; (req 'helm-cmd-t
;;      (global-set-key (kbd "M-t") 'helm-cmd-t))
;; (req 'helm-C-x-b
;;      (global-set-key [remap switch-to-buffer] 'helm-C-x-b))

;; helm-ls-git
(pak 'helm-ls-git
     (mytoh:define-global-key (kbd "f") #'helm-ls-git-ls))


(provide 'paketti-helm)
