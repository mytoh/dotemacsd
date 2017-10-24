;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-thing
  (command (highlight-thing-mode) "highlight-thing")
  (add-hook 'emacs-lisp-mode-hook #'highlight-thing-mode)
  (after 'highlight-thing
    (set-face-foreground 'highlight-thing
                         (face-foreground 'default))
    (set-face-background 'highlight-thing
                         (color-lighten-name (face-background 'default) 20))))

;;; init.el ends here
