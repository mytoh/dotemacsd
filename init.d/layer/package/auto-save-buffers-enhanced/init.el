;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'auto-save-buffers-enhanced
  (defery 'auto-save-buffers-enhanced)
  (after 'auto-save-buffers-enhanced
      (set-option auto-save-buffers-enhanced-interval
       20)
    ;; exclude some files
    (set-option auto-save-buffers-enhanced-exclude-regexps
                '("COMMIT_EDITMSG\\'" "Org Src"
                  "^/ssh:" "^scp:" "/sudo:" "/multi:"))
    ;; If you're using CVS or Subversion or git
    (auto-save-buffers-enhanced-include-only-checkout-path t)
    (setq auto-save-buffers-enhanced-quiet-save-p t)
    (auto-save-buffers-enhanced t)

    ;; evil integration
    ;; disable auto-saving in insert mode
    (cl-defun muki:auto-save-buffers-enhanced-disable ()
      (unless (eq 'eshell-mode major-mode)
        (when auto-save-buffers-enhanced-activity-flag
          (setq auto-save-buffers-enhanced-activity-flag nil)
          (message "auto-save-buffers-enhanced off"))))

    (cl-defun muki:auto-save-buffers-enhanced-enable ()
      (unless (and (eq 'eshell-mode major-mode)
                 (bound-and-true-p defining-kbd-macro)
                 (bound-and-true-p evil-this-macro))
        (unless auto-save-buffers-enhanced-activity-flag
          (setq auto-save-buffers-enhanced-activity-flag t)
          (message "auto-save-buffers-enhanced on"))))

    (add-hook 'evil-insert-state-entry-hook
              #'muki:auto-save-buffers-enhanced-disable)

    (add-hook 'evil-insert-state-exit-hook
              #'muki:auto-save-buffers-enhanced-enable)
    ))

;;; init.el ends here
