;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'colle)

(liby 'smartparens
  (liby 'evil-cleverparens
    (command (evil-cleverparens-mode) "evil-cleverparens")
    (enable-option evil-cleverparens-use-regular-insert)
    (after 'evil-cleverparens
      (after 'evil-snipe
        (setq evil-cp-regular-bindings
              (colle:remove (pcase-lambda (`(,key . ,_))
                           (pcase key
                             ((or "s" "S")
                              t)))
                         evil-cp-regular-bindings))))
    (add-hook 'emacs-lisp-mode-hook #'evil-cleverparens-mode)))

;;; init.el ends here
