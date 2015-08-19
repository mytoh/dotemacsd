;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'not-from-scratch
  (command (not-from-scratch) "not-from-scratch")
  (after 'not-from-scratch
      (add-to-list 'not-from-scratch/modes-alist
       (list #'emacs-lisp-mode))))

;;; init.el ends here
