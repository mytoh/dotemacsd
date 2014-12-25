;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; rich-minority
(req 'rich-minority
  (rich-minority-mode 1)
  (add-to-list 'rm-blacklist
               " mesh" )
  (add-to-list 'rm-text-properties
               '("Golden" 'face 'font-lock-variable-face))
  )


;;; init.el ends here
