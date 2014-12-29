;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; fish-mode
(liby 'fish-mode
  (auto (fish-mode) "fish-mode")
  (add-to-list 'auto-mode-alist '("\\.fish\\'" . fish-mode))
  (add-to-list 'interpreter-mode-alist '("fish" . fish-mode)))


;;; init.el ends here
