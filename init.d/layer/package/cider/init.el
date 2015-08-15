;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'cider
  ;; (command (cider-mode) "cider")
  (add-hook 'cider-mode-hook #'eldoc-mode))

;;; init.el ends here
