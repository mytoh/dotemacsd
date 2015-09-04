;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;; reload buffer
(global-auto-revert-mode 1)
;; (set-option auto-revert-interval 5)
(req 'vc
  (enable-option auto-revert-check-vc-info))
(disable-option global-auto-revert-non-file-buffers)
(disable-option auto-revert-verbose)
(set-option revert-without-query '(".*\\.scm\\'" ".*\\.el\\'" ".*\\.tcsh\\'"))

;;; init.el ends here
