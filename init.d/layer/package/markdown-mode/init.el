;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; markdown
(liby 'markdown-mode
  (command (gfm-mode markdown-mode) "markdown-mode")
  (mode "\\.md\\'" 'gfm-mode)
  (mode "\\.markdown\\'" 'gfm-mode)
  (mode "README\\.md\\'"  'gfm-mode))


;;; init.el ends here
