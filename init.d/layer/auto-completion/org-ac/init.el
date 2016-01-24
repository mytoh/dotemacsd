;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:
(req 'org-ac
  (org-ac/config-default)
  (setq org-ac/ac-trigger-command-keys
        (seq-remove (lambda (c) (cl-equalp c "*"))
                    org-ac/ac-trigger-command-keys)))

;;; init.el ends here
