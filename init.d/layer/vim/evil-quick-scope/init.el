;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-quick-scope
  (command (evil-quick-scope-mode) "evil-quick-scope")
  (add-hook 'prog-mode-hook #'evil-quick-scope-mode))

;;; init.el ends here
