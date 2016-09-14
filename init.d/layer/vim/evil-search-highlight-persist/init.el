;;; search-highlight-persist -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-search-highlight-persist ()
  (req 'highlight
    (req 'evil-search-highlight-persist
      (global-evil-search-highlight-persist t)
      ;; To only display string whose length is greater than or equal to 3
      (setq evil-search-highlight-string-min-len 3))))

(muki:init-evil-search-highlight-persist)

;;; search-highlight-persist.el ends here
