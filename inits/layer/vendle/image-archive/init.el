;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'image-archive
  (autoload 'image-archive "image-archive" nil t)
  (autoload 'image-archive-marked-files "image-archive" nil t)
  (autoload 'image-archive-auto-thumbnails "image-archive" nil t)
  (add-hook 'archive-mode-hook 'image-archive-auto-thumbnails))


;;; init.el ends here
