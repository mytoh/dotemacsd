;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'github-browse-file
  (command (github-browse-file-name) "github-browse-file")
  (evil-leader/set-key
      "gfb" #'github-browse-file))

;;; init.el ends here
