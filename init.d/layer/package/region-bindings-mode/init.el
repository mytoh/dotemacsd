;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(req 'region-bindings-mode

  (region-bindings-mode-enable)

  (define-key region-bindings-mode-map "a" 'mc/mark-all-like-this)
  (define-key region-bindings-mode-map "p" 'mc/mark-previous-like-this)
  (define-key region-bindings-mode-map "n" 'mc/mark-next-like-this)
  (define-key region-bindings-mode-map "m" 'mc/mark-more-like-this-extended))


;;; init.el ends here
