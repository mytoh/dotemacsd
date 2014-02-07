
;; helm
(req 'helm
     (require 'helm-config)
     (enable-mode helm-mode)
     (enable-mode helm-adaptative-mode)
     (disable-mode helm-match-plugin-mode)

     (define-key global-map (kbd "C-c h") 'helm-mini)
     (define-key global-map (kbd "M-x") 'helm-M-x)
     (define-key global-map (kbd "C-c C-m") 'helm-M-x)
     (define-key global-map (kbd "M-y") 'helm-show-kill-ring)
     (define-key global-map (kbd "C-M-z") 'helm-resume)
     (define-key global-map [remap find-file] 'helm-find-files)
     (define-key global-map [remap occur] 'helm-occur)
     (define-key global-map (kbd "C-x b") 'helm-buffers-list)
     (define-key global-map [remap list-buffers] 'helm-buffers-list)
     (define-key global-map [remap jump-to-register] 'helm-register)
     (define-key global-map [remap dabbrev-expand]   'helm-dabbrev)
     (define-key global-map [remap find-tag]         'helm-etags-select)

     (define-key helm-map (kbd "C-M-n") 'helm-next-source)
     (define-key helm-map (kbd "C-M-p") 'helm-previous-source)
     (define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)
     (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)


     (set-option helm-idle-delay          0.01
                 helm-input-idle-delay    0.01
                 helm-m-occur-idle-delay 0.01
                 helm-default-external-file-browser "pcmanfm"
                 helm-buffers-favorite-modes
                 (append helm-buffers-favorite-modes
                         '(picture-mode artist-mode))
                 helm-buffer-max-length 50)

     (enable-option enable-recursive-minibuffers
                    helm-M-x-always-save-history)
     (disable-option helm-quick-update
                     helm-candidate-number-limit
                     helm-move-to-line-cycle-in-source)
     ;;;; helm-files
     (enable-option helm-ff-lynx-style-map
                    helm-ff-transformer-show-only-basename
                    helm-ff-search-library-in-sexp)
     (disable-option helm-ff-newfile-prompt-p)

     ;;;; match plugin
     (set-option helm-mp-highlight-delay 0.2)
     ;; disable auto completion
     ;; (setq helm-ff-auto-update-initial-value nil)
     (set-option helm-external-programs-associations
                 '(("cbz" . "mcomix")
                   ("cbr" . "mcomix")
                   ("jpg" . "kuva.sh")
                   ("png" . "kuva.sh")
                   ("gif" . "kuva.sh")
                   ("mov" . "mpv")
                   ("webm" . "mpv")
                   ("swf" . "mpv")
                   ("flv" . "mpv")
                   ("avi" . "mpv")
                   ("mkv" . "mpv")
                   ("mp4" . "mpv")
                   ("wmv" . "mpv")))
     (enable-option helm-bookmark-show-location)

     (set-face-attribute  'helm-bookmark-directory nil
                          :foreground "#97cfe0"
                          :background "#4f4f37")

     (set-face-attribute 'helm-source-header nil
                         :background "#324262")

     ;; (set-face-attribute 'helm-selection nil
     ;;                     :background "#337755")

     )

;; helm-themes
;; (req 'helm-themes)

;; helm-c-yasnippet
(req 'helm-c-yasnippet)

;; misc
(req 'helm-misc)

;; migemo
(when (executable-find "cmigemo")
  (pak 'migemo
       (req 'helm-migemo)))

;; descbinds
(req 'helm-descbinds
     (helm-descbinds-mode))

;; ag
(req 'helm-ag
     (setq helm-ag-source-type 'file-line))

;; cmd-t
;; (req 'helm-cmd-t
;;      (define-key global-map (kbd "M-t") 'helm-cmd-t))
;; (req 'helm-C-x-b
;;      (define-key global-map [remap switch-to-buffer] 'helm-C-x-b))

;; helm-ls-git
(pak 'helm-ls-git
     (mytoh:define-global-key (kbd "f") 'helm-browse-project))



(provide 'paketti-helm)
