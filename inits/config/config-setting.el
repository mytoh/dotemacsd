;; -*- coding: utf-8 -*-
;;; personal initialize

;;;; user elisps
(my-add-to-load-path (concat user-emacs-directory "elisp"))

;;disable startup message
(enable-option inhibit-startup-screen)


;;;; parens
(show-paren-mode 1)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
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
(set-option coding-system-for-read 'utf-8)
(set-option coding-system-for-write 'utf-8)

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
(enable-option display-time-24hr-format)
(enable-option display-time-day-and-date)
(display-time)
(line-number-mode 1)
(column-number-mode 1)

;;;; change yes-no to y-n
(fset 'yes-or-no-p 'y-or-n-p)

;;;; show images
(auto-image-file-mode 1)

;;;; highlight region
(transient-mark-mode 1)

;;;; highlight current line
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "#b8fbb9"))
    (t
     ()))
  "*Face used by hl-line.")
(set-option hl-lineface 'hlline-face)
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
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;;;; delete whole line with C-k once
(enable-option kill-whole-line)

;;;; enable rectangular mode
(cua-mode 1)
(disable-option cua-enable-cua-keys)

;;;; ignore case
(enable-option completion-ignore-case)
(enable-option read-file-name-completion-ignore-case)

;;;; alaways show completions
;; (icomplete-mode 1)

;;;; show function name
(which-function-mode 1)
(set-face-attribute 'which-func nil :foreground "#4f7b8a")

;;;; enable lexical binding
(enable-option lexical-binding)

;;;; save buffer history
(savehist-mode 1)
(set-option history-length 100)

;;;; disable bell
(set-option ring-bell-function 'ignore)
(enable-option visible-bell)

;;;; no warnings when compile
(set-option byte-compile-warnings '(not cl-functions))

;;;; dont split verticaly
(disable-option split-height-threshold)
(disable-option split-width-threshold)

;;;; backup and autosave
(defvar backup-directory (expand-file-name "backups" user-emacs-directory))
(defvar autosave-directory (expand-file-name "autosaves" user-emacs-directory))
(set-option backup-directory-alist
            `((".*" . ,backup-directory)))
(set-option auto-save-list-file-prefix autosave-directory)
(set-option auto-save-file-name-transforms
            `((".*" ,autosave-directory t)))

;; save more recent files
(set-option recentf-max-saved-items 10000)
;;;; recentf exclude
(defvar my-recentf-exclude `(,(rx  ".el.gz" string-end) "archive-contents$" "-autoloads.el$"))
(set-option recentf-exclude my-recentf-exclude)
(set-option recentf-auto-cleanup 10)
;;;; don't record symbolic link file name
(enable-option find-file-visit-truename)

;;;; undo
(set-option undo-limit 100000)
(set-option undo-string-limit 1300000)

;;;; reload buffer
(global-auto-revert-mode 1)
(set-option auto-revert-interval 5)
(enable-option auto-revert-check-vc-info)

;;;; confirmation when visit new file or buffer
(set-option confirm-nonexistent-file-or-buffer nil)

;;;; open archived files
(auto-compression-mode 1)

;;;; also reload dired, and quiet
(enable-option global-auto-revert-non-file-buffers)
(disable-option auto-revert-verbose)

;;;; display buffer end
(enable-option indicate-empty-lines)

;;;; electric indent
(enable-option electric-layout-mode)

;;;; save minibuffer history
(savehist-mode 1)

;;;; add newline to end of file
;; (enable-option require-final-newline)

;;;; Sort list-colors-display by Hue
(set-option list-colors-sort 'hsv)

;;;; image-mode
(set-option image-transform-resize 'fit-height)

(provide 'config-setting)
