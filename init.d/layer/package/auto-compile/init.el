;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;; (req 'auto-compile
;;   ;; (auto-compile-on-load-mode)
;;   (auto-compile-on-save-mode)
;;   )

(use-package auto-compile
  :defer 5
  :config
  (progn
    (validate-setq auto-compile-display-buffer nil
                   ;; lets spaceline manage the mode-line
                   auto-compile-use-mode-line nil
                   auto-compile-mode-line-counter t)
    (auto-compile-on-save-mode))
  ;; (progn
  ;;   (spacemacs/set-leader-keys-for-major-mode 'emacs-lisp-mode
  ;;                                             "cl" 'auto-compile-display-log))
  )


;;; init.el ends here
