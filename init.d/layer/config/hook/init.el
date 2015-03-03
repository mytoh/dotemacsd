;;; config-hook.el  -*- lexical-binding: t -*-

(cl-defun muki:after-init-hook ()
  (setq debug-on-error t)
  )
;; (add-hook 'after-init-hook #'muki:after-init-hook)

(cl-defun muki:after-save-hook ()
  (if (string-match (rx (or "config" "package" "init" "lang") "-" (* anything) "el" eol)
                    (buffer-file-name))
      (save-excursion
        (byte-compile-file (buffer-file-name)))))
;;(add-hook 'after-save-hook
;;      #'muki:after-save-hook)


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
;; (add-hook 'after-init-hook #'muki:init-finish-notify)

;; make read only when file under certain directory
;; (add-hook 'find-file-hook
;;           (clambda ()
;;             (if (and buffer-file-name
;;                                 (string-match (regexp-opt `(,(expand-file-name (cl-concatenate 'string user-emacs-directory "elpa"))))
;;                                               buffer-file-name)
;;                                 )
;;                 (read-only-mode 1))))

;;; customize file
(defun-add-hook muki:set-custom-el-file (after-init-hook)
  (setq custom-file (locate-user-emacs-file "custom.el"))
  (load (file-name-sans-extension custom-file) t t))


;; ;;; banish mouse pointer
;; (cl-defun banish ()
;;   (interactive)
;;   (set-mouse-position (selected-frame) 1000 1000))
;; (cl-defun my-focus-in-hook ()
;;   (banish))
;; (add-hook 'focus-in-hook #'my-focus-in-hook)

;; CamelCase awere editing
;; enable just in ruby-mode
(add-hook 'ruby-mode-hook #'subword-mode)
;; enable for all programming modes
(add-hook 'prog-mode-hook #'subword-mode)
