;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'perl6-mode
  (command (perl6-mode) "perl6-mode")
  (mode "\\.pm6\\'"  #'perl6-mode))

;;; init.el ends here
