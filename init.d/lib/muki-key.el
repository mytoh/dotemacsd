;;; muki-key -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;; keymap utils

(cl-defmacro add-global-key (&rest bindings)
  (declare (debug t))
  `(add-key global-map ,@bindings))


(cl-defmacro add-key (keymap &rest body)
  (declare (debug t)
           (indent 1))
  (and body
       (cl-letf ((key (car body))
                 (def (cadr body)))
         `(cl-locally
              (cl-etypecase ,key
                (string (define-key ,keymap (kbd ,key) ,def))
                (t (define-key ,keymap ,key ,def)))
            (add-key ,keymap ,@(cddr body))))))

(provide 'muki-key)

;;; muki-key.el ends here
