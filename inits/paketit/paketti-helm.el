
;; helm
(req 'helm
     (require 'helm-config)
     (enable-mode helm-mode)
     (enable-mode helm-adaptative-mode)
     (disable-mode helm-match-plugin-mode)

     (global-set-key (kbd "C-c h") 'helm-mini)
     (global-set-key (kbd "M-x") 'helm-M-x)
     (global-set-key (kbd "C-c C-m") 'helm-M-x)

     (global-set-key (kbd "M-y") 'helm-show-kill-ring)
     (global-set-key (kbd "C-M-z") 'helm-resume)
     (define-key global-map [remap find-file] 'helm-find-files)
     (define-key global-map [remap occur] 'helm-occur)
     (define-key global-map (kbd "C-x b") 'helm-buffers-list)
     (define-key global-map [remap list-buffers] 'helm-buffers-list)


     (define-key helm-map (kbd "C-M-n") 'helm-next-source)
     (define-key helm-map (kbd "C-M-p") 'helm-previous-source)
     (define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)
     (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

     (disable-option helm-candidate-number-limit)
     (set-option helm-idle-delay          0.01)
     (set-option helm-input-idle-delay    0.01)
     (set-option  helm-m-occur-idle-delay 0.01)
     (enable-option helm-M-x-always-save-history)
     (disable-option helm-quick-update)
     (set-option helm-default-external-file-browser "pcmanfm")
     (disable-option helm-move-to-line-cycle-in-source)
     ;;;; helm-files
     (enable-option helm-ff-lynx-style-map)
     (enable-option helm-ff-transformer-show-only-basename)
     (disable-option  helm-ff-newfile-prompt-p)
     ;; disable auto completion
     ;; (setq helm-ff-auto-update-initial-value nil)
     (set-option helm-external-programs-associations
                 '(("cbz" . "mcomix")
                   ("cbr" . "mcomix")
                   ("jpg" . "kuva.sh")
                   ("png" . "kuva.sh")
                   ("gif" . "kuva.sh")
                   ("mov" . "mpv")
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

     (set-face-attribute 'helm-selection nil
                         :background "#337755")

     )

;; helm-themes
;; (req 'helm-themes)

;; helm-c-yasnippet
(req 'helm-c-yasnippet)

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
     (mytoh:define-global-key (kbd "f") 'helm-browse-project))



(provide 'paketti-helm)
