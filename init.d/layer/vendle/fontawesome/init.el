;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'fontawesome
  (command (fontawesome) "fontawesome")

  ;; (insert (propertize (fontawesome "github")
  ;;                     'face '(:family "FontAwesome")))

  (defun insert-fontawesome ()
    (interactive)
    (insert (call-interactively 'fontawesome))))

;;; init.el ends here
