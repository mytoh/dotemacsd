;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'outline-magic
  (command (outline-cycle) "outline-magic")

  (add-hook 'outline-mode-hook
            (clambda ()
                (define-key outline-minor-mode-map [(f10)] #'outline-cycle)))
  (add-hook 'outline-minor-mode-hook
            (clambda ()
                (define-key outline-minor-mode-map [(f10)] #'outline-cycle))))

(req 'outline-magic)

;;; init.el ends here
