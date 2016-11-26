;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package avy
  :defer t
  :commands (avy-pop-mark)
  :preface
  (progn
    (defun muki:avy-goto-hoarder-register()
      (interactive)
      (avy--generic-jump "hoarder:\\(fetch\\|register\\)\s+" nil 'pre))
    )
  :init
  (progn
    (setq avy-all-windows 'all-frames)
    (setq avy-background t)
    ;; for dvorak
    (setq-default avy-keys '(?a ?o ?e ?u ?h ?t ?n ?s))))


;;; init.el ends here
