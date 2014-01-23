
(add-subdirs-to-load-path (concat user-emacs-directory "inits/elisp"))

;; (req 'csh-mode
;;      (setq csh-mode-hook
;;            (lambda ()
;;              (font-lock-mode 1)             ;; font-lock the buffer
;;              (setq csh-indent 4)
;;              (setq csh-tab-always-indent t)
;;              (setq csh-match-and-tell t)
;;              (setq csh-align-to-keyword t)))
;;      (add-to-list 'auto-mode-alist '("\\.tcsh\\'" . csh-mode))
;;      (add-to-list 'auto-mode-alist '("\\.tcshrc\\'" . csh-mode)))

(cl-defun my-csh-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (mapcar (lambda (x)
                                     (symbol-name (cdr x)))
                                   keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords 'shell-script-mode
                            `((,keyword-regexp 1 ',face-name)))))

(req 'ninja-mode)

(req 'eshell-script
     (add-to-list 'auto-mode-alist '("\\.esh\\'" . eshell-script-mode)))

(provide 'init-elisp)
