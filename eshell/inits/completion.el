;;; completion -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(defun pcomplete/sudo ()
  (let ((prec (pcomplete-arg 'last -1)))
    (cond ((string= "sudo" prec)
           (while (pcomplete-here*
                   (funcall pcomplete-command-completion-function)
                   (pcomplete-arg 'last) t))))))

(defun pcomplete/please ()
  (let ((prec (pcomplete-arg 'last -1)))
    (cond ((string= "please" prec)
           (while (pcomplete-here*
                   (funcall pcomplete-command-completion-function)
                   (pcomplete-arg 'last) t))))))

;;; completion.el ends here
