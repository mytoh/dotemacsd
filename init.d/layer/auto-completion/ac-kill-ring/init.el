;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'ac-kill-ring
  (add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (add-to-list 'ac-sources
                           'ac-kill-ring)))
  (add-hook 'org-mode-hook
            (lambda ()
              (add-to-list 'ac-sources
                           'ac-kill-ring))))



;;; init.el ends here
