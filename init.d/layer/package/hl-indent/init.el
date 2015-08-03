;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'hl-indent
  (command (hl-indent-mode) "hl-indent")
  (add-hook 'emacs-lisp-mode-hook #'hl-indent-mode))

;;; init.el ends here
