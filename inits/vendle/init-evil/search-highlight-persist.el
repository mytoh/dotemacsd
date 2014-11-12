;;; search-highlight-persist -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(cl-defun muki:init-evil-search-highlight-persist ()
  (req 'evil-search-highlight-persist
    (enable-mode global-evil-search-highlight-persist)))


(provide 'init-evil-search-highlight-persist)

;;; search-highlight-persist.el ends here
