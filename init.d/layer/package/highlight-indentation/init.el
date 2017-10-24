;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-indentation
  (command (highlight-indentation-current-column-mode)
           "highlight-indentation")
  (after 'highlight-indentation
    (set-face-background 'highlight-indentation-face
                         (color-lighten-name (face-background 'default)
                                             25))
    (set-face-background 'highlight-indentation-current-column-face
                         (color-lighten-name (face-background 'default)
                                             25)))
  (add-hook 'emacs-lisp-mode-hook #'highlight-indentation-current-column-mode))

;;; init.el ends here
