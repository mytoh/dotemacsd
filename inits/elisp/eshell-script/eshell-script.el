;;; eshell-script.el -*- lexical-binding: t -*-


(defvar eshell-script-mode-syntax-table
  (let ((table (copy-syntax-table emacs-lisp-mode-syntax-table)))
    (modify-syntax-entry ?\# "<" table)
    (modify-syntax-entry ?\n ">" table)
    table)
  "Syntax table used in `eshell-script-mode'.")

(define-derived-mode eshell-script-mode emacs-lisp-mode "Esh"
                     "Major mode for editing eshell scripts."
                     (setq-local comment-start "# ")
                     (setq-local comment-end   "")
                     (setq-local comment-start-skip "#[^']+*"))

(provide 'eshell-script)


;; Local Variables:
;; byte-compile-warnings: (not cl-functions obsolete)
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
