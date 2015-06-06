;;; nerd-commenter -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-nerd-commenter ()
  (liby 'evil-nerd-commenter
    ;; (set-opton evilnc-hotkey-comment-operator ",,")
    (req 'evil-nerd-commenter
      (add-key evil-normal-state-map ",ci" #'evilnc-comment-or-uncomment-lines)
      (add-key evil-normal-state-map ",cl" #'evilnc-comment-or-uncomment-to-the-line)
      (add-key evil-normal-state-map ",cc" #'evilnc-copy-and-comment-lines)
      (add-key evil-normal-state-map ",cp" #'evilnc-comment-or-uncomment-paragraphs)
      (add-key evil-normal-state-map ",cr" #'comment-or-uncomment-region))))

;;; nerd-commenter.el ends here
