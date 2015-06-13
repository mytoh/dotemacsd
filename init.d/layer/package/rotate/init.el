;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; rotate
(liby 'rotate
  (command (rotate-layout rotate-window) "rotate")
  (add-global-key "C-c C-SPC" #'rotate-layout
                  "C-c C-c C-SPC" #'rotate-window))


;;; init.el ends here
