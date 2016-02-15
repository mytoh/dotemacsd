;;; init.el ---                                      -*- lexical-binding: t; -*-

(liby 'ac-shell
  (command (ac-shell-setup) "ac-shell")
  (add-hook 'sh-mode-hook #'ac-shell-setup))
