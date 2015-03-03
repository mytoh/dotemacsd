;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; [[http://rubikitch.com/2014/12/31/smart-newline/]]
(req 'smart-newline
  ;; (add-global-key "RET" #'smart-newline)
  (add-hook 'ruby-mode-hook #'smart-newline-mode)
  (add-hook 'emacs-lisp-mode-hook #'smart-newline-mode)
  (add-hook 'org-mode-hook #'smart-newline-mode)

  (defadvice smart-newline (around C-u activate)
    "C-uを押したら元のC-mの挙動をするようにした。
org-modeなどで活用。"
    (if (not current-prefix-arg)
        ad-do-it
      (let (current-prefix-arg)
        (let (smart-newline-mode)
          (call-interactively (key-binding (kbd "C-m"))))))))


;;; init.el ends here
