
;; helm
(req 'helm-config
     (req 'helm-command)
     (global-set-key (kbd "C-c h") 'helm-mini)
     (global-set-key (kbd "M-x") 'helm-M-x)
     (global-set-key (kbd "C-c C-m") 'helm-M-x)

     (global-set-key (kbd "M-y") 'helm-show-kill-ring)
     (global-set-key (kbd "C-M-z") 'helm-resume)
     (define-key global-map [remap find-file] 'helm-find-files)
     (define-key global-map [remap occur] 'helm-occur)
     (global-set-key (kbd "C-x b") 'helm-buffers-list)
     (define-key global-map [remap list-buffers] 'helm-buffers-list)

     (define-key helm-map (kbd "C-M-n") 'helm-next-source)
     (define-key helm-map (kbd "C-M-p") 'helm-previous-source)
     (define-key helm-c-read-file-map (kbd "C-h") 'delete-backward-char)
     (define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
     (set-option helm-candidate-number-limit nil)
     (set-option helm-idle-delay             0.01)
     (set-option helm-input-idle-delay       0.01)
     (set-option helm-ff-lynx-style-map nil)
     (disable-option helm-ff-transformer-show-only-basename)
     ;; disable auto completion
     ;; (setq helm-ff-auto-update-initial-value nil)
     (helm-mode 1)
     (set-option recentf-max-saved-items 1000))

;; helm-themes
(req 'helm-themes)

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

;; faces
(req 'helm-files
     (set-option helm-ff-auto-update-initial-value t)
     (set-face-attribute 'helm-ff-file nil
                         :foreground "white" :background nil)
     (set-face-attribute 'helm-ff-directory nil
                         :foreground "#bbebfb" :background nil))

;; ag
(req 'helm-ag
     (setq helm-ag-source-type 'file-line))

;; cmd-t
;; (req 'helm-cmd-t
;;      (global-set-key (kbd "M-t") 'helm-cmd-t))
;; (req 'helm-C-x-b
;;      (global-set-key [remap switch-to-buffer] 'helm-C-x-b))



(provide 'paketti-helm)
