;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; stripe-buffer
(liby 'stripe-buffer
  (auto (stripe-listify-buffer turn-on-stripe-table-mode) "stripe-buffer")
  (add-hook 'dired-mode-hook #'stripe-listify-buffer)
  (add-hook 'org-mode-hook #'turn-on-stripe-table-mode))

;;; init.el ends here
