;;; exchange -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-exchange ()
  (req 'evil-exchange
    (evil-exchange-install)))

(muki:init-evil-exchange)

;;; exchange.el ends here
