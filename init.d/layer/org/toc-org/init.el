;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(liby 'toc-org
  (command (toc-org-enable) "toc-org")
  (add-hook 'org-mode-hook #'toc-org-enable))

;;; init.el ends here
