;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'adoc-mode
  (command (adoc-mode) "adoc-mode")
  (mode "\\.adoc\\'" #'adoc-mode))

;;; init.el ends here
