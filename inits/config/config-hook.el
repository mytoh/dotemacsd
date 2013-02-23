 ;;; -*- coding: utf-8; lexical-binding: t -*-

(defun my-after-init-hook ()
                                        ;(setq debug-on-error t))
  (add-hook 'after-init-hook 'my-after-init-hook))

(defun my-after-save-hook ()
  (if (string-match (rx (or "config" "package" "init" "lang") "-" (* anything) "el" eol)  
                    (buffer-file-name))
      (save-excursion
        (byte-compile-file (buffer-file-name)))))
;;(add-hook 'after-save-hook
;;      'my-after-save-hook)


;; notify reverting
(require 'notifications)
(defun my-after-revert-hook ()
  (notifications-notify :title (format "Revert %s" (buffer-file-name))
                        :body "Check it out"
                        :urgency 'low
                        :x 1100
                        :y 100
                        :timeout -1))
(add-hook 'after-revert-hook 'my-after-revert-hook)


;; dired
(add-hook 'dired-load-hook
          #'(lambda () (load "dired-x")))
(setq dired-guess-shell-alist-user
      `(( ,(rx  "."
                (or "jpg"
                    "png"
                    "bmp"
                    "gif")
                line-end)
          "kuva")))

(provide 'config-hook)
