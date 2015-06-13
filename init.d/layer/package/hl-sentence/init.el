;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'hl-sentence
  (command (hl-sentence-mode) "hl-sentence")
  (add-hook 'org-mode-hook 'hl-sentence-mode)
  (after 'hl-sentence
      (set-face-attribute 'hl-sentence-face nil
       :foreground
       (color-lighten-name (face-foreground 'default)
                           40))))

;;; init.el ends here
