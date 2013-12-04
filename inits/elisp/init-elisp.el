
(add-subdirs-to-load-path (concat user-emacs-directory "inits/elisp"))


(req 'r7rs)
(req 'srfi)


(req 'csh-mode
     (setq csh-mode-hook
           #'(lambda ()
               (font-lock-mode 1)             ;; font-lock the buffer
               (setq csh-indent 4)
               (setq csh-tab-always-indent t)
               (setq csh-match-and-tell t)
               (setq csh-align-to-keyword t)))
     (add-to-list 'auto-mode-alist '("\\.tcsh\\'" . csh-mode))
     (add-to-list 'auto-mode-alist '("\\.tcshrc\\'" . csh-mode)))

(cl-defun my-csh-add-keywords (face-name keyword-rules)
  (let* ((keyword-list (mapcar #'(lambda (x)
                                   (symbol-name (cdr x)))
                               keyword-rules))
         (keyword-regexp (concat "(\\("
                                 (regexp-opt keyword-list)
                                 "\\)[ \n]")))
    (font-lock-add-keywords 'shell-script-mode
                            `((,keyword-regexp 1 ',face-name)))))

(req 'ninja-mode)

(req 'vendle
;;; plugin directory
     (setq *user-emacs-vendle-directory* (expand-file-name (concat user-emacs-directory (file-name-as-directory "vendle"))))

     ;; initialize vendle
     (vendle:initialize)

     (vendle:register '("emacs-powerline" "jonathanchu/emacs-powerline"))
     (vendle:register '("nyan-mode" "TeMPOraL/nyan-mode"))
     (vendle:register '("highlight-sexp" "daimrod/highlight-sexp"))
     (vendle:register '("emux-el" "m2ym/emux-el"))
     (vendle:register '("seijiseikana-el" "moriyamahiroshi/seijiseikana-el"))

     (vendle:register '("eldoc-extension" "emacsmirror/eldoc-extension"))
     (vendle:register '("mew" "emacsmirror/mew"))
     (vendle:register '("navi2ch" "naota/navi2ch"))
     (vendle:register '("outxxtra" "tj64/outxxtra"))
     (vendle:register '("hyperplane-theme" "sabof/hyperplane-theme"))
     (vendle:register '("zone-matrix" "ober/zone-matrix"))
     (vendle:register '("flatline-el" "mytoh/flatline-el"))
     (vendle:register '("fish-mode" "mytoh/fish-mode"))
     (vendle:register '("helm-ypv" "mytoh/helm-ypv"))
     (vendle:register '("company-scheme" "mytoh/company-scheme"))
     ;; (vendle:register ("emacs-evernote-mode" "http://emacs-evernote-mode.google.com/svn/trunk"))


     ;; install packages
     (vendle:install-packages
      *vendle-package-list*
      *user-emacs-vendle-directory*)

     ;; update plugins
     ;; (vendle:update-packages *user-emacs-vendle-directory*)


     ;; (nyan-mode t)


     ;;(req 'emux
     ;; prefix C-c
     ;; "C-n" ' emux:term-next
     ;; "SPC" 'emux:term-next
     ;; "C-p"  'emux:term-previous
     ;; "C-t"   'emux:term-new
     ;; "A"      'emux:term-rename
     ;; "k"      'emux:term-kill
     ;; "d"      'emux:term-cd
     ;; "~"     'emux:term-sync
     ;;     )

     ;; highlight-sexp
     ;; (req 'highlight-sexp
     ;;     (add-hook 'lisp-mode-hook 'highlight-sexp-mode)
     ;;   (add-hook 'emacs-lisp-mode-hook 'highlight-sexp-mode)
     ;;   (add-hook 'scheme-mode-hook 'highlight-sexp)
     ;;   (setq hl-sexp-foreground-color nil)
     ;;   (setq hl-sexp-background-color "#1a1a1a"))


     ;; seijiseikana
     (req 'seijiseikana)

     ;; eldoc-extension
     (req 'eldoc-extension)

     ;; navi2ch
     (req 'navi2ch
          (setq navi2ch-mona-enable 1)
          (setq navi2ch-ack-when-exit -1)
          (setq navi2ch-message-user-name ""))

     ;; flatline
     (req 'flatline
          (flatline-mode 1))


     ;; hyperplane theme
     (add-to-list 'custom-theme-load-path
                  (expand-file-name "hyperplane-theme" *user-emacs-vendle-directory*))

     ;; fish-mode
     (req 'fish-mode)

     ;; zone matrix
     ;; (req 'zone-settings)



     (req 'helm-ypv
          (setq helm-ypv-local-address "peca:7144")
          (add-to-list 'helm-ypv-yp-urls '(dan1 "dandan626.web.fc2.com"))
          (add-to-list 'helm-ypv-yp-urls '(dan2 "www27.atpages.jp/dandan626"))

          (mytoh:define-global-key (kbd "y") #'helm-ypv)
          )


     (eval-after-load 'company
       '(req 'company-scheme
             (add-to-list 'company-backends 'company-scheme)))

     )


;; (req 'pretty-scheme
;;      (add-hook 'scheme-mode-hook 'turn-on-pretty-scheme-mode))

(provide 'init-elisp)
