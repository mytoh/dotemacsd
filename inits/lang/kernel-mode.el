
(defvar kernel-font-lock-keywords
  `(("options" . font-lock-builtin-face)
    ("device" . font-lock-variable-name-face)
    ))


(define-derived-mode kernel-mode fundamental-mode
  "Kernel"
  "FreeBSD Kernel"
  (make-local-variable 'font-lock-defaults)
  (setq font-lock-defaults
        `(,kernel-font-lock-keywords
          t t nil nil))
  (add-hook 'kernel-mode-hook 'turn-on-font-lock))

(defun add-kernel-mode (name)
  (add-to-list 'auto-mode-alist `(,(concat "\\" name "\\'") . kernel-mode)))

(dolist (e '("MYKERNEL"
             "GENERIC"))
  (add-kernel-mode e))


(provide 'kernel-mode)
