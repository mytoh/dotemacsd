;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(use-package highlight-indent-guides
  :commands (highlight-indent-guides-mode)
  :init
  ;; (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-method 'column)
  ;; (setq highlight-indent-guides-responsive 'top)
  ;; (setq highlight-indent-guides-delay 0.3) ; default 0.1
  ;; (setq highlight-indent-guides-character ?\|)
  ;; (add-hook 'prog-mode-hook #'highlight-indent-guides)
  )

;;; init.el ends here
