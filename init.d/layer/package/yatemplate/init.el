;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'yatemplate
  (yatemplate-fill-alist)
  (set-option yatemplate-dir
              (expand-file-name
               "init.d/templates"
               user-emacs-directory))
  (enable-mode auto-insert-mode)
  (disable-option auto-insert-query))


;;; init.el ends here
