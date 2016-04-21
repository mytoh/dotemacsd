;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'cssfmt
  (command (cssfmt-enable-on-save) "cssfmt")
  (set-option cssfmt-command "stylefmt")
  (add-hook 'css-mode-hook #'cssfmt-enable-on-save)
  )

;;; init.el ends here
