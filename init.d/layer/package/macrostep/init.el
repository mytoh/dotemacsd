;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; [[https://www.youtube.com/watch?v=odkYXXYOxpo][Debugging basics - YouTube]]
(liby 'macrostep
  
  (command (macrostep-expand) "macrostep")
  (mode "\\*.el\\'" #'emacs-lisp-mode)
  
  (progn
    (after 'macrostep
      (after 'evil
	(evil-define-key 'normal macrostep-keymap "q" 'macrostep-collapse-all)))))

;;; init.el ends here
