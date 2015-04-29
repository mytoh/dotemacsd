;;; smartparens -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'smartparens
  (req 'evil-smartparens
    (add-hook 'emacs-lisp-mode-hook #'evil-smartparens-mode)))

;;; smartparens.el ends here
