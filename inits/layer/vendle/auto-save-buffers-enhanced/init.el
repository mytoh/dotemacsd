;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'auto-save-buffers-enhanced
  (set-option auto-save-buffers-enhanced-interval
              10)
  ;; exclude some files
  (set-option auto-save-buffers-enhanced-exclude-regexps
              '("COMMIT_EDITMSG\\'"))
  ;; If you're using CVS or Subversion or git
  (auto-save-buffers-enhanced-include-only-checkout-path t)
  (auto-save-buffers-enhanced t))

;;; init.el ends here
