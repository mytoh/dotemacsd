;;; -*- coding: utf-8 -*-

;; make prefix key
(define-prefix-command 'my-original-map)
(global-set-key (kbd "C-q") 'my-original-map)
(define-key my-original-map (kbd "C-q") 'quoted-insert)

;; no split
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; indent
(define-key lisp-interaction-mode-map (kbd "C-m") 'newline-and-indent)
(define-key emacs-lisp-mode-map (kbd "C-m") 'newline-and-indent)

;; help
(global-set-key (kbd "C-x C-h") 'help-command)

;; smart kill word
;; http://d.hatena.ne.jp/kiwanami/20091222/1261504543
(cl-defun kill-region-or-backward-kill-word ()
  (interactive)
  (if (region-active-p)
      (kill-region (point) (mark))
    (backward-kill-word 1)))
(global-set-key (kbd "C-w") 'kill-region-or-backward-kill-word)

;; kill whole line
(cl-defun smart-kill-whole-line (&optional arg)
  "A simple wrapper around `kill-whole-line' that respects indentation"
  (interactive "P")
  (kill-whole-line arg)
  (back-to-indentation))
(global-set-key [remap kill-whole-line] 'smart-kill-whole-line)


;;; my global map
(defun mytoh:define-global-key (key func)
  "define personal key mappings"
  (cl-letf* ((prefix (kbd "C-c e"))
             (keymap (concat prefix key)))
    (define-key global-map keymap func)))


(mytoh:define-global-key (kbd "p") #'package-list-packages)



(provide 'config-key)
