;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'fill-column-indicator
  (command (fci-mode) "fill-column-indicator")
  (add-hook 'prog-mode-hook #'fci-mode)
  ;; (add-hook 'text-mode-hook #'fci-mode)
  )

;;; init.el ends here
