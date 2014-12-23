;;; surround -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-surround ()
  (req 'evil-surround
    (enable-mode global-evil-surround-mode)
    (cl-defun muki:evil-surround-replace-pairs (new old)
      (set-option evil-surround-pairs-alist
                  (cl-subst new old evil-surround-pairs-alist
                            :test 'cl-equalp)))
    (muki:evil-surround-replace-pairs '(?\( . ("(" . ")")) '(?\( . ("( " . " )")))
    (muki:evil-surround-replace-pairs '(?\) . ("(" . ")")) '(?\) . ("( " . " )")))
    (muki:evil-surround-replace-pairs '(?\[ . ("[" . "]")) '(?\[ . ("[ " . " ]")))
    (muki:evil-surround-replace-pairs '(?\] . ("[" . "]")) '(?\] . ("[ " . " ]")))))

;;; surround.el ends here
