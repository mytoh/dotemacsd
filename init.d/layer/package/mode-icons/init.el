;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package mode-icons
  :init
  (progn
    (enable-option mode-icons-generate-font-xpms)
    (enable-option mode-icons-generate-emoji-xpms)
    (enable-option mode-icons-generate-font-grayscale))
  :config
  (progn
    (mode-icons-mode)))

;;; init.el ends here
