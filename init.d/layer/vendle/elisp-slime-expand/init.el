;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'elisp-slime-expand
  (auto (elisp-slime-expand-mode) "elisp-slime-expand")
  (add-hook 'emacs-lisp-mode-hook #'elisp-slime-expand-mode))

;;; init.el ends here
