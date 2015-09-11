;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'srefactor
  (command (srefactor-lisp-format-buffer
            srefactor-lisp-format-defun
            srefactor-lisp-format-sexp
            srefactor-lisp-one-line)
           "srefactor"))

;;; init.el ends here
