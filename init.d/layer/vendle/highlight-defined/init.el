;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; highlight-defined
(liby 'highlight-defined
  (command (highlight-defined-mode) "highlight-defined")

  (after 'highlight-defined
   ;;;; Face
      (set-face-attribute 'highlight-defined-builtin-function-name-face nil
       :inherit 'font-lock-builtin-face)
    (set-face-attribute 'highlight-defined-special-form-name-face nil
                        :inherit 'font-lock-keyword-face)
    (set-face-attribute 'highlight-defined-macro-name-face nil
                        :inherit 'font-lock-function-name-face
                        :slant 'italic))

  (add-hook 'emacs-lisp-mode-hook #'highlight-defined-mode))


;;; init.el ends here
