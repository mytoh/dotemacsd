;;; config-key.el  -*- lexical-binding: t -*-

;;;; indent
(define-key lisp-interaction-mode-map (kbd "C-m") 'newline-and-indent)

;;;; help
(global-set-key (kbd "C-x C-h") 'help-command)


(global-set-key (kbd "C-w") 'kill-region-or-backward-kill-word)


(global-set-key [remap kill-whole-line] 'smart-kill-whole-line)

(mytoh:define-global-key (kbd "p") #'package-list-packages)

(defun mytoh:dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))

(define-key global-map (kbd "C-x C-c") #'mytoh:dont-kill-emacs)

(provide 'config-key)
