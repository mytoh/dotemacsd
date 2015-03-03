;;; muki-option -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defmacro set-option (&rest body)
  (declare (debug t))
  (and body
       (cl-letf ((option (car body))
                 (value (cadr body)))
         `(cl-locally
              (muki:log "set " ,(propertize (symbol-name option)
                                            'face 'font-lock-variable-name-face))
            (cl-psetq ,option ,value)
            (set-option ,@(cddr body))))))

(cl-defmacro enable-option (&rest body)
  (declare (debug t))
  (and body
       (cl-letf ((option (car body)))
         `(cl-locally
              (muki:log "enable " ,(propertize (symbol-name option)
                                               'face 'font-lock-variable-name-face))
            (cl-psetq ,option t)
            (enable-option ,@(cdr body))))))

(cl-defmacro disable-option (&rest body)
  (declare (debug t))
  (and body
       (cl-letf ((option (car body)))
         `(cl-locally
              (muki:log "disable " ,(propertize (symbol-name option)
                                                'face 'font-lock-variable-name-face))
            (cl-psetq ,option nil)
            (disable-option ,@(cdr body))))))

(defvar muki:*options-list* '())

(cl-defmacro set-option-update (option value)
  `(cl-letf ((prev-value ,option))
     (cl-pushnew (list ',option prev-value ,value)
                 muki:*options-list*)
     (cl-psetq ,option ,value)))

(provide 'muki-option)
;;; muki-option.el ends here
