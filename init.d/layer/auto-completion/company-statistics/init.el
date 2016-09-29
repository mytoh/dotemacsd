;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'company-statistics
  (command (company-statistics-mode) "company-statistics")
  (after 'company
    (company-statistics-mode)))

;;; init.el ends here
