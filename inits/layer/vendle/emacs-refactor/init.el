;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

  ;;;;; emacs-refactor
(liby 'emr
  (autoload 'emr-show-refactor-menu "emr")
  (autoload 'emr-initialize "emr")
  (define-key prog-mode-map (kbd "M-RET") #'emr-show-refactor-menu)
  (add-hook 'prog-mode-hook #'emr-initialize))


;;; init.el ends here
