
;; company-in-string-or-comment
(defun muki:in-string-or-comment ()
  (let ((ppss (syntax-ppss)))
    (or (car (setq ppss (nthcdr 3 ppss)))
        (car (setq ppss (cdr ppss)))
        (nth 3 ppss))))

(cl-defun muki:lisp-cleanup ()
  (interactive)
  (save-excursion
    (goto-char (point-min))

    (save-excursion
      (while (re-search-forward ")\s+)" nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "))"))))
    (save-excursion
      (while (re-search-forward "(\s+("nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "(("))))

    (save-excursion
      (while (re-search-forward (rx (group (+ (or word (in "?" "." "-")))) symbol-end (+ space) ")") nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "\\1)"))))
    (save-excursion
      (while (re-search-forward (rx "(" (+ space) symbol-start (group (+ (or word (in "?" "." "-"))))) nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "(\\1"))))

    (save-excursion
      (while (re-search-forward (rx (group (+ word)) (+ space) "(") nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "\\1 ("))))
    (save-excursion
      (while (re-search-forward (rx ")" (group (+ word)) (+ space)) nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match ") \\1"))))

    (save-excursion
      (while (re-search-forward (rx (group (in "\"")) (+ space) ")") nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "\\1)"))))
    (save-excursion
      (while (re-search-forward (rx "(" (+ space) (group (in "\""))) nil t)
        (when (not (muki:in-string-or-comment))
          (replace-match "(\\1"))))))

(provide 'lang-lisp)
