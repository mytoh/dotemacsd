;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package emacs-home
  :config
  (emacs-home-set-favorite-files (list '("t" "~/.org/todo.org")
                                       '("i" "~/.org/inbox.org")))
  (emacs-home-set-favorite-functions (list '("s" snake)
                                           '("c" calc))))

;;; init.el ends here
