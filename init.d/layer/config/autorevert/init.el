;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;; reload buffer
(global-auto-revert-mode 1)
;; (set-option auto-revert-interval 5)
(req 'vc
  (validate-setq auto-revert-check-vc-info t))
(validate-setq global-auto-revert-non-file-buffers nil)
(validate-setq auto-revert-verbose nil)
(validate-setq revert-without-query '(".*\\.scm\\'" ".*\\.el\\'" ".*\\.tcsh\\'"))

;;; init.el ends here
