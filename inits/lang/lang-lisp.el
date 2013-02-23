
(defun minun:lisp-cleanup ()
  (interactive)
  (save-excursion
    ;; "))" -> "))"
    (goto-char (point-min))
    (while (re-search-forward ")\s+)" nil t)
      (replace-match "))"))
    ;; "((" -> "(("
    (goto-char (point-min))
    (while (re-search-forward "(\s+(" nil t)
      (replace-match "(("))
    ;; "word)" -> "word)"
    (goto-char (point-min))
    (while  (re-search-forward (rx (group (+ word)) (+ space) ")" ) nil t)
      (replace-match "\\1)"))
    ;; "(word" -> "(word"
    (goto-char (point-min))
    (while  (re-search-forward (rx "(" (+ space) (group (+ word))) nil t)
      (replace-match "(\\1"))
    ;; "word   (" -> "word ("
    (goto-char (point-min))
    (while (re-search-forward (rx (group (+ word)) (+ space) "(") nil t)
      (replace-match "\\1 ("))
    ))

(provide 'lang-lisp)
