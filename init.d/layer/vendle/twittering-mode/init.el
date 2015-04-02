;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

;;;;; twittering-mode
(liby 'twittering-mode
  (command (twit) "twittering-mode")
  (setq twittering-use-master-password t)
  (setq twittering-allow-insecure-server-cert t))

;;; init.el ends here
