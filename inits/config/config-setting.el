;;; config-setting.el -*- lexical-binding: t -*-

;;;; user elisps
(muki:add-to-load-path (muki:user-emacs-directory "elisp"))

;;disable startup message
(enable-option inhibit-startup-screen)

;; startup splash
;; (set-option fancy-splash-image (expand-file-name "~/.emacs.d/splash/splash.xpm"))

;;;; parens
(enable-mode show-paren-mode)
(set-option show-paren-delay 0
            show-paren-style 'expression)
(set-face-attribute 'show-paren-match-face nil
                    :background "#252529"
                    :underline nil)

;;;; syntax highlight
(global-font-lock-mode 1)
;;;; dont enable this option
;; (enable-option font-lock-maximum-decoration)

;;;; read symlinked file
(enable-option vc-follow-symlinks)

;;;; encodings
(set-language-environment  'utf-8)
(prefer-coding-system 'utf-8)
(set-option coding-system-for-read 'utf-8
            coding-system-for-write 'utf-8)

;;;; start server
(req 'server
     ;; (enable-option server-use-tcp)
     (unless (server-running-p)
       (server-start)))

;;;; use space instead of tab
(setq-default tab-width 4
              indent-tabs-mode nil)
(set-option indent-line-function 'indent-relative-maybe)

;;;; mouse
(set-option mouse-avoidance-mode 'banish)

;;;; show info on mode-line
(enable-option display-time-24hr-format
               display-time-day-and-date)
(display-time)
(enable-mode line-number-mode)
(enable-mode column-number-mode)

;;;; change yes-no to y-n
(fset 'yes-or-no-p 'y-or-n-p)

;;;; show images
(auto-image-file-mode 1)
(enable-option image-animate-loop)
(add-hook 'image-mode-hook
          (lambda ()
            (cl-letf ((image (image-get-display-property)))
              (if (image-multi-frame-p image)
                  (image-toggle-animation)))))
;; (set-option image-transform-resize 'fit-height)

;;;; highlight region
(transient-mark-mode 1)

;;;; delete seleted text when typing
(delete-selection-mode 1)

;;;; highlight current line
(defface muki:hlline
    '((((class color)
        (background dark))
       (:background "dark slate gray"))
      (((class color)
        (background light))
       (:background "#b8fbb9"))
      (t
       ()))
  "*Face used by hl-line.")
(set-option hl-lineface 'muki:hlline)
(global-hl-line-mode)

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

;;;; disable bars
(if (fboundp 'menu-bar-mode) (disable-mode menu-bar-mode))
(if (fboundp 'tool-bar-mode) (disable-mode tool-bar-mode))
(if (fboundp 'scroll-bar-mode) (disable-mode scroll-bar-mode))

;;;; delete whole line with C-k once
(enable-option kill-whole-line)

;;;; enable rectangular mode
(cua-mode 1)
(disable-option cua-enable-cua-keys)

;;;; ignore case
(enable-option completion-ignore-case
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
(enable-option backup-inhibited)
;;disable auto save
(disable-option auto-save-default)
(disable-option make-backup-files) ; stop creating those backup~ files
(enable-option delete-auto-save-files)
;; (defvar backup-directory (expand-file-name "backups" user-emacs-directory))
;; (defvar autosave-directory (expand-file-name "autosaves" user-emacs-directory))
;; (set-option backup-directory-alist
;;             `((".*" . ,backup-directory)))
;; (set-option auto-save-list-file-prefix autosave-directory)
;; (set-option auto-save-file-name-transforms
;;             `((".*" ,autosave-directory t)))

;;;; recentf
;; save more recent files
(set-option recentf-max-saved-items nil)
(defvar muki:recentf-exclude `(,(rx  ".el.gz" string-end) "archive-contents$" "-autoloads.el$"))
(set-option recentf-exclude muki:recentf-exclude)
(set-option recentf-auto-cleanup 10)
;;;; don't record symbolic link file name
(enable-option find-file-visit-truename)

;;;; undo
(set-option undo-limit 100000
            undo-string-limit 1300000)

;;;; reload buffer
(global-auto-revert-mode 1)
;; (set-option auto-revert-interval 5)
(enable-option auto-revert-check-vc-info)
(enable-option global-auto-revert-non-file-buffers)
(disable-option auto-revert-verbose)
(set-option revert-without-query '(".*\\.scm\\'" ".*\\.el\\'" ".*\\.tcsh\\'"))

;;;; confirmation when visit new file or buffer
(set-option confirm-nonexistent-file-or-buffer nil)

;;;; open archived files
(auto-compression-mode 1)

;;;; display buffer end
(enable-option indicate-empty-lines)

;;;; electric indent
(enable-option electric-layout-mode)

;;;; add newline to end of file
(enable-option require-final-newline)

;;;; Sort list-colors-display by Hue
(set-option list-colors-sort 'hsv)

;;;; ediff
;; コントロール用のバッファを同一フレーム内に表示
(set-option ediff-window-setup-function 'ediff-setup-windows-plain)
;; diffのバッファを上下ではなく左右に並べる
(set-option ediff-split-window-function 'split-window-horizontally)


;;;; scratch
(set-option initial-scratch-message
            ";;
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
(enable-option debug-on-error)

;;;; recursive minibuffer
(enable-option enable-recursive-minibuffers)
;;;; save minibuffer history
(set-option savehist-additional-variables '(kill-ring mark-ring global-mark-ring search-ring regexp-search-ring extended-command-history))
(savehist-mode 1)
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
;; comidia, planet, monokai, molokai, subatomic256, birds-of-paradise-plus
(set-option muki:x-theme 'planet)
(set-option muki:term-theme 'moe-dark)

(enable-option x-select-enable-clipboard
               x-select-enable-primary)

;;;; browse web
(set-option browse-url-generic-program "conkeror")

;;;; prettify symbols
(enable-mode global-prettify-symbols-mode)

(provide 'config-setting)
