;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(require 'muki-mode)
(require 'muki-lib)

(liby 'aa-edit-mode
  (command (aa-edit-mode) "aa-edit-mode")
  (mode "\\.mlt\\'"  #'aa-edit-mode))

;;; init.el ends here
