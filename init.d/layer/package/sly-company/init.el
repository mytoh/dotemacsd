;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'sly-company
  (command (sly-company-mode) "sly-company")
  (add-hook 'sly-mode-hook #'sly-company-mode))

;;; init.el ends here
