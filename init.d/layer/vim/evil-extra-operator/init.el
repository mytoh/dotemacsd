;;; extra-operator -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-extra-operator ()
  (liby 'evil-extra-operator
    ;; change default key bindings (if you want) HERE
    (setq evil-extra-operator-eval-key (kbd "ge"))
    (req 'evil-extra-operator
      (global-evil-extra-operator-mode 1))))

(muki:init-evil-extra-operator)

;;; extra-operator.el ends here
