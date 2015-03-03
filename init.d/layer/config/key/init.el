;;; config-key.el  -*- lexical-binding: t -*-

;;;; indent
(add-key lisp-interaction-mode-map "C-m" #'newline-and-indent)

;;;; help
(define-key global-map "\M-?" #'help-for-help) ; ヘルプ

(add-global-key "C-w" #'kill-region-or-backward-kill-word)

(add-global-key [remap kill-whole-line] #'smart-kill-whole-line)

(add-global-key "C-<tab>" #'other-window)

(global-set-key (kbd "M-/") #'hippie-expand)

;; (muki:define-launcher-key "p" 'package-list-packages)

;;;; disable compose mail
(global-unset-key (kbd "C-x m"))

(defun muki:dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))

(add-global-key "C-x C-c" #'muki:dont-kill-emacs)
(add-global-key "C-x C-z" #'muki:dont-kill-emacs)

;;;; http://d.hatena.ne.jp/mooz/20100119/p1
;; C-q をプリフィックスキー化
(add-global-key "C-q" (make-sparse-keymap))

;; quoted-insert は C-q C-q へ割り当て
(add-global-key "C-q C-q" #'quoted-insert)

;; window-resizer は C-q C-r (resize) で
(add-global-key "C-q C-r" #'muki:window-resizer)

;;; font
(add-global-key "C-+" #'text-scale-adjust)
(add-global-key "C--" #'text-scale-adjust)

;; C-x o にはもううんざり
(add-global-key "C-q l" #'windmove-right)
(add-global-key "C-q h" #'windmove-left)
(add-global-key "C-q j" #'windmove-down)
(add-global-key "C-q k" #'windmove-up)

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

;;;; Copied from [[http://www.reddit.com/r/emacs/comments/25v0eo/you_emacs_tips_and_tricks/chldury]]
;;;; [[http://pages.sachachua.com/.emacs.d/Sacha.html#sec-1-8-21]]

(cl-defun muki:vsplit-last-buffer (prefix)
  "Split the window vertically and display the previous buffer."
  (interactive "p")
  (split-window-vertically)
  (other-window 1 nil)
  (unless prefix
    (switch-to-next-buffer)))

(cl-defun muki:hsplit-last-buffer (prefix)
  "Split the window horizontally and display the previous buffer."
  (interactive "p")
  (split-window-horizontally)
  (other-window 1 nil)
  (unless prefix (switch-to-next-buffer)))

(add-global-key "C-x 2" #'muki:vsplit-last-buffer)
(add-global-key "C-x 3" #'muki:hsplit-last-buffer)
