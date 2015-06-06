;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(liby 'vim-empty-lines-mode
  (command (vim-empty-lines-mode) "vim-empty-lines-mode")
  (add-hook 'prog-mode-hook #'vim-empty-lines-mode))

;;; init.el ends here
