
(req 'csh-mode
     (setq csh-mode-hook
           #'(lambda ()
               (font-lock-mode 1)             ;; font-lock the buffer
               (setq csh-indent 4)
               (setq csh-tab-always-indent t)
               (setq csh-match-and-tell t)
               (setq csh-align-to-keyword t)))
     (add-to-list 'auto-mode-alist '("\\.tcsh\\'" . csh-mode)))

(cl-defun my-csh-add-keywords (face-name keyword-rules)
  (let* ((keyword-list (mapcar #'(lambda (x)
                                   (symbol-name (cdr x)))
                               keyword-rules))
         (keyword-regexp (concat "(\\("
                                 (regexp-opt keyword-list)
                                 "\\)[ \n]")))
    (font-lock-add-keywords 'shell-script-mode
                            `((,keyword-regexp 1 ',face-name)))))

(provide 'lang-csh)
