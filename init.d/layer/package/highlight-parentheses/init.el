;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-parentheses
  (command (highlight-parentheses-mode) "highlight-parentheses")
  (hook 'emacs-lisp-mode-hook #'highlight-parentheses-mode))

;;; init.el ends here
