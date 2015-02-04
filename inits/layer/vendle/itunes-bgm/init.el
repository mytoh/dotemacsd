;;; init -*- lexical-binding: t; coding: utf-8; -*-

;;; Code:

(liby 'itunes-bgm
  (auto (itunes-bgm itunes-bgm-kill) "itunes-bgm")
  (setq itunes-bgm-player 'ffplay))

;;; init.el ends here
