;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; leerzeichen-mode
(liby 'leerzeichen
  (auto (leerzeichen-mode) "leerzeichen")
  (after 'leerzeichen
      (set-face-attribute 'leerzeichen nil
       :foreground
       (color-lighten-name (face-attribute 'default :background)
                           20))))

;;; init.el ends here
