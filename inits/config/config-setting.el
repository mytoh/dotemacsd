;;; -*- coding: utf-8 -*-
;; personal initialize

;; user elisps
(my-add-to-load-path (concat user-emacs-directory "elisp"))

;;disable startup message
(enable-option inhibit-startup-screen)


;;; parens
(setq show-paren-delay 0
      show-parne-style 'parenthesis)
(show-paren-mode)

;; syntax highlight
(global-font-lock-mode 1)
;;; dont enable this option
;; (enable-option font-lock-maximum-decoration)

;; read symlinked file
(enable-option vc-follow-symlinks)

;; encodings
(prefer-coding-system 'utf-8-unix)

;; start server
(if window-system
    (req 'server
         (enable-option server-use-tcp)
         (unless (server-running-p)
           (server-start))))

;; use space instead of tab
(setq-default tab-width 4
              indent-tabs-mode nil)
(setq indent-line-function 'indent-relative-maybe)

;; mouse
(setq mouse-avoidance-mode 'banish)

;; show info on mode-line
(enable-option display-time-24hr-format)
(enable-option display-time-day-and-date)
(display-time)
(line-number-mode 1)
(column-number-mode 1)

;; change yes-no to y-n
(fset 'yes-or-no-p 'y-or-n-p)

;; show imagesnabnab
(auto-image-file-mode 1)

;; highlight region
(transient-mark-mode 1)

;; highlight current line
;;(enable-option global-hl-line-mode)

;; display keys
(setq echo-keystrokes 0.1)

;; disable dialog box
(setq use-dialog-box nil)

;; smooth scrolling
;; (setq redisplay-dont-pause 1
;;       scroll-margin 1
;;       scroll-step 4
;;       scroll-conservatively 35
;;       scroll-preserve-screen-position 1)

;;; disable bars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;;; delete whole line with C-k once
(enable-option kill-whole-line)

;; enable rectangular mode
(cua-mode 1)
(setq cua-enable-cua-keys -1)

;;; ignore case
(enable-option completion-ignore-case)
(enable-option read-file-name-completion-ignore-case)

;; alaways show completions
;; (icomplete-mode 1)

;; show function name
(which-function-mode 1)
(set-face-attribute 'which-func nil :foreground "#4f7b8a")

;; enable lexical binding
(enable-option lexical-binding)

;; save buffer history
(savehist-mode 1)
(setq history-length 100)

;; disable bell
(setq ring-bell-function 'ignore)
(enable-option visible-bell)

;; no warnings when compile
(setq byte-compile-warnings '(not cl-functions))

;; dont split verticaly
(disable-option split-height-threshold)
(disable-option split-width-threshold)

;;; backup and autosave
;; disable backup
(enable-option backup-inhibited)

;; disable autosave
(disable-option auto-save-default)
;; delete auto save file when exit
(enable-option delete-auto-save-files)

;; (setq auto-save-file-name-transforms
;;       `((".*" ,temporary-file-directory t)))
;; (setq backup-directory-alist
;;       `((".*" . ,temporary-file-directory)))

;; save more recent files
(setq recentf-max-saved-items 1000)
;; recentf exclude
(setq recentf-exclude `(,(rx  ".el.gz" string-end) "archive-contents$"))

;; undo
(setq undo-limit 100000)
(setq undo-string-limit 1300000)

;; reload buffer
(global-auto-revert-mode 1)
(setq auto-revert-interval 5)
(enable-option auto-revert-check-vc-info)

;; confirmation when visit new file or buffer
(setq confirm-nonexistent-file-or-buffer nil)

;; open archived files
(auto-compression-mode 1)

;; also reload dired, and quiet
(enable-option global-auto-revert-non-file-buffers)
(disable-option auto-revert-verbose)

;; display buffer end
(enable-option indicate-empty-lines)

;; electric indent
(enable-option electric-layout-mode)

;; save minibuffer history
(savehist-mode 1)

;; add newline to end of file
(enable-option require-final-newline)


(provide 'config-setting)
