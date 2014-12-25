;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; rich-minority
(req 'rich-minority
  (add-to-list 'rm-text-properties
               '("Golden" 'face 'font-lock-variable-face))
  (rich-minority-mode 1))


;;; init.el ends here
