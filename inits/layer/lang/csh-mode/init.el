;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;; [[http://www.opensource.apple.com/source/tcsh/tcsh-27.1/tcsh/csh-mode.el][csh-mode]]
;; [[http://www.reddit.com/r/emacs/comments/2rem6w/configuring_shellscript_mode_for_tcsh/?utm_source=dlvr.it&utm_medium=twitter][reddit]]
(require 'csh-mode)
(add-to-list 'auto-mode-alist '("\\.csh\\'" . csh-mode))
(add-to-list 'auto-mode-alist '("\\.cshrc\\'" . csh-mode))
(dolist (elt interpreter-mode-alist)
  (when (member (car elt) (list "csh" "tcsh"))
    (setcdr elt 'csh-mode)))

;; (req 'csh-mode
;;      (setq csh-mode-hook
;;            (lambda ()
;;              (font-lock-mode 1)             ;; font-lock the buffer
;;              (setq csh-indent 4)
;;              (setq csh-tab-always-indent t)
;;              (setq csh-match-and-tell t)
;;              (setq csh-align-to-keyword t)))
;;      (add-to-list 'auto-mode-alist '("\\.tcsh\\'" . csh-mode))
;;      (add-to-list 'auto-mode-alist '("\\.tcshrc\\'" . csh-mode)))


;;; init.el ends here
