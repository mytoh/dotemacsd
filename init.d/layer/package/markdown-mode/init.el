;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; markdown
(use-package markdown-mode
  :commands (gfm-mode markdown-mode)
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)
         ("README\\.md\\'" . gfm-mode)))


;;; init.el ends here
