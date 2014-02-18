;;; config-key.el  -*- lexical-binding: t -*-

;;;; indent
(define-key lisp-interaction-mode-map (kbd "C-m") 'newline-and-indent)

;;;; help
(global-set-key (kbd "C-x C-h") 'help-command)

(global-set-key (kbd "C-w") 'kill-region-or-backward-kill-word)

(global-set-key [remap kill-whole-line] 'smart-kill-whole-line)

(muki:define-global-key (kbd "p") 'package-list-packages)

;;;; default compose mail
(define-key global-map (kbd "C-x m") nil)

(defun muki:dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))

(define-key global-map (kbd "C-x C-c") 'muki:dont-kill-emacs)

;;;; http://d.hatena.ne.jp/mooz/20100119/p1
;; C-q をプリフィックスキー化
(define-key global-map (kbd "C-q") (make-sparse-keymap))

;; quoted-insert は C-q C-q へ割り当て
(global-set-key (kbd "C-q C-q") 'quoted-insert)

;; window-resizer は C-q C-r (resize) で
(global-set-key (kbd "C-q C-r") 'muki:window-resizer)

;;; font
(global-set-key (kbd "C-+") 'text-scale-adjust)
(global-set-key (kbd "C--") 'text-scale-adjust)

;; C-x o にはもううんざり
(global-set-key (kbd "C-q l") 'windmove-right)
(global-set-key (kbd "C-q h") 'windmove-left)
(global-set-key (kbd "C-q j") 'windmove-down)
(global-set-key (kbd "C-q k") 'windmove-up)

;; http://d.hatena.ne.jp/khiker/20100119/window_resize
(defun muki:window-resizer ()
  "Control window size and position."
  (interactive)
  (let ((window-obj (selected-window))
        (current-width (window-width))
        (current-height (window-height))
        (dx (if (= (nth 0 (window-edges)) 0) 1
              -1))
        (dy (if (= (nth 1 (window-edges)) 0) 1
              -1))
        action c)
    (catch 'end-flag
      (while t
        (setq action
              (read-key-sequence-vector (format "size[%dx%d]"
                                                (window-width)
                                                (window-height))))
        (setq c (aref action 0))
        (cond ((= c ?l)
               (enlarge-window-horizontally dx))
              ((= c ?h)
               (shrink-window-horizontally dx))
              ((= c ?j)
               (enlarge-window dy))
              ((= c ?k)
               (shrink-window dy))
              ;; otherwise
              (t
               (let ((last-command-char (aref action 0))
                     (command (key-binding action)))
                 (when command
                   (call-interactively command)))
               (message "Quit")
               (throw 'end-flag t)))))))

(provide 'config-key)
