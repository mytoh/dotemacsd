;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package clipmon
  :commands (clipmon-autoinsert-toggle clipmon-mode clipmon-mode-start)
  :init
  (progn
    (setq clipmon-autoinsert-sound t)))

;;; init.el ends here
