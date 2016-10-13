;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'beacon
  (command (beacon-mode) "beacon")
  (hook 'emacs-lisp-mode-hook #'beacon-mode)
  (after 'beacon
    (cl-pushnew 'eshell-mode
                beacon-dont-blink-major-modes)))

;;; init.el ends here
