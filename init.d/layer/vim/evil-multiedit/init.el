;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package evil-multiedit
  :after evil
  :config

  (let ((map evil-visual-state-map))
    (define-key map (kbd "M-d")   #'evil-multiedit-match-and-next)
    (define-key map (kbd "M-D")   #'evil-multiedit-match-and-prev)
    (define-key map (kbd "C-M-d") #'evil-multiedit-restore)
    (define-key map (kbd "R")     #'evil-multiedit-match-all))

  (let ((me-map  evil-multiedit-state-map)
        (mei-map evil-multiedit-insert-state-map))
    (define-key me-map (kbd "M-d") #'evil-multiedit-match-and-next)
    (define-key me-map (kbd "M-D") #'evil-multiedit-match-and-prev)
    (define-key me-map (kbd "RET") #'evil-multiedit-toggle-or-restrict-region)

    (dolist (map (list me-map mei-map))
      (define-key map (kbd "C-n") #'evil-multiedit-next)
      (define-key map (kbd "C-p") #'evil-multiedit-prev)))
  )

;;; init.el ends here
