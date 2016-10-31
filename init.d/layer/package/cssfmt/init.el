;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(use-package stylefmt
  :commands (stylefmt-enable-on-save)
  :init
  (progn
    (add-hook 'css-mode-hook #'stylefmt-enable-on-save)))

;;; init.el ends here
