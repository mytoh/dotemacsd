;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-backquotes
  (auto (highlight-backquotes-mode) "highlight-backquotes")
  (add-hook 'emacs-lisp-mode-hook #'highlight-backquotes-mode))

;;; init.el ends here
