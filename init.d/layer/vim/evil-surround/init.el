;;; surround -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-surround ()
  (req 'evil-surround
    (hook 'emacs-lisp-mode-hook #'evil-surround-mode)
    (hook 'org-mode-hook #'evil-surround-mode)
    (cl-defun muki:evil-surround-replace-pairs (new old)
      (set-option evil-surround-pairs-alist
                  (cl-subst new old evil-surround-pairs-alist
                            :test 'cl-equalp)))
    (cl-defun muki:evil-surround-replace-all-pairs ()
      (muki:evil-surround-replace-pairs '(?\( . ("(" . ")")) '(?\( . ("( " . " )")))
      (muki:evil-surround-replace-pairs '(?\) . ("(" . ")")) '(?\) . ("( " . " )")))
      (muki:evil-surround-replace-pairs '(?\[ . ("[" . "]")) '(?\[ . ("[ " . " ]")))
      (muki:evil-surround-replace-pairs '(?\] . ("[" . "]")) '(?\] . ("[ " . " ]"))))
    (hook 'emacs-lisp-mode-hook #'muki:evil-surround-replace-all-pairs)
    (hook 'org-mode-hook #'muki:evil-surround-replace-all-pairs)
    ))

(muki:init-evil-surround)

;;; surround.el ends here
