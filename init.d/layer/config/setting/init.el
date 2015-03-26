;;; config-setting.el -*- lexical-binding: t -*-

;;; requires
(require 'muki)
(require 'subr-x)

;;; settings
;;;; user elisps
(muki:add-to-load-path (muki:user-emacs-directory (file-name-as-directory "elisp")))

;;disable startup message
(enable-option inhibit-startup-screen)

;; startup splash
;; (set-option fancy-splash-image (muki:user-emacs-directory "splash/splash.png"))

;;;; parens
(enable-mode show-paren-mode)
(set-option show-paren-delay 0
            show-paren-style 'mixed)
;; (set-face-attribute 'show-paren-match-face nil
;;                     :foreground nil
;;                     :background "#354039"
;;                     :underline nil)

;;;; syntax highlight
(global-font-lock-mode 1)
;;;; dont enable this option
(enable-option font-lock-maximum-decoration)

;;;; read symlinked file
(enable-option vc-follow-symlinks)

;;;; encodings
(set-language-environment  'utf-8)
(set-charset-priority 'unicode)
(prefer-coding-system 'utf-8)
(set-option default-process-coding-system '(utf-8-unix . utf-8-unix))
(set-option coding-system-for-read 'utf-8
            coding-system-for-write 'utf-8)

;;;; clipboard
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;;;; start server
(req 'server
  ;; (enable-option server-use-tcp)
  (unless (server-running-p)
    (server-start)))

;;;; use space instead of tab
(setq-default tab-width 4
              indent-tabs-mode nil)
(set-option indent-line-function #'indent-relative-maybe)

;;;; mouse
(set-option mouse-avoidance-mode 'proteus)

;;;; show info on mode-line
(enable-option display-time-24hr-format
               display-time-day-and-date)
(display-time)
(enable-mode line-number-mode)
(enable-mode column-number-mode)

;;;; change yes-no to y-n
(fset 'yes-or-no-p #'y-or-n-p)

;;;; show images
(auto-image-file-mode 1)
(enable-option image-animate-loop)
(add-hook 'image-mode-hook
          (clambda ()
              (cl-letf ((image (image-get-display-property)))
                (if (image-multi-frame-p image)
                    (image-toggle-animation)))))
;; (set-option image-transform-resize 'fit-height)

;;;; add file types
(add-to-list 'image-file-name-extensions "jp2")
(add-to-list 'image-file-name-extensions "bmp")
(add-to-list 'image-file-name-extensions "psd")

;;;; imagemagick
(set-option imagemagick-render-type 1) ; default 0

;;;; highlight region
(transient-mark-mode 1)

;;;; delete seleted text when typing
(delete-selection-mode 1)

;;;; highlight current line
;; highlight the current line; set a custom face, so we can
;; recognize from the normal marking (selection)

(setq hl-line-face 'hl-line)

(global-hl-line-mode t) ; turn it on for all modes by default

(cl-defun muki:set-hl-line-face ()
  (set-face-attribute 'hl-line nil :foreground nil :background "Gray20"))

(add-hook 'after-init-hook #'muki:set-hl-line-face)

;;;; display keys
(set-option echo-keystrokes 0.1)

;;;; disable dialog box
(set-option use-dialog-box nil)

;;;; smooth scrolling
;; (setq redisplay-dont-pause 1
;;       scroll-margin 1
;;       scroll-step 4
;;       scroll-conservatively 35
;;       scroll-preserve-screen-position 1)
(set-option scroll-conservatively 9999
            scroll-preserve-screen-position t)

(setq scroll-step 1) ;; keyboard scroll one line at a time

(setq scroll-up-aggressively 0.0)
(setq scroll-down-aggressively 0.0)

;;;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

(setq mouse-wheel-follow-mouse t) ;; scroll window under mouse


;;;; disable bars
(if (fboundp 'menu-bar-mode) (disable-mode menu-bar-mode))
(if (fboundp 'tool-bar-mode) (disable-mode tool-bar-mode))
(if (fboundp 'scroll-bar-mode) (disable-mode scroll-bar-mode))
(if (fboundp 'horizontal-scroll-bar-mode) (disable-mode horizontal-scroll-bar-mode))

;;;; delete whole line with C-k once
(enable-option kill-whole-line)

;;;; enable rectangular mode
;; (cua-mode 1)
;; (disable-option cua-enable-cua-keys)

;;;; ignore case
(enable-option completion-ignore-case
               read-buffer-completion-ignore-case
               read-file-name-completion-ignore-case)

;;;; alaways show completions
;; (icomplete-mode 1)

;;;; show function name
(enable-mode which-function-mode)
(set-face-attribute 'which-func nil :foreground "#4f7b8a")

;;;; disable bell
(set-option ring-bell-function 'ignore)
(enable-option visible-bell)

;;;; no warnings when compile
(set-option byte-compile-warnings '(not cl-functions))

;;;; dont split verticaly
(disable-option split-height-threshold
                split-width-threshold)

;;;; backup and autosave
;;disable backup
;; (enable-option backup-inhibited)
;; (disable-option make-backup-files) ; stop creating those backup~ files
;;disable auto save
(disable-option auto-save-default)
(enable-option delete-auto-save-files)
(set-option backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
;; (defvar backup-directory (expand-file-name "backups" user-emacs-directory))
;; (defvar autosave-directory (expand-file-name "autosaves" user-emacs-directory))
;; (set-option backup-directory-alist
;;             `((".*" . ,backup-directory)))
;; (set-option auto-save-list-file-prefix autosave-directory)
;; (set-option auto-save-file-name-transforms
;;             `((".*" ,autosave-directory t)))

;;;; don't record symbolic link file name
(enable-option find-file-visit-truename)

;;;; undo
(set-option undo-limit 100000
            undo-string-limit 1300000)

;;;; reload buffer
(global-auto-revert-mode 1)
;; (set-option auto-revert-interval 5)
(req 'vc
  (enable-option auto-revert-check-vc-info))
(enable-option global-auto-revert-non-file-buffers)
(disable-option auto-revert-verbose)
(set-option revert-without-query '(".*\\.scm\\'" ".*\\.el\\'" ".*\\.tcsh\\'"))

;;;; confirmation when visit new file or buffer
(set-option confirm-nonexistent-file-or-buffer nil)

;;;; open archived files
(auto-compression-mode 1)

;;;; display buffer end
(enable-option indicate-empty-lines)

;;;; electric layout
(disable-option electric-layout-mode)

;;;; electric indent
(disable-option electric-indent-mode)

;;;; add newline to end of file
(enable-option require-final-newline)

;;;; Sort list-colors-display by Hue
(set-option list-colors-sort 'hsv)

;;;; ediff
;; コントロール用のバッファを同一フレーム内に表示
(set-option ediff-window-setup-function #'ediff-setup-windows-plain)
;; diffのバッファを上下ではなく左右に並べる
(set-option ediff-split-window-function #'split-window-horizontally)


;;;; scratch
(set-option initial-scratch-message
            ";;
;;
;;　　　＿_
;;　　　｀ヽ,　｀ヽ
;;　　　　,.' -─-ヽ.
;;　　＜i　!ﾚﾊﾊﾊ)）＞
;;　　　 ﾙ(ﾘ_ﾟ -ﾟﾉ!
;;　　　　 / /wk|Ｏ―☆ ()(())((()))(((())))((((()))))(((((())))))
;;.　　　 / / !_i_〉l
;;　　　く_/_,ﾙﾉノ

")

;;;; load newer file, .el or .elc
(enable-option load-prefer-newer)

;;;; invoke debugger
;; (enable-option debug-on-error)

;;;; recursive minibuffer
(enable-option enable-recursive-minibuffers)
(set-option history-length 99999999999)

;;;; macro print level
(disable-option eval-expression-print-level)
(disable-option eval-expression-print-length)

;;;; completion
;; (add-to-list 'completion-styles 'initials)
;; (add-to-list 'completion-styles 'substring)

;;;; visit true file location
(enable-option find-file-visit-truename)

;;;; theme
;; comidia, planet, monokai, molokai, subatomic256, birds-of-paradise-plus, firebelly, zen-and-art, gruvbox, base16-tomorrow
;; spolsky, odersky, jazz, purple-haze, warm-night, brin, gotham, soothe, spolsky, wilson, noctilux, erosiond
(defvar muki:x-theme 'material)
(defvar muki:term-theme 'flatland)

(enable-option select-enable-clipboard
               select-enable-primary)

;;;; browse web
(set-option browse-url-generic-program "conkeror")
(set-option browse-url-browser-function #'browse-url-generic)

;;;; prettify symbols
(enable-mode global-prettify-symbols-mode)

;; (when window-system
;;   (enable-mode global-highlight-changes-mode)
;;   (set-face-attribute 'highlight-changes nil
;;                       :foreground nil
;;                       :background "#3b271d")
;;   (set-face-attribute 'highlight-changes-delete nil
;;                       :foreground nil
;;                       :background "#3b272d"))

;;;; proxy
;; (set-option url-proxy-services '(("http" . "192.168.1.22:8080")))

;;;; info
(after 'info
    (seq-each
     (clambda (dir)
         (cl-pushnew dir Info-additional-directory-list))
     (seq-filter
      (clambda (dir) (and (file-directory-p dir)
                      (file-exists-p dir)))
      (directory-files (expand-file-name "~/huone/työkaluvaja/info") 'full "^[^.]+"))))

;;;; file type and external program list used for helm and sunrise
(defvar muki:external-programs-associations nil)
(set-option muki:external-programs-associations
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

;;;; enable local variables
(set-option enable-local-variables :all)

;;; bookmark
(set-option bookmark-default-file (muki:user-emacs-directory "bookmarks")
            bookmark-save-flag 1) ;; save after every change

;;;; builtins

;;;;; checkdoc
(req 'checkdoc)

;;;;; uniquify
(req 'uniquify
  (set-option uniquify-buffer-name-style 'post-forward-angle-brackets))

;;;;; term/bobcat
(load "term/bobcat")
(when (fboundp 'terminal-init-bobcat)
  (terminal-init-bobcat))

;;;;; outlining everywhere
;; (require 'allout)
;; (allout-auto-activation)

;;;;; save cursor position
(req 'saveplace
  (setq save-place-file (concat user-emacs-directory "saveplace.el")) ; use standard emacs dir
  (setq-default save-place t))

;; important for golden-ratio to better work
(enable-option window-combination-resize)

;; limit on depth in eval, appyl and funcall
(set-option max-lisp-eval-depth (* 10 max-lisp-eval-depth))

;; instantly display current keystrokes in mini buffer
(setq echo-keystrokes 0.02)

;; file revert time
(set-option auto-revert-interval 1)

;; There is some request to the window manager that is not sending a response back to emacs. This line fixed the problem for me.
;; [[http://ubuntuforums.org/showthread.php?t=183638]]
(modify-frame-parameters nil '((wait-for-wm . nil)))

;; dont support bidi
(setq-default bidi-display-reordering nil)

;; delete duplication in history
(enable-option history-delete-duplicates)

;; decrease gc cycle
(set-option gc-cons-threshold (* 10 gc-cons-threshold))

;; message log line counts
(set-option message-log-max 10000)

;; desktop
;; (setq desktop-globals-to-save '(extended-command-history
;;                                 helm-ff-history
;;                                 helm-external-command-history))
;; (setq desktop-files-not-to-save "")
;; (dolist (symbol (apropos-internal "\\`[^:]*-history\\'" 'boundp))
;;   (add-to-list 'desktop-globals-to-save symbol))
;; (desktop-save-mode 1)


;; heap size
;; (set-option gc-cons-percentage 0.5) ; 0.1


;; [[https://www.reddit.com/r/emacs/comments/2r5xb4/vim_tilde_behavior/]]
;;use tilde's like Vim
;; (define-fringe-bitmap 'tilde [0 0 0 113 219 142 0 0] nil nil 'center)
;; (setcdr (assq 'empty-line fringe-indicator-alist) 'tilde)
;; (set-fringe-bitmap-face 'tilde 'font-lock-comment-face)
;; (cl-defun muki:enable-indicate-empty-lines ()
;;   (setq indicate-empty-lines t))
;; (add-hook 'prog-mode-hook #'muki:enable-indicate-empty-lines)

;; Make M-z stop minimizing frames
(defun iconify-or-deiconify-frame nil)

;; [[http://writequit.org/org/settings.html]]
;; Allow font-lock-mode to do background parsing
;; (setq jit-lock-stealth-time 1
;;       jit-lock-stealth-load 100
;;       jit-lock-chunk-size 1000
;;       jit-lock-defer-time 0.01)

;;; automatically make script executable
(add-hook 'after-save-hook
          #'executable-make-buffer-file-executable-if-script-p)

;;;
(set-option max-specpdl-size (* 10 max-specpdl-size))

;;; config-setting.el ends here
