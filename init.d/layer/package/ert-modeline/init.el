;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'ert-modeline
  (command (ert-modeline-mode)
           "ert-modeline")
  (add-hook 'emacs-lisp-mode-hook #'ert-modeline))

;;; init.el ends here
