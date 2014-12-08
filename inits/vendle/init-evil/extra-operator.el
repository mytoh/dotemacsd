;;; extra-operator -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-extra-operator ()
  (req 'evil-extra-operator
    (global-evil-extra-operator-mode 1)))

(provide 'init-evil-extra-operator)

;;; extra-operator.el ends here
