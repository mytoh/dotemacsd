;;; snipe -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-snipe ()
  (muki:init-evil-snipe-like-vim-sneak))

(cl-defun muki:init-evil-snipe-normal ()
  (req 'evil-snipe

    (enable-mode global-evil-snipe-mode)

    ;; Optional!
    (evil-snipe-replace-evil) ;; replaces evil-mode's f/F/t/T/;/, with snipe
    ;; (evil-snipe-enable-nN)    ;; enable repeating with n/N (not implemented)

    ;; not necessary if using (evil-snipe-replace-evil)
    (evil-snipe-enable-sS)    ;; enable repeating with s/S

    (setq evil-snipe-enable-highlight t)
    (setq evil-snipe-enable-incremental-highlight t)
    ))

(cl-defun muki:init-evil-snipe-like-vim-seek ()
  (req 'evil-snipe
    (enable-mode global-evil-snipe-mode)
    ;; ### Configure like vim-seek

    (setq evil-snipe-scope 'line)
    (setq evil-snipe-repeat-scope 'whole-line)
    (setq evil-snipe-count-scope nil)
    (setq evil-snipe-search-highlight nil)
    (setq evil-snipe-search-incremental-highlight nil)
    (setq evil-snipe-enable-half-cursor nil)))

(cl-defun muki:init-evil-snipe-like-vim-sneak ()
  (req 'evil-snipe
    (enable-mode global-evil-snipe-mode)
    ;; ### Configure like vim-sneak

    (evil-snipe-enable-sS)

    ;; or 'buffer, 'whole-visible or 'whole-buffer
    (setq evil-snipe-scope 'visible)
    (setq evil-snipe-repeat-scope 'whole-visible)

    (setq evil-snipe-count-scope 'vertical)  ;; not implemented yet
    (setq evil-snipe-enable-highlight t)
    (setq evil-snipe-enable-incremental-highlight t)
    (setq evil-snipe-enable-half-cursor nil)))

;;; snipe.el ends here
