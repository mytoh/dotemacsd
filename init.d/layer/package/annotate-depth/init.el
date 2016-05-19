;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'annotate-depth
  (command (annotate-depth-mode) "annotate-depth")
  (add-hook 'prog-mode-hook #'annotate-depth-mode))

;;; init.el ends here
