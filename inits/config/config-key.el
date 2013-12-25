;;; config-key.el  -*- lexical-binding: t -*-
;; make prefix key
(define-prefix-command 'my-original-map)
(global-set-key (kbd "C-q") 'my-original-map)
(define-key my-original-map (kbd "C-q") 'quoted-insert)

;; no split
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; indent
(define-key lisp-interaction-mode-map (kbd "C-m") 'newline-and-indent)

;; help
(global-set-key (kbd "C-x C-h") 'help-command)


(global-set-key (kbd "C-w") 'kill-region-or-backward-kill-word)


(global-set-key [remap kill-whole-line] 'smart-kill-whole-line)

(mytoh:define-global-key (kbd "p") #'package-list-packages)

(provide 'config-key)
