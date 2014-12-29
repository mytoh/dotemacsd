;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; org-autolist
(liby 'org-autolist
  (auto (org-autolist-mode) "org-autolist")
  (add-hook 'org-mode-hook (lambda () (org-autolist-mode))))

;;; init.el ends here
