
(require 'muki)

;; (unless (fboundp 'class-slot-initarg)
;;   (defun class-slot-initarg (class-name slot)
;;     (eieio--class-slot-initarg (eieio--class-v class-name) slot)))

;; helm
(liby 'helm
  (require 'helm-config)


  (req 'dired-async
    ;; enable dired-async
    ;; (enable-mode dired-async-mode)
    )

  (enable-mode helm-mode)

  (enable-mode helm-autoresize-mode)
  (after 'migemo
    (enable-mode helm-migemo-mode))

  (setq helm-autoresize-max-height 35)
  (setq helm-autoresize-min-height 35)

  (cl-defun muki:helm-set-face ()
    (cl-letf ((background
               (face-background 'default))
              (percent 20))
      (set-face-attribute 'helm-selection nil
                          :background
                          (color-lighten-name background percent))))

  (after 'helm
    (hook 'helm-after-update-hook #'muki:helm-set-face))

  (defun helm-select-2nd-action-or-end-of-line ()
    "Select the 2nd action for the currently selected candidate.
This happen when point is at the end of minibuffer.
Otherwise goto the end of minibuffer."
    (interactive)
    (if (eolp)
        (helm-select-nth-action 1)
      (end-of-line)))

  (after 'helm
    ;; bind C-1 to C-9 to actions
    (cl-loop for n from 0 to 8 do
             (add-key helm-map (format "C-%s" (1+ n))
                      `(lambda ()
                         (interactive)
                         (helm-select-nth-action ,n)))))
  ;; helm mode mappings
  ;; (define-key helm-map (kbd "C-j") #'helm-next-line)
  ;; (define-key helm-map (kbd "C-k") #'helm-previous-line)
  (define-key helm-map (kbd "C-c C-l") #'delete-minibuffer-contents)
  (define-key helm-map (kbd "C-u") #'helm-delete-minibuffer-contents)

  ;; global mappings for helm commands
  (add-global-key "M-x" #'helm-M-x
                  "C-c C-m" #'helm-M-x
                  "M-y" #'helm-show-kill-ring
                  "C-M-z" #'helm-resume)
  (global-set-key [remap find-file] #'helm-find-files)
  (global-set-key [remap occur] #'helm-occur)
  (global-set-key [remap list-buffers] #'helm-buffers-list)
  (global-set-key [remap jump-to-register] #'helm-register)
  (global-set-key [remap dabbrev-expand]   #'helm-dabbrev)
  (global-set-key [remap find-tag]         #'helm-etags-select)

  (after 'helm
    (add-key helm-map
      "C-M-n" #'helm-next-source
      "C-M-p" #'helm-previous-source))
  (after 'helm
    (add-key helm-read-file-map "C-h" #'delete-backward-char))
  ;; (add-key helm-read-file-map "TAB" #'helm-execute-persistent-action)

  (set-option helm-idle-delay          0.01
              helm-input-idle-delay    0.01
              helm-m-occur-idle-delay 0.01
              helm-default-external-file-browser "pcmanfm"
              helm-buffers-favorite-modes (append helm-buffers-favorite-modes
                                                  '(picture-mode artist-mode))
              ;; helm-buffer-max-length 50x
              helm-candidate-number-limit 500
              ;; helm-raise-command                         "wmctrl -xa %s"
              helm-tramp-verbose 6
              )

  ;; disable helm for find-file
  (cl-pushnew '(find-file . nil) helm-completing-read-handlers-alist)

  (set-option helm-boring-file-regexp-list
              '("/\\.git\\'" "\\.hg\\'" "\\.svn\\'" "\\.CVS\\'" "\\._darcs\\'" "\\.la\\'" "\\.o\\'" "\\.i\\'"))

  (cl-pushnew "\\.git/COMMIT_EDITMSG\\'" helm-boring-file-regexp-list)

  (enable-option helm-M-x-always-save-history
                 helm-split-window-in-side-p ; open helm buffer inside current window, not occupy whole other window
                 helm-buffer-skip-remote-checking
                 ;; helm-M-x-fuzzy-match
                 ;; helm-mode-fuzzy-match 
                 ;; helm-apropos-fuzzy-match
                 ;; helm-recentf-fuzzy-match
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
                 helm-ff-skip-boring-files
                 helm-find-file-ignore-thing-at-point)
  (disable-option helm-ff-newfile-prompt-p
                  helm-ff-guess-ffap-urls)
  ;; disable auto completion
  ;; (setq helm-ff-auto-update-initial-value nil)

  ;; helm-org
  (enable-option helm-org-headings-fontify)

  ;; match plugin
  (set-option helm-mp-highlight-delay 0.2)

  ;; use curl
  (when (executable-find "curl")
    (enable-option helm-net-prefer-curl))

  (set-option helm-external-programs-associations
              '(("cbz" . "mcomix")
                ("cbr" . "mcomix")
                ("zip" . "mcomix")
                ("rar" . "mcomix")
                ("pdf" . "mcomix")
                ("7z" . "mcomix")
                ("tar.gz" . "mcomix")
                ("jpg" . "epiki ekuva")
                ("JPG" . "epiki ekuva")
                ("png" . "epiki ekuva")
                ("gif" . "epiki evid all")
                ("mov" . "epiki evid single")
                ("swf" . "epiki evid single")
                ("flv" . "epiki evid single")
                ("avi" . "epiki evid single")
                ("mkv" . "epiki evid single")
                ("mp4" . "epiki evid single")
                ("wmv" . "epiki evid single")
                ("webm" . "epiki evid all")
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

  ;;;; helm-eshell
  (enable-option helm-eshell-hist-ignoredups)

  (after 'helm-files

  ;;;; Modify source attributes
    ;;
    ;; (defun muki:helm-ff-candidates-html-p (candidate)
    ;;   (message (format "%s" candidate))
    ;;   (string-match-p "\.htm[l]*$" candidate))

    ;; Add actions to `helm-source-find-files' IF:
    ;; open with eww
    ;; (cl-defmethod helm-setup-user-source ((source helm-source-ffiles))
    ;;   (helm-source-add-action-to-source-if
    ;;    "Open file with eww"
    ;;    'eww-open-file
    ;;    source
    ;;    'muki:helm-ff-candidates-html-p))

    (add-to-list 'helm-find-files-actions
                 '("EWW" . eww-open-file) 'append)

    ;;;; insert a candidate
    (cl-defmethod helm-setup-user-source ((source helm-source-ffiles))
      (helm-source-add-action-to-source-if
       "Insert"
       'insert
       source
       'identity))

    ;;;; remove current and parent directory from find-files source
    (cl-defmethod helm-setup-user-source ((source helm-source-ffiles))
      (eieio-oset source 'candidate-transformer
                  (append (eieio-oref source 'candidate-transformer)
                          (list
                           (lambda (candidates)
                             (pcase (seq-length candidates)
                               (2 candidates)
                               (_
                                (colle:remove
                                 #'helm-ff-dot-file-p
                                 candidates))))))))

    
    ;;;; fix for external program 
    (cl-defun muki:helm-ff-open-external ()
      "Run open file externally command action from `helm-source-find-files'."
      (interactive)
      (with-helm-alive-p
        (helm-exit-and-execute-action
         (lambda (file)
           (letf* ((ext (file-name-extension file))
                   (found (cl-assoc
                           ext
                           helm-external-programs-associations
                           :test #'equalp))
                   (com (if found (cdr found) "xdg-open")))
             (message "runnig %s with %s" com file)
             (start-process-shell-command "test" nil
                                          (concat com
                                                  " "
                                                  file
                                                  " &")))))))
    (put 'muki:helm-ff-open-external 'helm-only t)

    (define-key helm-find-files-map (kbd "C-c C-x")
      #'muki:helm-ff-open-external)

    )

  (after 'evil
    ;; [[http://www.cachestocaches.com/2016/12/vim-within-emacs-anecdotal-guide/][Vim Within Emacs: An Anecdotal Guide]]
    (define-key evil-ex-map "b " #'helm-mini)
    (define-key evil-ex-map "e" #'helm-find-files))

  ;; [[http://www.cachestocaches.com/2016/12/vim-within-emacs-anecdotal-guide/][Vim Within Emacs: An Anecdotal Guide]]
  ;; [[https://github.com/syl20bnr/spacemacs/blob/522366bbd179bc332a863efeb523daa09c603458/layers/%2Bdistribution/spacemacs-base/packages.el#L681-L685][spacemacs/packages.el at 522366bbd179bc332a863efeb523daa09c603458 · syl20bnr/spacemacs · GitHub]]
  ;; Fix visual cursor glitch for Helm lisp
  (defun spacemacs//hide-cursor-in-helm-buffer ()
    "Hide the cursor in helm buffers."
    (with-helm-buffer
      (setq cursor-in-non-selected-windows nil)))
  (add-hook 'helm-after-initialize-hook 
            #'spacemacs//hide-cursor-in-helm-buffer)

  ;; [[http://www.cachestocaches.com/2016/12/vim-within-emacs-anecdotal-guide/][Vim Within Emacs: An Anecdotal Guide]]
  ;; [[https://github.com/syl20bnr/spacemacs/blob/522366bbd179bc332a863efeb523daa09c603458/layers/+distribution/spacemacs-base/packages.el#L787-L795][spacemacs/packages.el at 522366bbd179bc332a863efeb523daa09c603458 · syl20bnr/spacemacs · GitHub]]
  ;; Add vim-like movement to Helm lisp
  (define-key helm-map (kbd "C-j") #'helm-next-line)
  (define-key helm-map (kbd "C-k") #'helm-previous-line)
  ;; (define-key helm-map (kbd "C-h") #'helm-next-source)
  (define-key helm-map (kbd "C-S-h") #'describe-key)
  ;; (define-key helm-map (kbd "C-l") (kbd "RET"))
  (define-key helm-map [escape] #'helm-keyboard-quit)
  (dolist (keymap (list helm-find-files-map helm-read-file-map))
    ;; (define-key keymap (kbd "C-l") #'helm-execute-persistent-action)
    ;; (define-key keymap (kbd "C-h") #'helm-find-files-up-one-level)
    (define-key keymap (kbd "C-S-h") #'describe-key))

  ;; [[http://www.cachestocaches.com/2016/12/vim-within-emacs-anecdotal-guide/][Vim Within Emacs: An Anecdotal Guide]]
  ;; [[https://emacs.stackexchange.com/questions/4062/evil-mode-make-helm-quit-with-the-escape-key/4064#4064][evil mode - make helm quit with the escape key - Emacs Stack Exchange]]
  ;; (define-key helm-map (kbd "ESC") #'helm-keyboard-quit)

  )

;; helm-themes
(liby 'helm-themes
  (command (helm-themes) "helm-themes"))

;; helm-c-yasnippet (req 'helm-c-yasnippet)

;; misc
(req 'helm-misc)


;; cmd-t
(liby 'helm-cmd-t
  (command (helm-cmd-t) "helm-cmd-t")
  (add-global-key "M-t" #'helm-cmd-t))
;; (req 'helm-C-x-b
;;      (add-key global-map [remap switch-to-buffer] #'helm-C-x-b))


;; elisp-package
(liby 'helm-elisp-package
  (command (helm-list-elisp-packages) "helm-elisp-package")
  )



;;; init-helm.el ends here
