;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'highlight-indentation
  (command (highlight-indentation-current-column-mode)
           "highlight-indentation")
  (after 'highlight-indentation
      (set-face-background 'highlight-indentation-face "#e3e3d3")
    (set-face-background 'highlight-indentation-current-column-face "#c3b3b3"))
  (add-hook 'emacs-lisp-mode-hook #'highlight-indentation-current-column-mode))

;;; init.el ends here
