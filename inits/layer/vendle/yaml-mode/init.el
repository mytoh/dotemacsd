;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'yaml-mode
  (auto (yaml-mode) "yaml-mode")
  (add-to-list 'auto-mode-alist '("\\.ya?ml$" . #'yaml-mode)))


;;; init.el ends here
