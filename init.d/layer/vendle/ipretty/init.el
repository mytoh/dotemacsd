;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'ipretty
  (auto (ipretty-mode) "ipretty" )
  (add-hook 'emacs-lisp-mode-hook 'ipretty-mode)
  (add-hook 'lisp-interaction-mode-hook 'ipretty-mode))

;;; init.el ends here
