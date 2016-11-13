;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package speechd
  :commands (speechd-speak)
  :init
  (setq speechd-out-active-drivers '(ssip)))

;;; init.el ends here
