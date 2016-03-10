;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'evil-cleverparens
  (command (evil-cleverparens-mode) "evil-cleverparens")
  (enable-option evil-cleverparens-use-regular-insert)
  (after 'evil-cleverparens
      (after 'evil-snipe
          (setq evil-cp-regular-bindings
           (seq-remove (lambda (p)
                         (pcase (car p)
                           ((or "s" "S")
                            t)))
                       evil-cp-regular-bindings))))
  (add-hook 'emacs-lisp-mode-hook #'evil-cleverparens-mode))

;;; init.el ends here
