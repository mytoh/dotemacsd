;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'ac-capf
  (add-hook 'emacs-lisp-mode-hook
            (lambda () (add-to-list 'ac-sources
                               'ac-source-capf))))

;;; init.el ends here
