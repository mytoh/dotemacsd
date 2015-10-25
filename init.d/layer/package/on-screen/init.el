;;; init --- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(liby 'on-screen
  (command (on-screen-mode) "on-screen")
  (add-hook 'Info-mode-hook #'on-screen-mode)
  (add-hook 'eww-mode-hook #'on-screen-mode))

;;; init.el ends here
