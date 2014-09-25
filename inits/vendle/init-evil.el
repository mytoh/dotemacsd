;;; init-evil -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'evil
  (set-option evil-emacs-state-cursor '("red" box))
  (set-option evil-normal-state-cursor '("green" box))
  (set-option evil-visual-state-cursor '("orange" box))
  (set-option evil-insert-state-cursor '("red" bar))
  (set-option evil-replace-state-cursor '("red" bar))
  (set-option evil-operator-state-cursor '("red" hollow))
  (enable-mode evil-mode))

(req 'evil-leader
  (global-evil-leader-mode)
  (evil-leader/set-leader ",")
  (enable-option evil-leader/in-all-states))

(liby 'evil-nerd-commenter
  ;; (set-opton evilnc-hotkey-comment-operator ",,")
  (req 'evil-nerd-commenter
    (define-key evil-normal-state-map ",ci" 'evilnc-comment-or-uncomment-lines)
    (define-key evil-normal-state-map ",cl" 'evilnc-comment-or-uncomment-to-the-line)
    (define-key evil-normal-state-map ",cc" 'evilnc-copy-and-comment-lines)
    (define-key evil-normal-state-map ",cp" 'evilnc-comment-or-uncomment-paragraphs)
    (define-key evil-normal-state-map ",cr" 'comment-or-uncomment-region)
    ))

(req 'evil-surround
  (enable-mode global-evil-surround-mode))

(provide 'init-evil)


;;; init-evil.el ends here
