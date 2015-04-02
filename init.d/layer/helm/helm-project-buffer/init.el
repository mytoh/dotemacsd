;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'helm-project-buffer
  (command (helm-project-buffer) "helm-project-buffer")
  (add-global-key "C-x b" #'helm-project-buffer))

;;; init.el ends here
