;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'company-quickhelp
  (command (company-quickhelp-mode) "company-quickhelp")
  (after 'company
      (company-quickhelp-mode 1)))

;;; init.el ends here
