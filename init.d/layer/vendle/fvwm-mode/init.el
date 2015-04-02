;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'fvwm-mode
  (command (fvwm-mode) "fvwm-mode")
  (dolist (pattern '("/home/[^/]*/\\.fvwm/config\\'"
                     "/home/[^/]*\\(/\\|\\/.fvwm/\\).fvwm2rc\\'" "\\.fvwm\\'"
                     "/ConfigFvwm" "/FvwmScript-" "/FvwmForm-" "/FvwmTabs-"))
    (add-to-list 'auto-mode-alist (cons pattern 'fvwm-mode))))

;;; init.el ends here
