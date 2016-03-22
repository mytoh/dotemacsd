;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'hl-line
;;;; highlight current line
  ;; highlight the current line; set a custom face, so we can
  ;; recognize from the normal marking (selection)

  (setq hl-line-face 'hl-line)

  ;; (global-hl-line-mode t) ; turn it on for all modes by default

  (cl-defun muki:set-hl-line-face ()
    (set-face-attribute 'hl-line nil :foreground nil :background "Gray20"))

  (add-hook 'emacs-startup-hook #'muki:set-hl-line-face)

  ;; [[http://rubikitch.com/2015/05/14/global-hl-line-mode-timer/]]

  (require 'hl-line)
  (defun global-hl-line-timer-function ()
    (global-hl-line-unhighlight-all)
    (let ((global-hl-line-mode t))
      (global-hl-line-highlight)))
  (setq global-hl-line-timer
        (run-with-idle-timer 0.03 t 'global-hl-line-timer-function))
  ;; (cancel-timer global-hl-line-timer)


  (add-hook 'prog-mode-hook #'hl-line-mode)
  (add-hook 'org-mode-hook #'hl-line-mode)
  )

;;; init.el ends here
