;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'company-emoji
  (command (company-emoji-init) "company-emoji")
  (after 'company
    (cl-pushnew 'company-emoji company-backends))

  ;; (add-hook 'org-mode-hook 'company-emoji-init)
  ;; (add-hook 'emacs-lisp-mode-hook 'company-emoji-init)
  )

;;; init.el ends here
