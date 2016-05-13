;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'org-bullets
  (cl-defun enable-org-bullets ()
    (org-bullets-mode 1))
  (add-hook 'org-mode-hook 'enable-org-bullets))


;;; init.el ends here
