;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'outline-magic
  (add-hook 'outline-mode-hook
            (lambda ()
              (require 'outline-cycle)))

  (add-hook 'outline-minor-mode-hook
            (lambda ()
              (require 'outline-magic)
              (define-key outline-minor-mode-map [(f10)] 'outline-cycle))))


;;; init.el ends here
