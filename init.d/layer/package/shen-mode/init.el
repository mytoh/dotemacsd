;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'shen-mode
  (command (shen-mode) "shen-mode")
  (mode "\\.shen\\'" #'shen-mode))

;;; init.el ends here
