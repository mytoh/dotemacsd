;;; util.el -*- lexical-binding: t -*-

(eval-when-compile (require 'cl-lib)) ; don't use cl.el

(defun helm-alku-string-longest (strs)
  (cl-reduce
   (lambda (a b)
     (cl-letf* ((al (string-width a))
                (bl (string-width b)))
       (if (< al bl)  b a)))
   strs))

(defun helm-alku-string-pad (str longest)
  (cl-letf ((len (- longest (string-width str)))
            (offset 4))
    (cl-concatenate 'string
                    str
                    (make-string (+ offset len) ? ))))

(provide 'helm-alku-util)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
