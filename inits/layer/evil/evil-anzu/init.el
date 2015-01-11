;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:
(liby 'evil-anzu
  (auto (evil-anzu-search-next evil-anzu-search-previous)
        "evil-anzu")
  (after "evil"
    (define-key evil-motion-state-map "n" 'evil-anzu-search-next)
    (define-key evil-motion-state-map "N" 'evil-anzu-search-previous)))

;;; init.el ends here
