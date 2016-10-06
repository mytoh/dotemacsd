;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'ranger
  (command (ranger deer deer-dual-pane) "ranger")
  (after 'ranger
    (enable-option ranger-override-dired)
    (enable-option ranger-preview-file)))

;;; init.el ends here
