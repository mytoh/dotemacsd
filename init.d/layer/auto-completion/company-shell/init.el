;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(req 'company-shell
  (after 'company
    (add-to-list 'company-backends 'company-shell)))


;;; init.el ends here
