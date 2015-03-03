
(add-subdirs-to-load-path (muki:user-emacs-directory "init.d/elisp"))

(cl-defun muki:csh-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (seq-map (clambda (x)
                                        (symbol-name (cdr x)))
                                    keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords 'shell-script-mode
                            `((,keyword-regexp 1 ',face-name)))))

(req 'ninja-mode)

(req 'eshell-script
  (mode "\\.esh\\'"  #'eshell-script-mode))

(provide 'init-elisp)
