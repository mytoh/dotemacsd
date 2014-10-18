;;; muki-mode -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defmacro enable-mode (mode-fn)
  (declare (debug t))
  `(cl-locally
       (,mode-fn 1)
     (muki:log "enable mode " ,(propertize (symbol-name mode-fn)
                                           'face 'font-lock-variable-name-face))))

(cl-defmacro disable-mode (mode-fn)
  (declare (debug t))
  `(cl-locally
       (,mode-fn -1)
     (muki:log "disable mode " ,(propertize (symbol-name mode-fn)
                                            'face 'font-lock-variable-name-face))))

(provide 'muki-mode)
;;; muki-mode.el ends here
