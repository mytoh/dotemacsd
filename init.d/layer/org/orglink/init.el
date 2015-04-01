;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'orglink
  (auto (orglink-mode) "orglink")
  (hook 'emacs-lisp-mode-hook #'orglink-mode))

;;; init.el ends here
