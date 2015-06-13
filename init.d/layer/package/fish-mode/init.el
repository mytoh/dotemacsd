;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; fish-mode
(liby 'fish-mode
  (command (fish-mode) "fish-mode")
  (cl-pushnew '("\\.fish\\'" . fish-mode) auto-mode-alist)
  (cl-pushnew '("fish" . fish-mode) interpreter-mode-alist))


;;; init.el ends here
