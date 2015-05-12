;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(set-option savehist-additional-variables '())

;;;; save minibuffer history
(set-option savehist-additional-variables
            '(kill-ring
              mark-ring
              global-mark-ring
              search-ring
              regexp-search-ring
              extended-command-history
              eww-history
              ))
;; add helm history
(seq-doseq (symbol (apropos-internal "\\`helm.*-history\\'" 'boundp))
  (cl-pushnew symbol savehist-additional-variables))
(savehist-mode 1)

;;; init.el ends here
