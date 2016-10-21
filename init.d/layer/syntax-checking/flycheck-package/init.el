;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; flycheck
(use-package flycheck-package
  :commands (flycheck-package-setup)
  :after (flycheck)
  :config
  (flycheck-package-setup))

;;; init.el ends here
