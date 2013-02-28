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
(global-set-key (kbd "C-?") 'help-command)

;; smart kill word
;; http://d.hatena.ne.jp/kiwanami/20091222/1261504543
(defun kill-region-or-backward-kill-word ()
  (interactive)
  (if (region-active-p)
      (kill-region (point) (mark))
    (backward-kill-word 1)))
(global-set-key (kbd "C-w") 'kill-region-or-backward-kill-word)


(provide 'config-key)
