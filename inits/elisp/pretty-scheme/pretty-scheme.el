(defun pretty-scheme-add-keywords (mode keywords)
  "Add pretty character KEYWORDS to MODE

MODE should be a symbol, the major mode command name, such as
`c-mode' or nil. If nil, pretty keywords are added to the current
buffer. KEYWORDS should be a list where each element has the
form (REGEXP . CHAR). REGEXP will be replaced with CHAR in the
relevant buffer(s)."
  (font-lock-add-keywords
   mode (mapcar (lambda (kw) `(,(concat "(\\("
                                   (car kw)
                                   "\\)[) \n]")
                          (0 (prog1 nil
                               (compose-region (match-beginning 1)
                                               (match-end 1)
                                               ,(cdr kw))))))
                keywords)))

(pretty-scheme-add-keywords 'scheme-mode
                            '(("not" . ?¬)
                              ("and" . ?∧)
                              ("or" . ?∨)
                              ("member" . ?∋)
                              ("loop". ?∞)))

(provide 'pretty-scheme)
