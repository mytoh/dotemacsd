;;; paketti-vimrc-mode.el -*- lexical-binding: t -*-


(req 'vimrc-mode
     (add-to-list 'auto-mode-alist '(".vim\\(rc\\)?$" . vimrc-mode)))

(provide 'paketti-vimrc-mode)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
