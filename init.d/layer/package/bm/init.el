;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'bm
  (autoload 'bm-show   "bm" "Show bookmark in current buffer." t)
  (autoload 'bm-show-all   "bm" "Show bookmark in all buffers." t)
  (autoload 'bm-toggle   "bm" "Toggle bookmark in current buffer." t)
  (autoload 'bm-next     "bm" "Goto bookmark."                     t)
  (autoload 'bm-previous "bm" "Goto previous bookmark."            t))


;;; init.el ends here
