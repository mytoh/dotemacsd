 ;;; -*- coding: utf-8  -*-

(add-to-list 'auto-mode-alist '("\\.emacs-w3m\\'" .  emacs-lisp-mode))

(defun my-elisp-add-keywords (face-name keyword-rules)
  (lexical-let* ((keyword-list (mapcar #'(lambda (x)
                                           (symbol-name (cdr x)))
                                       keyword-rules))
                 (keyword-regexp (concat "(\\("
                                         (regexp-opt keyword-list)
                                         "\\)[ \n]")))
    (font-lock-add-keywords  'emacs-lisp-mode
                             `((,keyword-regexp 1 ',face-name))))
  (mapc #'(lambda (x)
            (put (cdr x)
                 'scheme-indent-function
                 (car x)))
        keyword-rules))


(my-elisp-add-keywords
 'font-lock-builtin-face
 '((1 . setq)
   (1 . add-hook)
   (1 . if)
   (1 . lambda)
   (1 . add-to-list)
   (1 . dolist)
   (1 . cl-mapcar)
   (1 . cl-reduce)
   (1 . cl-remove-if)
   (1 . cl-cadddr)
   ))

(my-elisp-add-keywords
 'font-lock-keyword-face
 '((1 . define-key)
   (1 . provide)
   (1 . require)
   (1 . req)
   (2 . cl-defmacro)
   (1 . cl-declare)
   (1 . cl-labels)
   (1 . cl-defun)
   ))

(font-lock-add-keywords
 'emacs-lisp-mode
 `(("'\\([0-9a-zA-Z-]*\\)" (1 'font-lock-variable-name-face))
   (,(rx (* space) (syntax open-parenthesis) (* space) "cl-defmacro"
         (one-or-more space)
         (submatch (+ (syntax word))))
    (1 'font-lock-function-name-face))))



(defun my-elisp-buffer-enable-reindent ()
  (add-hook 'before-save-hook 'minun:lisp-cleanup nil t)
  (add-hook 'before-save-hook 'my-indent-buffer nil t))

(add-hook 'emacs-lisp-mode-hook 'my-elisp-buffer-enable-reindent)
(add-hook 'emacs-lisp-mode-hook 'checkdoc-minor-mode)

(provide 'lang-elisp)
