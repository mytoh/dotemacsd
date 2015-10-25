;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:
(liby 'company
  (liby 'company-org-headings
    (set-option company-org-headings/search-directory
                (file-name-as-directory
                 (expand-file-name
                  ".org" (getenv "HOME"))))
    (add-hook 'org-mode-hook
       (lambda () (req 'company-org-headings
               (setq-local company-backends
                           '((company-org-headings))))))))

;;; init.el ends here
