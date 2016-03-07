;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'mic-paren
  (command (paren-toggle-open-paren-context)
           "mic-paren")

  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (paren-toggle-open-paren-context 1)))
  
  )

;;; init.el ends here
