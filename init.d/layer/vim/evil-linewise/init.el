;;; linewise -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-linewise ()
  ;; "[ SPC" 'evil-linewise-blank-lines-above
  ;; "] SPC" 'evil-linewise-blank-lines-below
  ;; "[ e" 'evil-linewise-move-text-up
  ;; "] e" 'evil-linewise-move-text-down
  ;; "[ p" 'evil-linewise-paste-newline-above
  ;; "] p" 'evil-linewise-paste-newline-below
  (req 'evil-linewise))

;;; linewise.el ends here
