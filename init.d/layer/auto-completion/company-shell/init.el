;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(req 'company-shell
  (add-to-list 'company-backends 'company-shell)
  (add-to-list 'company-backends '((company-shell company-fish-shell))))


;;; init.el ends here
