;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'right-click-context
  ;; Use emoji
  (setq right-click-context-mode-lighter "🐭")

  (after 'seijiseikana
      (setq right-click-context-global-menu-tree
       (append right-click-context-global-menu-tree
               (list
                '("Seijiseikana"
                  ("To Seiji"
                   :call
                   (seijiseikana-seiji-region beg end))
                  ("To Ryakuji"
                   :call
                   (seijiseikana-ryakuji-region  beg end)))))))

  (right-click-context-mode 1))

;;; init.el ends here
