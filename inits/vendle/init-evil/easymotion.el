;;; easymotion -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-easymotion ()
  (liby 'evil-easymotion
    (req 'evil-easymotion
      (evilem-define (kbd "SPC w") evil-forward-word-begin)
      (evilem-default-keybindings "SPC"))))

(provide 'init-evil-easymotion)

;;; easymotion.el ends here
