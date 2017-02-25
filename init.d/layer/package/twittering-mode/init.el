;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; twittering-mode
(liby 'twittering-mode
  (command (twit twittering-icon-mode muki:twittering-open-user)
           "twittering-mode")
  (setq twittering-use-master-password t)
  (setq twittering-allow-insecure-server-cert t)
  (when (display-graphic-p)
  (setq twittering-icon-mode t)
  (setq twittering-use-icon-storage t))
  (setq twittering-convert-fix-size 36)
  (setq twittering-display-remaining t)
  (setq twittering-timeline-header  "")
  (setq twittering-timeline-footer  "")

  (defface muki:twit-status-format-line
      `((t (:foreground ,(color-lighten-name (face-background 'default)
                                             20))))
    "" :group 'faces)
  (setq twittering-status-format
        "%i  %S, %RT{%FACE[bold]{%S}} %@  %FACE[shadow]{%p%f%L%r}
%FOLD[   ]{%T}
 %FACE[muki:twit-status-format-line]{────────────────────────────────────────────}")
  ;; (setq twittering-status-format "%i @%s %S %p: n %T  [%@]%r %R %f%Ln -------------------------------------------")

  (cl-letf ((file (expand-file-name "private-twittering.el"
                                    user-emacs-directory)))
    (if (file-exists-p file)
        (load file)))

  (cl-defun muki:twittering-open-user (user)
    (interactive "sUser: ")
    (twittering-visit-timeline `(user ,user)))

  ;; [[https://encrypted.google.com/search?hl=en&q=fermentation]]
  ;; Nofity-OSDを利用して新着ツイートを通知する
  (if (locate-library "notify-send" nil exec-path)
      (add-hook 'twittering-new-tweets-hook
                (lambda ()
                  (let ((n twittering-new-tweets-count))
                    (start-process "twittering-notify" nil "notify-send"
                                   "-i" "/usr/local/share/emacs/24.3/etc/images/icons/hicolor/48x48/apps/emacs.png"
                                   "New tweets"
                                   (format "You have %d new tweet%s"
                                           n (if (> n 1) "s" "")))))))



  )

;;; init.el ends here
