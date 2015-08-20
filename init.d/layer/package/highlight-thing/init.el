;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-thing
  (command (highlight-thing-mode) "highlight-thing")
  (add-hook 'emacs-lisp-mode-hook #'highlight-thing-mode))

;;; init.el ends here
