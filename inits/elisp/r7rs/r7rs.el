

(defun r7rs:add-keywords (face-name keyword-rules)
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

(font-lock-add-keywords 'scheme-mode
                        `(
                          ;; (export some-function)
                          (,(rx (and
                                 (syntax open-parenthesis)"export" (one-or-more (in " \t\n"))
                                 (submatch
                                  (one-or-more (or (syntax word)
                                                   (syntax symbol)
                                                   (in " \t\n"))))))
                           1  'font-lock-variable-name-face)

                          ;; ,@
                          (,(rx ",@")
                           0 'r7rs:font-lock-scheme-string-face)
                          ;; #`
                          (,(rx (submatch "#`\"")
                                (submatch (one-or-more any))
                                (submatch  "\""))
                           (1 'r7rs:font-lock-scheme-regexp-face)
                           (2 'r7rs:font-lock-scheme-regexp-face)
                           (3 'r7rs:font-lock-scheme-regexp-face)
                           )
                          ;; #t #f
                          (,(rx (or  "#t" "#f"))
                           0 'r7rs:font-lock-scheme-boolean-face)

                          ;; *some-variable*
                          (,(rx "*"
                                (submatch
                                 (one-or-more
                                  any))
                                "*")
                           0 'r7rs:font-lock-scheme-constant-face)

                          ;; keyword symbol
                          (,(rx (one-or-more (not (syntax word)))
                                ":" (one-or-more (or (syntax word)
                                                     (syntax symbol))))
                           0 'r7rs:font-lock-scheme-constant-face)

                          ;; symbol
                          (,(rx (one-or-more (not (syntax word)))
                                "'" (one-or-more (or (syntax word)
                                                     (syntax symbol))))
                           0 'r7rs:font-lock-scheme-string-face)
                          ))


(require 'r7rs-fundamental)
(require 'r7rs-base)
(require 'r7rs-char)
(require 'r7rs-cxr)
(require 'r7rs-file)
(require 'r7rs-face)



(defun r7rs:mode-start ()
  (r7rs:add-faces)
  (r7rs:add-fundamental)
  (r7rs:add-base)
  (r7rs:add-char)
  (r7rs:add-cxr)
  (r7rs:add-file))

(define-minor-mode r7rs-mode
  :init-value nil
  :lighter "r7rs"
  :group 'languages
  (if r7rs-mode
      (r7rs:mode-start)))

(add-hook 'scheme-mode-hook 'r7rs-mode)

(provide 'r7rs)
