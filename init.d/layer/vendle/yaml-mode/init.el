;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'yaml-mode
  (command (yaml-mode) "yaml-mode")
  (mode "\\.ya?ml$"  #'yaml-mode))


;;; init.el ends here
