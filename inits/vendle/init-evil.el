;;; init-evil -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'evil
  (set-option evil-emacs-state-cursor '("red" box)
              evil-normal-state-cursor '("green" box)
              evil-visual-state-cursor '("orange" box)
              evil-insert-state-cursor '("red" bar)
              evil-replace-state-cursor '("red" bar)
              evil-operator-state-cursor '("red" hollow))
  (disable-option evil-move-cursor-back)
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

(req 'evil-matchit
  (enable-mode global-evil-matchit-mode))

(provide 'init-evil)


;;; init-evil.el ends here
