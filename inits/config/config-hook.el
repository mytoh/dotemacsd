;;; config-hook.el  -*- lexical-binding: t -*-

(cl-defun muki:after-init-hook ()
  ;; (setq debug-on-error t))
  (add-hook 'after-init-hook 'muki:after-init-hook))

(cl-defun muki:after-save-hook ()
  (if (string-match (rx (or "config" "package" "init" "lang") "-" (* anything) "el" eol)
                    (buffer-file-name))
      (save-excursion
        (byte-compile-file (buffer-file-name)))))
;;(add-hook 'after-save-hook
;;      'muki:after-save-hook)


;;; notify reverting
(require 'notifications)
(cl-defun muki:after-revert-hook ()
  (notifications-notify :title (format "Revert %s" (buffer-file-name))
                        :body "Check it out"
                        :urgency 'low
                        :x 1100
                        :y 100
                        :timeout -1))
;; (add-hook 'after-revert-hook 'muki:after-revert-hook)

(cl-defun muki:init-finish-notify ()
  (notifications-notify :title "Emacs"
                        :body "Initialization finished"
                        :urgency 'low
                        :x 1100
                        :y 100
                        :timeout 5000))
(add-hook 'after-init-hook 'muki:init-finish-notify)

;; make read only when file under certain directory
;; (add-hook 'find-file-hook
;;           (lambda ()
;;             (if (and buffer-file-name
;;                                 (string-match (regexp-opt `(,(expand-file-name (cl-concatenate 'string user-emacs-directory "elpa"))))
;;                                               buffer-file-name)
;;                                 )
;;                 (read-only-mode 1))))

;;; customize file
(add-hook 'after-init-hook
          (lambda ()
            (setq custom-file (locate-user-emacs-file "custom.el"))
            (load (file-name-sans-extension custom-file) t t)))

;; CamelCase awere editing
;; enable just in ruby-mode
(add-hook 'ruby-mode-hook 'subword-mode)
;; enable for all programming modes
(add-hook 'prog-mode-hook 'subword-mode)



(provide 'config-hook)
