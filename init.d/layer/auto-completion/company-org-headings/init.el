;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:
(use-package company-org-headings
  :config
  (set-option company-org-headings/search-directory
              (file-name-as-directory
               (expand-file-name
                ".org" (getenv "HOME"))))
  (add-hook 'org-mode-hook
            (lambda () (setq-local company-backends
                              '((company-org-headings))))))

;;; init.el ends here
