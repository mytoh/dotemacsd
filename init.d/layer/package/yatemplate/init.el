;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'yatemplate
  (set-option yatemplate-dir
              (expand-file-name
               "init.d/templates"
               user-emacs-directory))
  (enable-mode auto-insert-mode))


;;; init.el ends here
