;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; rich-minority
(req 'rich-minority
  (rich-minority-mode 1)
  (cl-pushnew " mesh"  rm-blacklist)
  (cl-pushnew '("Golden" 'face 'font-lock-variable-face)
              rm-text-properties)
  )


;;; init.el ends here
