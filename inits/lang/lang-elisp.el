;;; lang-elisp.el -*- lexical-binding: t -*-

(add-to-list 'auto-mode-alist '("\\.emacs-w3m\\'" .  emacs-lisp-mode))

(cl-defun muki:elisp-add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (cl-mapcar (lambda (x)
                                        (symbol-name (cdr x)))
                                      keyword-rules))
             (keyword-regexp (concat "(\\("
                                     (regexp-opt keyword-list)
                                     "\\)[ \n]")))
    (font-lock-add-keywords  'emacs-lisp-mode
                             `((,keyword-regexp 1 ',face-name))))
  (cl-mapc (lambda (x)
             (put (cdr x)
                  'scheme-indent-function
                  (car x)))
           keyword-rules))


(muki:elisp-add-keywords
 'font-lock-builtin-face
 '((1 . setq)
   (1 . add-hook)
   (1 . if)
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
   (1 . pak)))

(font-lock-add-keywords
 'emacs-lisp-mode
 `((,(rx (* space) (syntax open-parenthesis) (* space)
         (or "cl-defun" "cl-defmacro")
         (+ space)
         (submatch (+ (or (syntax word)
                          (syntax symbol)))))
    (1 'font-lock-function-name-face))))



(cl-defun muki:elisp-buffer-enable-reindent ()
  (add-hook 'before-save-hook 'muki:lisp-cleanup nil t)
  (add-hook 'before-save-hook 'muki:indent-buffer nil t))

(add-hook 'emacs-lisp-mode-hook 'muki:elisp-buffer-enable-reindent)
(add-hook 'emacs-lisp-mode-hook 'checkdoc-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

;;;; keymap
(define-key emacs-lisp-mode-map (kbd "C-m") 'newline-and-indent)

(provide 'lang-elisp)
