;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'csv-mode
  (command (csv-mode) "csv-mode")
  (mode "\\.csv\\'" #'csv-mode))

;;; init.el ends here
