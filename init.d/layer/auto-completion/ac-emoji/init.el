;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(req 'ac-emoji
  (add-hook 'git-commit-mode-hook #'ac-emoji-setup))

;;; init.el ends here
