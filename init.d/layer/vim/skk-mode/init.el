;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:turn-off-skk-in-evil ()
  (when (and (fboundp 'skk-mode-off)
             skk-mode)
    (skk-mode-off)))

(hook 'evil-insert-state-exit-hook
      #'muki:turn-off-skk-in-evil)

;;; init.el ends here
