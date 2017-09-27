;;; config-eshell.el -*- lexical-binding: t -*-
;; eshell

(require 'cl-lib)
(require 'esh-mode)
(require 'eshell)

(require 'esh-util)

;;; modules
(cl-pushnew 'eshell-rebind eshell-modules-list)
(cl-pushnew 'eshell-xtra eshell-modules-list)

;;; prefer lisp function
;; (enable-option eshell-prefer-lisp-functions)

;;; history
(after 'em-hist
  (setq-default eshell-history-size 10000))

;;; start eshell after startup
(cl-defun muki:eshell-startup-hook ()
  (let ((default-directory (getenv "HOME")))
    (command-execute 'eshell)
    (bury-buffer)
    (message "eshell started")))
;; (add-hook 'emacs-startup-hook #'muki:eshell-startup-hook)


;; disable undo
(add-hook 'eshell-mode-hook #'buffer-disable-undo)


;; [[https://github.com/emacs-evil/evil/issues/852][Line operations on lines with read-only segments (Eshell, wdired...) · Issue #852 · emacs-evil/evil · GitHub]]
(defun evil/eshell-next-prompt ()
  (when (get-text-property (point) 'read-only)
    ;; If we are at end of prompt, `eshell-next-prompt' will not move, so go backward.
    (backward-char)
    (eshell-next-prompt 1)))

(add-hook
 'eshell-mode-hook
 (lambda () (add-hook 'evil-insert-state-entry-hook 'evil/eshell-next-prompt nil t)))
