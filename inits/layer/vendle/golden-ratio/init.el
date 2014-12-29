;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; golden-ratio
(req 'golden-ratio
  (enable-mode golden-ratio-mode)
  (add-to-list 'golden-ratio-exclude-modes 'eshell-mode)
  (add-to-list 'golden-ratio-exclude-modes 'magit-status-mode)
  (add-to-list 'golden-ratio-exclude-modes 'magit-log-mode)
  (add-to-list 'golden-ratio-exclude-modes 'magit-mode))

;;; init.el ends here
