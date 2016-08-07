;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'uuid
  (command (uuid-mode) "uuid")
  (add-hook 'clojure-mode-hook #'uuid-mode)
  (add-hook 'emacs-lisp-mode-hook #'uuid-mode)
  )

;;; init.el ends here
