
(cl-defun muki:csh-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (colle:map (pcase-lambda (`(,_ . ,x))
                                     (symbol-name x))
                                   keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords 'shell-script-mode
                            `((,keyword-regexp 1 ',face-name)))))

(req 'ninja-mode)

(req 'eshell-script
  (mode "\\.esh\\'"  #'eshell-script-mode))

(req 'ja-period-newline)

(provide 'init-elisp)
