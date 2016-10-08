;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package help-mode
  :init
  (after 'evil
    (evil-set-initial-state 'help-mode 'motion)))

;;; init.el ends here
