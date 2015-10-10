;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'evil-mc
  " [[https://github.com/syl20bnr/spacemacs/commit/31229cb1f5a556a1d368658aa52b0d8482d1c04e]]
g r m to mark all
g r u to remove cursors
g r p to pause cursors
g r r to resume
g r h to add a cursor at point (cursors must be paused first)"
  (command (evil-mc-mode) "evil-mc")
  (hook 'emacs-lisp-mode-hook #'evil-mc-mode))

;;; init.el ends here
