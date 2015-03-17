;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'highlight-thing
  (setq highlight-thing-excluded-major-modes
        '(eshell-mode org-mode eww-mode))
  (highlight-thing-mode))

;;; init.el ends here
