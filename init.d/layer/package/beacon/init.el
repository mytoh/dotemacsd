;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'beacon
  (command (beacon-mode) "beacon")
  (hook 'emacs-lisp-mode-hook #'beacon-mode)
  (after 'beacon
      (add-to-list 'beacon-dont-blink-major-modes
       'eshell-mode)))

;;; init.el ends here
