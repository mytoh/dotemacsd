;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'highlight-unique-symbol
  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (highlight-unique-symbol t))))

;;; init.el ends here
