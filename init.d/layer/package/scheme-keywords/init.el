;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; scheme-keywords
(liby 'scheme-keywords
  (command (scheme-keywords-mode) "scheme-keywords")
  (add-hook 'scheme-mode-hook #'scheme-keywords-mode))

;;; init.el ends here
