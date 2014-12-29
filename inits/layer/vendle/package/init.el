;; init-vendle.el -*- lexical-binding: t; -*-

;;;  requires
(require 'muki)

(req 'vendle

  ;;;; package requires

  ;; (req 'initchart
  ;;   (initchart-record-execution-time-of load file)
  ;;   (initchart-record-execution-time-of require feature))

;;;;; spray
  ;; (req 'spray)

;;;;; rotate
  (liby 'rotate
    (auto (rotate-layout rotate-window) "rotate")
    (add-global-key "C-c C-SPC" 'rotate-layout
                    "C-c C-c C-SPC" 'rotate-window))

;;;;; git-timemachine
  (liby 'git-timemachine
    (auto (git-timemachine) "git-timemachine"))

;;;;; flappymacs
  (liby 'flappymacs
    (auto (flappymacs) "flappymacs"))

;;;;; yamada
  (liby 'yamada
    (auto (yamada) "yamada")

    ;; (add-global-key "C-c C-c C-y" 'yamada-dancing)

    ;; (yamada-dancing 1) ;; or C-c C-c C-y (M-x yamada-dancing)
    ;; (yamada-dancing 5) ;; or C-u 5 C-c C-c C-y
    )

;;;;; css-eldoc
  (req 'css-eldoc
    (turn-on-css-eldoc))

;;;;; web-beatify
  (liby 'web-beautify
    (auto (web-beautify-css-buffer) "web-beautify")
    (after 'css-mode
        (add-hook 'css-mode-hook
         (lambda ()
           (add-hook 'before-save-hook 'web-beautify-css-buffer t t)))))

;;;;; direx
  (liby 'direx
    (auto (direx:jump-to-directory
           direx:jump-to-directory-other-window)
          "direx"))

;;;;; oniisama
  (req 'oniisama
    (imouto))


;;;;; guide-key
  (req 'guide-key
    (setq guide-key/guide-key-sequence
          `("C-x r" "C-x 4" "C-q"
                    ,(if (boundp 'helm-command-prefix-key)
                         helm-command-prefix-key
                         "C-x c")
                    (org-mode "C-c C-x")))
    ;; (guide-key-mode 1)
    )

;;;;; guide-key-tip
  (req 'guide-key-tip
    (setq guide-key-tip/enabled t))

;;;;; clojure-mode
  (req 'clojure-mode
    (req 'clojure-mode-extra-font-locking))

;;;;; bqlist-lock
  (liby 'bqlist-lock
    (auto (bqlist-lock-enable) "bqlist-lock")
    (hook 'emacs-lisp-mode-hook 'bqlist-lock-enable))


;;;;; lorem-ipsum
  (liby 'lorem-ipsum
    (auto (lorem-ipsum) "lorem-ipsum"))

  ;; ;;;;; emacs-color-themes
  (req 'emacs-color-themes)


;;;;; sly
  (req 'sly-autoloads
    (setq inferior-lisp-program "sbcl"))

;;;;; twittering-mode
  (liby 'twittering-mode
    (auto (twit) "twittering-mode")
    (setq twittering-allow-insecure-server-cert t))

;;;;; coffee
  (req 'coffee-mode)


;;;;; color-theme-approximate
  (req 'color-theme-approximate
    (color-theme-approximate-on))

;;;;; google-this
  (liby 'google-this
    (auto (google-this) "google-this"))

;;;;; golden-ratio
  ;; (req 'golden-ratio
  ;;   (enable-mode golden-ratio-mode)
  ;;   (add-to-list 'golden-ratio-exclude-modes 'eshell-mode)
  ;;   (add-to-list 'golden-ratio-exclude-modes 'magit-status-mode)
  ;;   (add-to-list 'golden-ratio-exclude-modes 'magit-log-mode)
  ;;   (add-to-list 'golden-ratio-exclude-modes 'magit-mode))

;;;;; nssh
  (liby 'nssh
    (auto (nssh nssh-all) "nssh"))

;;;;; markdown
  (liby 'markdown-mode
    (auto (gfm-mode markdown-mode) "markdown-mode")
    (mode "\\.md\\'" 'gfm-mode)
    (mode "\\.markdown\\'" 'gfm-mode)
    (mode "README\\.md\\'"  'gfm-mode))


;;;;; charmap
  (liby 'charmap
    (auto (charmap) "charmap")
    (setq charmap-text-scale-adjust 2))

;;;;; pt
  (liby 'pt
    (auto (pt-regexp) "pt"))

;;;;; switch-window
  (liby 'switch-window
    (auto (switch-window) "switch-window")
    (global-set-key (kbd "C-x o") 'switch-window)
    (set-option switch-window-shortcut-style 'qwerty)
    (set-option switch-window-qwerty-shortcuts
                '("a" "o" "e" "u" "h" "t" "n" "s" "," "." "c" "r")))

;;;;; csharp-mode
  ;; (req 'csharp-mode)

  ;;; util
  (cl-defun vendle-find-duplicate-packages ()
    (seq-filter
     (lambda (p)
       (cl-find-if (lambda (v) (equalp (vendle:package-name v)
                                       p))
                   *vendle-package-list*))
     (seq-map
      (lambda (p) (format "%s" p))
      package-activated-list)))

  ;;; not loaded
  ;; (req 'camcorder)

  ;; (req 'js-beautify
  ;;   (add-hook 'js-mode-hook 'js-beautify-init)
  ;;   (add-hook 'html-mode-hook 'js-beautify-init)
  ;;   (add-hook 'css-mode-hook 'js-beautify-init))


  ;;   (req 'auto-save-buffers-enhanced
  ;; ;;   ;; If you're using CVS or Subversion or git
  ;;   (auto-save-buffers-enhanced-include-only-checkout-path t)
  ;;   (auto-save-buffers-enhanced t))

  ;; (req 'git-gutter-fringe+
  ;;   ;; Optional: Activate minimal skin
  ;;   (git-gutter-fr+-minimal))

  ;; (req 'travis)

  ;; (req 'vi-tilde-fringe
  ;;   (add-hook 'prog-mode-hook 'vi-tilde-fringe-mode))

  ;; (liby 'aggressive-indent
  ;;   (auto (aggressive-indent-mode) "aggressive-indent")
  ;;   (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode))

  ;; (req 'highlight-indentation
  ;;   (set-face-background 'highlight-indentation-face "#e3e3d3")
  ;;   (set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
  ;;   (highlight-indentation-current-column-mode))

  ;; (req 'js3-mode
  ;;   (add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))
  ;;   )

  ;;;; yasnippet
  ;; (req 'yasnippet
  ;;   (yas-global-mode 1))

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
  ;;   (set-option hl-sexp-foreground-color nil)
  ;;   (set-option hl-sexp-background-color "#1a1a1a"))

  ;; zone matrix
  ;; (req 'zone-settings)

  ;; (req 'undohist
  ;;      (undohist-initialize)
  ;;      (setq undohist-ignored-files '("\\.git/COMMIT_EDITMSG")))

  ;; (req 'fuzzyjump
  ;;   (let ((map fuzzyjump-cmd-map))
  ;;     (define-key map (kbd "'") (lambda () (interactive) (fuzzyjump 1 0)))
  ;;     (define-key map (kbd ",") (lambda () (interactive) (fuzzyjump 1 1)))
  ;;     (define-key map (kbd ".") (lambda () (interactive) (fuzzyjump 1 2)))
  ;;     (define-key map (kbd "p") (lambda () (interactive) (fuzzyjump 1 3)))
  ;;     (define-key map (kbd "y") (lambda () (interactive) (fuzzyjump 1 4)))
  ;;     (define-key map (kbd "f") (lambda () (interactive) (fuzzyjump 1 5)))
  ;;     (define-key map (kbd "g") (lambda () (interactive) (fuzzyjump 1 6)))
  ;;     (define-key map (kbd "c") (lambda () (interactive) (fuzzyjump 1 7)))
  ;;     (define-key map (kbd "r") (lambda () (interactive) (fuzzyjump 1 8)))
  ;;     (define-key map (kbd "l") (lambda () (interactive) (fuzzyjump 1 9)))
  ;;     (define-key map (kbd "a") (lambda () (interactive) (fuzzyjump 2 0)))
  ;;     (define-key map (kbd "o") (lambda () (interactive) (fuzzyjump 2 1)))
  ;;     (define-key map (kbd "e") (lambda () (interactive) (fuzzyjump 2 2)))
  ;;     (define-key map (kbd "u") (lambda () (interactive) (fuzzyjump 2 3)))
  ;;     (define-key map (kbd "i") (lambda () (interactive) (fuzzyjump 2 4)))
  ;;     (define-key map (kbd "d") (lambda () (interactive) (fuzzyjump 2 5)))
  ;;     (define-key map (kbd "h") (lambda () (interactive) (fuzzyjump 2 6)))
  ;;     (define-key map (kbd "t") (lambda () (interactive) (fuzzyjump 2 7)))
  ;;     (define-key map (kbd "n") (lambda () (interactive) (fuzzyjump 2 9)))
  ;;     (define-key map (kbd ";") (lambda () (interactive) (fuzzyjump 3 0)))
  ;;     (define-key map (kbd "q") (lambda () (interactive) (fuzzyjump 3 1)))
  ;;     (define-key map (kbd "j") (lambda () (interactive) (fuzzyjump 3 2)))
  ;;     (define-key map (kbd "k") (lambda () (interactive) (fuzzyjump 3 3)))
  ;;     (define-key map (kbd "x") (lambda () (interactive) (fuzzyjump 3 4)))
  ;;     (define-key map (kbd "b") (lambda () (interactive) (fuzzyjump 3 5)))
  ;;     (define-key map (kbd "m") (lambda () (interactive) (fuzzyjump 3 6)))
  ;;     (define-key map (kbd "w") (lambda () (interactive) (fuzzyjump 3 7)))
  ;;     (define-key map (kbd "v") (lambda () (interactive) (fuzzyjump 3 9))))
  ;;   (fuzzyjump-mode t))

  ;; (req 'smooth-scroll
  ;;      (smooth-scroll-mode nil))

  ;; (req 'yascroll
  ;;      (global-yascroll-bar-mode))

  ;; (req 'aozora-view)

  ;; (req 'eshell-alias)


  ;; (req 'moe-theme
  ;;   ;; org-modeで見出しごとにフォントの大きさを変える
  ;;   (setq moe-theme-resize-org-title
  ;;         '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
  ;;   ;; mode-lineをオレンジにする
  ;;   ;; (サポートしている他の色: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b)
  ;;   ;; (setq moe-theme-mode-line-color 'orange)
  ;;   (moe-dark)
  ;;   ;; あるいは (moe-light)
  ;;   )

  ;; (req 'indent-guide
  ;;   (add-hook 'emacs-lisp-mode-hook 'indent-guide-mode)
  ;;   (add-hook 'scheme-mode-hook 'indent-guide-mode)
  ;;   (set-option indent-guide-char "|"))


  ;; (liby 'highlight-stages
  ;;   (auto (highlight-stages-mode)
  ;;         "highlight-stages")
  ;;   (add-hook 'emacs-lisp-mode-hook 'highlight-stages-mode)
  ;;   (add-hook 'scheme-mode-hook 'highlight-stages-mode))

  ;; (req 'comment-dwim-2
  ;;   (add-global-key  "M-;" 'comment-dwim-2))


  ;; (liby 'slideview
  ;;       (add-hook 'image-mode-hook 'slideview-mode))

  ;; (req 'image+
  ;;      (imagex-auto-adjust-mode 1))

  ;; (req 'recycle
  ;;   (global-set-key (kbd "C-.") 'recycle)
  ;;   (global-set-key (kbd "C-,") 'recycle-2nd))

  ;; (req 'ids-edit
  ;;   (global-ids-edit-mode))

  ;; (req 'fill-column-indicator
  ;;   (add-hook 'prog-mode-hook 'fci-mode)
  ;;   ;; (add-hook 'text-mode-hook 'fci-mode)
  ;;   )

  ;; (req 'aria2
  ;;   (enable-option  aria2-add-evil-quirks))



  )

;;; init-vendle.el ends here
