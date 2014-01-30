;;; paketti-elisp-slime-nav.el -*- lexical-binding: t -*-


(pak 'elisp-slime-nav
     (cl-dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
       (add-hook hook 'turn-on-elisp-slime-nav-mode)))


(provide 'paketti-elisp-slime-nav)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
