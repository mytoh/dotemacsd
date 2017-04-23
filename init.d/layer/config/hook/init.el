;;; config-hook.el  -*- lexical-binding: t -*-

(cl-defun muki:emacs-startup-hook ()
  (setq debug-on-error t)
  )
;; (add-hook 'emacs-startup-hook #'muki:emacs-startup-hook)

(cl-defun muki:after-save-hook ()
  (if (string-match-p (rx (or "config" "package" "init" "lang") "-" (* anything) "el" eol)
                      (buffer-file-name))
      (save-mark-and-excursion
        (byte-compile-file (buffer-file-name)))))
;;(add-hook 'after-save-hook
;;      #'muki:after-save-hook)

;;; [[http://munepi.hatenablog.jp/entry/20101209/emacs][ファイル保存時に notify-send で通知 - I'm Just Another TeXnician.]]
(require 'notifications)
(defun notify-send-after-save-hook ()
  (cl-letf* ((curbuf (current-buffer))
             (bufname (buffer-name curbuf))
             (filename (buffer-file-name curbuf))
             (ignorelist '("recentf" "COMMIT_MSG"))
             (ignorep (member bufname ignorelist)))
    (cond (ignorep t)
          ((and filename
              (not ignorep))
           (notifications-notify :title "Emacs" :body
             (format "Saved <b>%s</b> in %s" bufname
                     (file-name-directory filename))))
          ((not ignorep)
           (notifications-notify :title "Emacs" :body
             (format "Saved %s" bufname))))))
;; (add-hook 'after-save-hook 'notify-send-after-save-hook)
;; (remove-hook 'after-save-hook 'notify-send-after-save-hook)

;; make read only when file under certain directory
;; (add-hook 'find-file-hook
;;           (clambda ()
;;             (if (and buffer-file-name
;;                                 (string-match-p (regexp-opt `(,(expand-file-name (cl-concatenate 'string user-emacs-directory "elpa"))))
;;                                               buffer-file-name)
;;                                 )
;;                 (read-only-mode 1))))


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

;; (add-hook 'focus-in-hook #'redraw-display)
