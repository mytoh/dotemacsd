;;; snipe -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-snipe ()
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

;;; snipe.el ends here
