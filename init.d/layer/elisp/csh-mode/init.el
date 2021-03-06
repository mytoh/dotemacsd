;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; [[http://www.opensource.apple.com/source/tcsh/tcsh-27.1/tcsh/csh-mode.el][csh-mode]]
;; [[http://www.reddit.com/r/emacs/comments/2rem6w/configuring_shellscript_mode_for_tcsh/?utm_source=dlvr.it&utm_medium=twitter][reddit]]
(require 'csh-mode)
(mode "\\.csh\\'"  #'csh-mode)
(mode "\\.cshrc\\'"  #'csh-mode)
(mode "\\.tcsh\\'"  #'csh-mode)
(mode "\\.tcshrc\\'"  #'csh-mode)
(dolist (elt interpreter-mode-alist)
  (when (member (car elt) (list "csh" "tcsh"))
    (setcdr elt 'csh-mode)))

;; (req 'csh-mode
;;      (setq csh-mode-hook
;;            (clambda ()
;;              (font-lock-mode 1)             ;; font-lock the buffer
;;              (setq csh-indent 4)
;;              (setq csh-tab-always-indent t)
;;              (setq csh-match-and-tell t)
;;              (setq csh-align-to-keyword t)))


;;; init.el ends here
