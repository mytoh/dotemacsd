;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;;; notify reverting
(require 'notifications)
(defun-add-hook muki:after-revert-hook (after-revert-hook)
  (when window-system
    (notifications-notify :title (format "Revert %s" (buffer-file-name))
                          :body "Check it out"
                          :urgency 'low
                          :x 1100
                          :y 100
                          :timeout -1)))
;; (add-hook 'after-revert-hook #'muki:after-revert-hook)

(cl-defun muki:init-finish-notify ()
  (when window-system
    (notifications-notify :title "Emacs"
                          :body "Initialization finished"
                          :urgency 'low
                          :x 1100
                          :y 100
                          :timeout 5000)))
;; (add-hook 'emacs-startup-hook #'muki:init-finish-notify)

;;; init.el ends here
