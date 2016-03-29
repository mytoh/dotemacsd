;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

;;;; read symlinked file
(enable-option vc-follow-symlinks)
(after 'vc
    (remove-hook 'find-file-hooks 'vc-find-file-hook))

;;; init.el ends here
