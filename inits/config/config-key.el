;;; config-key.el  -*- lexical-binding: t -*-

;;;; indent
(muki:define-key lisp-interaction-mode-map "C-m" 'newline-and-indent)

;;;; help
(muki:global-set-key "C-x C-h" 'help-command)

(muki:global-set-key "C-w" 'kill-region-or-backward-kill-word)

(muki:global-set-key [remap kill-whole-line] 'smart-kill-whole-line)

(muki:global-set-key "C-<tab>" 'other-window)

;; (muki:define-global-key "p" 'package-list-packages)

;;;; default compose mail
(global-unset-key (kbd "C-x m"))

(defun muki:dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))

(muki:global-set-key "C-x C-c" 'muki:dont-kill-emacs)
(muki:global-set-key "C-x C-z" 'muki:dont-kill-emacs)

;;;; http://d.hatena.ne.jp/mooz/20100119/p1
;; C-q をプリフィックスキー化
(muki:global-set-key "C-q" (make-sparse-keymap))

;; quoted-insert は C-q C-q へ割り当て
(muki:global-set-key "C-q C-q" 'quoted-insert)

;; window-resizer は C-q C-r (resize) で
(muki:global-set-key "C-q C-r" 'muki:window-resizer)

;;; font
(muki:global-set-key "C-+" 'text-scale-adjust)
(muki:global-set-key "C--" 'text-scale-adjust)

;; C-x o にはもううんざり
(muki:global-set-key "C-q l" 'windmove-right)
(muki:global-set-key "C-q h" 'windmove-left)
(muki:global-set-key "C-q j" 'windmove-down)
(muki:global-set-key "C-q k" 'windmove-up)

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
