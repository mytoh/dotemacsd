;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'sml-mode
  (command (sml-mode) "sml-mode")
  (mode "\\.s\\(ml\\|ig\\)\\'" #'sml-mode))

;;; init.el ends here
