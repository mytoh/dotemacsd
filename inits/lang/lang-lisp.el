
;; company-in-string-or-comment
(defun muki:in-string-or-comment ()
  (let ((ppss (syntax-ppss)))
    (or (car (setq ppss (nthcdr 3 ppss)))
        (car (setq ppss (cdr ppss)))
        (nth 3 ppss))))

(cl-defun muki:lisp-cleanup-support (regex replace)
  (save-excursion
    (while (re-search-forward regex nil t)
      (when (not (muki:in-string-or-comment))
        (replace-match replace)))))

(cl-defun muki:lisp-cleanup ()
  (interactive)
  (save-excursion
    (goto-char (point-min))

    (muki:lisp-cleanup-support ")\s+)"  "))")
    (muki:lisp-cleanup-support "(\s+(" "((")

    (muki:lisp-cleanup-support
     (rx (group (+ (or word (in "?" "." "-")))) symbol-end (+ space) ")")
     "\\1)")
    (muki:lisp-cleanup-support
     (rx "(" (+ space) symbol-start (group (+ (or word (in "?" "." "-")))))
     "(\\1")

    (muki:lisp-cleanup-support
     (rx (group (+ word)) (+ space) "(")
     "\\1 (")
    (muki:lisp-cleanup-support
     (rx ")" (group (+ word)) (+ space))
     ") \\1")

    (muki:lisp-cleanup-support
     (rx (group (in "\"")) (+ space) ")")
     "\\1)")
    (muki:lisp-cleanup-support
     (rx "(" (+ space) (group (in "\"")))
     "(\\1")

    ))

(provide 'lang-lisp)
