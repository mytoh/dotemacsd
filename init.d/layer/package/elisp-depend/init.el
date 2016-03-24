;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(require 'muki-lib)

(req 'elisp-depend
  (command (elisp-depend-insert-require)
           "elisp-depend")
  (set-option elisp-depend-directory-list
              `(,(file-name-as-directory
                  (muki:expand-path-huone "ohjelmat/emacs/share/emacs"))
                 ,(file-name-as-directory
                   (muki:expand-path-huone "ateljee"))))
  (colle:each
   (lambda (d)
     (cl-pushnew d elisp-depend-special-explorers))
   `((cl-defmacro elisp-depend-defun-form->sym-list)
     (cl-defun elisp-depend-defun-form->sym-list)
     (cl-letf elisp-depend-let-form->sym-list)
     (cl-letf* elisp-depend-let-form->sym-list)
     (req ,(lambda (sexp)
             (elisp-depend-get-syms-recurse sexp 2)))))
  )


;;; init.el ends here
