(defun srfi:add-keywords (face-name keyword-rules)
  (lexical-let* ((keyword-list (mapcar #'(lambda (x)
                                           (symbol-name (cdr x)))
                                       keyword-rules))
                 (keyword-regexp (concat "(\\("
                                         (regexp-opt keyword-list)
                                         "\\)[ \n]")))
    (my-log "adding keywords for face "
            (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
            " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (mapc #'(lambda (x)
            (put (cdr x)
                 'scheme-indent-function
                 (car x)))
        keyword-rules))


(require 'srfi-1)
(require 'srfi-13)

(defun srfi:mode-start ()
  (srfi:add-srfi-1)
  (srfi:add-srfi-13))

(define-minor-mode srfi-mode
  :init-value nil
  :lighter "srfi"
  :group 'languages
  (if srfi-mode
      (srfi:mode-start)))

(add-hook 'scheme-mode-hook 'srfi-mode)

(provide 'srfi)
