;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; bqlist-lock
(liby 'bqlist-lock
  (command (bqlist-lock-enable) "bqlist-lock")
  (hook 'emacs-lisp-mode-hook #'bqlist-lock-enable))


;;; init.el ends here
