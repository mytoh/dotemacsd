;;; snipe -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-snipe ()
  (muki:init-evil-snipe-normal))

(cl-defun muki:init-evil-snipe-normal ()
  (req  'evil-snipe
    (setq evil-snipe-scope 'whole-visible
          evil-snipe-enable-highlight t
          evil-snipe-enable-incremental-highlight t
          evil-snipe-enable-half-cursor nil
          evil-snipe-show-prompt nil
          evil-snipe-smart-case t)
    (setq evil-snipe-repeat-scope 'whole-buffer)

    (add-hook 'prog-mode-hook 'evil-snipe-mode)
    (add-hook 'text-mode-hook 'evil-snipe-mode)

    (add-hook 'prog-mode-hook
              (lambda () (enable-mode evil-snipe-override-mode)))
    (add-hook 'text-mode-hook
              (lambda () (enable-mode evil-snipe-override-mode)))))

(cl-defun muki:init-evil-snipe-like-vim-seek ()
  (req 'evil-snipe
    (setq evil-snipe-scope 'line)
    (setq evil-snipe-repeat-scope 'whole-line)
    (setq evil-snipe-count-scope nil)
    (setq evil-snipe-search-highlight nil)
    (setq evil-snipe-search-incremental-highlight nil)))

(cl-defun muki:init-evil-snipe-like-vim-sneak ()
  (req 'evil-snipe

    (setq evil-snipe-repeat-keys t)

    ;; or 'buffer, 'whole-visible or 'whole-buffer
    (setq evil-snipe-scope 'visible)
    (setq evil-snipe-repeat-scope 'whole-visible)

    (setq evil-snipe-count-scope 'vertical)  ;; not implemented yet
    (setq evil-snipe-enable-highlight t)
    (setq evil-snipe-enable-incremental-highlight t)))

(cl-defun muki:init-evil-snipe-spacemacs ()
  (req  'evil-snipe
    (setq evil-snipe-scope 'whole-buffer
          evil-snipe-enable-highlight t
          evil-snipe-enable-incremental-highlight t
          evil-snipe-enable-half-cursor nil
          evil-snipe-show-prompt nil
          evil-snipe-smart-case t)
    (setq evil-snipe-repeat-scope 'whole-buffer
          evil-snipe-override-evil t)
    (add-hook 'prog-mode-hook 'evil-snipe-mode)
    (add-hook 'text-mode-hook 'evil-snipe-mode)))

(muki:init-evil-snipe)

;;; snipe.el ends here
