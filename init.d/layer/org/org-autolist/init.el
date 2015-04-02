;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; org-autolist
(liby 'org-autolist
  (command (org-autolist-mode) "org-autolist")
  (add-hook 'org-mode-hook #'org-autolist-mode))

;;; init.el ends here
