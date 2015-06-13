;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(req 'random-splash-image
  (setq random-splash-image-dir
        (locate-user-emacs-file "splash"))
  (when (file-exists-p random-splash-image-dir)
    (random-splash-image-set)))


;;; init.el ends here
