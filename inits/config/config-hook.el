;;; config-hook.el  -*- lexical-binding: t -*-

(cl-defun my-after-init-hook ()
  ;; (setq debug-on-error t))
  (add-hook 'after-init-hook 'my-after-init-hook))

(cl-defun my-after-save-hook ()
  (if (string-match (rx (or "config" "package" "init" "lang") "-" (* anything) "el" eol)
                    (buffer-file-name))
      (save-excursion
        (byte-compile-file (buffer-file-name)))))
;;(add-hook 'after-save-hook
;;      'my-after-save-hook)


;;; notify reverting
(require 'notifications)
(cl-defun my-after-revert-hook ()
  (notifications-notify :title (format "Revert %s" (buffer-file-name))
                        :body "Check it out"
                        :urgency 'low
                        :x 1100
                        :y 100
                        :timeout -1))
;; (add-hook 'after-revert-hook 'my-after-revert-hook)

;; CamelCase awere editing
;; enable just in ruby-mode
(add-hook 'ruby-mode-hook 'subword-mode)
;; enable for all programming modes
(add-hook 'prog-mode-hook 'subword-mode)


(provide 'config-hook)
