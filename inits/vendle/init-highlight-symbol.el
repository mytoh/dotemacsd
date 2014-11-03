;;; init-highlight-symbol -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-symbol
  (auto (highlight-symbol-mode
         highlight-symbol-at-point
         highlight-symbol-next
         highlight-symbol-prev
         highlight-symbol-query-replace)
        "highlight-symbol")
  (add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)
  (global-set-key [(control f3)] 'highlight-symbol-at-point)
  (global-set-key [f3] 'highlight-symbol-next)
  (global-set-key [(shift f3)] 'highlight-symbol-prev)
  (global-set-key [(meta f3)] 'highlight-symbol-query-replace))

(provide 'init-highlight-symbol)

;;; init-highlight-symbol.el ends here
