;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'bm
  (autoload 'bm-show   "bm" "Show bookmark in current buffer." t)
  (autoload 'bm-show-all   "bm" "Show bookmark in all buffers." t)
  (autoload 'bm-toggle   "bm" "Toggle bookmark in current buffer." t)
  (autoload 'bm-next     "bm" "Goto bookmark."                     t)
  (autoload 'bm-previous "bm" "Goto previous bookmark."            t)

  ;; M$ Visual Studio key setup.
  (global-set-key (kbd "<C-f2>") 'bm-toggle)
  (global-set-key (kbd "<f2>")   'bm-next)
  (global-set-key (kbd "<S-f2>") 'bm-previous)

  ;; Click on fringe to toggle bookmarks, and use mouse wheel to move between them.
  (global-set-key (kbd "<left-fringe> <mouse-5>") 'bm-next-mouse)
  (global-set-key (kbd "<left-fringe> <mouse-4>") 'bm-previous-mouse)
  (global-set-key (kbd "<left-fringe> <mouse-1>") 'bm-toggle-mouse))


;;; init.el ends here
