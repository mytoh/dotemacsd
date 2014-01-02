;;; paketti-indent-guide.el -*- lexical-binding: t -*-

(req 'indent-guide

     (add-hook 'scheme-mode-hook #'indent-guide-mode)
     (add-hook 'emacs-lisp-mode-hook #'indent-guide-mode)

     (set-face-foreground 'indent-guide-face "dimgray")

     (setq indent-guide-char ":"))

(provide 'paketti-indent-guide)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
