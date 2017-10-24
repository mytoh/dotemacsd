;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:

(unless (display-graphic-p)
  (use-package evil-terminal-cursor-changer
    :config
    (evil-terminal-cursor-changer-activate) ; or (etcc-on)
    ))

;;; INIT.EL ENDS HERE
