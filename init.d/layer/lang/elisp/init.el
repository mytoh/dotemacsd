;;; lang-elisp.el -*- lexical-binding: t -*-

(cl-pushnew '("\\.emacs-w3m\\'" .  emacs-lisp-mode)
            auto-mode-alist)

(cl-defun muki:elisp-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (seq-map (pcase-lambda (`(,_ . ,x))
                                        (symbol-name x))
                                    keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords  'emacs-lisp-mode
                             `((,keyword-regexp 1 ',face-name))))
  (seq-each (pcase-lambda (`(,indent . ,keyword))
                (put keyword
                 'scheme-indent-function
                 indent))
            keyword-rules))


(muki:elisp-add-keywords
 'font-lock-builtin-face
 '((1 . setq)
   (1 . if)
   (1 . hook)
   (1 . add-hook)
   (1 . lambda)
   (1 . add-to-list)
   (1 . font-lock-add-keywords)
   (1 . submatch)
   (1 . set-option)
   (1 . enable-option)
   (1 . disable-option)
   (1 . enable-mode)
   (1 . disable-mode)
   (1 . or)))

(muki:elisp-add-keywords
 'font-lock-keyword-face
 '((1 . define-key)
   (1 . provide)
   (1 . require)
   (1 . req)
   (1 . define-emms-simple-player)
   (1 . liby)
   (1 . pak)
   (1 . after)
   (1 . defun-add-hook)))

(font-lock-add-keywords
 'emacs-lisp-mode
 `((,(rx (* space) (syntax open-parenthesis) (* space)
         (or "cl-defun" "cl-defmacro")
         (+ space)
         (submatch (+ (or (syntax word)
                          (syntax symbol)))))
     (1 'font-lock-function-name-face))))

;; [[https://groups.google.com/forum/#!topic/gnu.emacs.help/3EoQjpr5Kfk]]
;; [[http://user.it.uu.se/~embe8573/captain-mr-king.el]]
(font-lock-add-keywords 'emacs-lisp-mode
                        '(("font-lock-builtin-face"              .  font-lock-builtin-face)
                          ("font-lock-comment-delimiter-face"    .  font-lock-comment-delimiter-face)
                          ("font-lock-comment-face"              .  font-lock-comment-face)
                          ("font-lock-constant-face"             .  font-lock-constant-face)
                          ("font-lock-doc-face"                  .  font-lock-doc-face)
                          ("font-lock-function-name-face"        .  font-lock-function-name-face)
                          ("font-lock-keyword-face"              .  font-lock-keyword-face)
                          ("font-lock-negation-char-face"        .  font-lock-negation-char-face)
                          ("font-lock-preprocessor-face"         .  font-lock-preprocessor-face)
                          ("font-lock-reference-face"            .  font-lock-reference-face)
                          ("font-lock-string-face"               .  font-lock-string-face)
                          ("font-lock-syntactic-face-function"   .  font-lock-syntactic-face-function)
                          ("font-lock-type-face"                 .  font-lock-type-face)
                          ("font-lock-variable-name-face"        .  font-lock-variable-name-face)
                          ("font-lock-warning-face"              .  font-lock-warning-face)
                          ("font-lock-regexp-grouping-construct" . 'font-lock-regexp-grouping-construct)
                          ("font-lock-regexp-grouping-backslash" . 'font-lock-regexp-grouping-backslash))
                        t) ; HOW (append to highlighting list, i.e., keep old

(cl-defun muki:elisp-buffer-enable-reindent ()
  (add-hook 'before-save-hook #'muki:lisp-cleanup nil t)
  (add-hook 'before-save-hook #'muki:indent-buffer nil t))

(cl-defun muki:elisp-check-parens ()
  (add-hook 'after-save-hook #'check-parens))

(add-hook 'emacs-lisp-mode-hook #'muki:elisp-buffer-enable-reindent)
(add-hook 'emacs-lisp-mode-hook #'muki:elisp-check-parens)
(add-hook 'emacs-lisp-mode-hook #'checkdoc-minor-mode)
(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook
          (clambda ()
              (setq mode-name " ξ ")))

(defun-add-hook muki:elisp-pretty-symbols (emacs-lisp-mode-hook)
  (push '(">=" . ?≥) prettify-symbols-alist))

(setq lisp-indent-function #'common-lisp-indent-function)

;;;; keymap
(add-key emacs-lisp-mode-map "C-m" #'newline-and-indent)


;;; flycheck
(liby 'flycheck
  (add-hook 'emacs-lisp-mode-hook #'flycheck-mode))
