;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; context-coloring
(liby 'context-coloring
  (auto (context-coloring-mode) "context-coloring")
  (add-hook 'js-mode-hook #'context-coloring-mode))

;;; init.el ends here
